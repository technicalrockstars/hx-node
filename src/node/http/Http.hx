package node.http;

extern class Http{
	public var STATUS_CODES : Dynamic;
	public function createServer(?listener:ClientRequest -> ServerResponse -> Void): Server;
	public function createClient(port : Int, host : String) : ClientRequest;
	public function request(options : Dynamic, ?callback : ServerResponse -> Void ) : ClientRequest;
}