package node.stream;

import node.Buffer;

extern interface Writable{
	@:overload(function(chunk:String,?encoding:String,?callback:Dynamic) : Bool{})
	public function write(chunk:Buffer,?encoding : String, ?callback : Dynamic) : Bool;
	@:overload(function(chunk:String,?encoding:String,?callback:Dynamic) : Void{})
	public function end(?chunk:Buffer,?encoding ; String, callback:Dynamic) : Void;
}