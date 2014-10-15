package node.http;

import node.events.EventEmitter;
import node.Buffer;

extern class ClientRequest extends EventEmitter implements Writable{
	public function write(chunk:String, ?encoding:String);
	public function end(?data:String,?encoding:String);
	public function abort() : Void;
	public function setTimeout(timeout:String,?callback:Dynamic) : Void;
	public function setNoDlay(?noDelay : Bool) : Void;
	public function setSocketKeepAlive(?enable:Bool, initialDelay:Bool) : Void;
}