package node.http;

import node.events.EventEmitter;

extern class ServerResponse extends EventEmitter implements Writable{
	public var statusCode : Int;
	public var headerSent(default,null) : Int;
	public var sendDate : Dynamic;
	public function writeContinue() : Void;
	public function writeHead(statusCode:Int,?reasonPhrase:String,?headers:String) : Void;
	public function setTimeout(msecs:Int,callback:Dynamic);
	@:overload(function setHeader(name:String,value:Array<String>) : Void{});
	public function setHeader(name:String,value:String) : Void;
	public function getHeader(name:String) : String;
	public function removeHeader(name:String) : String;
	public function write(chunk:String,?encoding:Bool) : Bool;
	public function addTrailers(headers : Dynamic) : Void;
	public function end(?data:String, ?encoding:String) : Void;
}