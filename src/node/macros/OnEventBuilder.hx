package node.macros;

import haxe.macro.Context;
import haxe.macro.Expr;

using Lambda;

class OnEventBuilder{
	macro static function build(cls,es : Array<Expr>) : Array<Field>{
		var fields = Context.getBuildFields();
		var clsName = switch (cls.expr) {
			case EConst(CIdent(s)): s;
			case _ : throw throw "OnEventBuilder.build take '<className>,( <name> : <Type> )'";
		}

		var onEventFields = es.map(function(e){
			return switch (e.expr) {
				case EParenthesis({expr:ECheckType({expr:EConst(CIdent(name)),pos:_},type),pos:_}): 
					create(clsName,name,type);
				case EParenthesis({expr:ECheckType({expr:EContinue,pos:_},type),pos:_}): 
					create(clsName,"continue",type);
				case _ :  throw "OnEventBuilder.build take '<className>,( <name> : <Type> )'";
			}
		});
		fields = fields.concat(onEventFields);
		return fields;
	}

	#if macro
	private static function create(clsName,name : String,type) : Field{
		var clsType = TPath({ name : clsName, pack : [], params : [] });
		var f = switch(macro function(obj : $clsType, callback : $type)
			return obj.on($v{name},callback)){
			case { expr : EFunction(_,f), pos : _ } : f;
			case _ : throw "not function";
		}
		var onName = "on" + name.charAt(0).toUpperCase() + name.substring(1);
		return {
			name :  onName,
			doc : null,
			meta : [],
			access : [AStatic,APublic],
			kind : FFun(f),
			pos: Context.currentPos()
		};
	}
	#end

}