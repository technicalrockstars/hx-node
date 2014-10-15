package node.http;

import node.events.EventEmitter;

extern class Server extends EventEmitter{
	public var timeout: Int;
    public var maxHeadersCount: Int;
	@:overload(function(path:String,?callback:Void->Void):Void {})
    function listen(port:Int,?host:String,?backlog:Int,?callback:Void->Void):Void;
    function close(?callback:Void->Void):Void;
    function setTimeout(msecs: Int, callback:Void->Void):Void;
}