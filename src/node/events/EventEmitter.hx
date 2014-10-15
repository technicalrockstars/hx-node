package node.events;


typedef Listener = Dynamic;

extern class EventEmitter{
	public function new();
	public function addEventListener(event:String,listener:Listener) : Void;
	public function on(event:String,listener:Listener) : Void; 
	public function once(event:String,listener:Listener) : Void;
	public function removeListener(event:String,listener:Listener) : Void;
	public function removeAllListeners(event:Array<String>) : Void;
	public function setMaxListeners(n:Int) : Void;
	public function listeners(event : String) : Array<Listener>;
	public function emit(event :String , ?arg1 : Dynamic, ?arg2 : Dynamic, ?arg3 : Dynamic, ?arg4 : Dynamic, ?arg5 : Dynamic, ?arg6 : Dynamic) : Void;
	public static function __init__() : Void{
		untyped __js__("
			var native = require('events'); 
			node.events = {}; 
			node.events.EventEmitter = native.EventEmitter;
		");
	}
}