package node.http;

import node.events.EventEmitter;
import node.Buffer;
import node.stream.Writable;
import node.net.Socket;

extern class ClientRequest extends EventEmitter implements Writable{
	public function write(chunk:String, ?encoding:String) : Bool;
	public function end(?data:String,?encoding:String) : Void;
	public function abort() : Void;
	public function setTimeout(timeout:String,?callback:Dynamic) : Void;
	public function setNoDlay(?noDelay : Bool) : Void;
	public function setSocketKeepAlive(?enable:Bool, initialDelay:Bool) : Void;
}

@:build(node.macros.OnEventBuilder.build(ClientRequest,
( response : ServerResponse -> Void ),
( socket : Socket -> Void ),
( connect : ServerResponse -> Socket -> Void),
( upgrade : ServerResponse -> Dynamic -> Dynamic -> Void),
( continue : Void -> Void )
))
class ClientRequestEvent{}