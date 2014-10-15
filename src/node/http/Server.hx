package node.http;

import node.events.EventEmitter;
import node.net.Socket;

extern class Server extends EventEmitter{
	public var timeout: Int;
    public var maxHeadersCount: Int;
	@:overload(function(path:String,?callback:Void->Void):Void {})
    function listen(port:Int,?host:String,?backlog:Int,?callback:Void->Void):Void;
    function close(?callback:Void->Void):Void;
    function setTimeout(msecs: Int, callback:Void->Void):Void;
}

@:build(node.macros.OnEventBuilder.build(Server,
	( request : ClientRequest -> ServerResponse -> Void ),
	( connection : Socket -> Void ),
	( close : Void -> Void),
	( checkContinue : ClientRequest -> ServerResponse -> Void ),
	( connect : ClientRequest -> Socket -> Dynamic -> Void ),
	( upgrade : ClientRequest -> Socket -> Dynamic -> Void ),
	( clientError : Dynamic -> Socket -> Void)
))
class ServerEvent {}