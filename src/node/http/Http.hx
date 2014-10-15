package node.http;

extern class Http{
	public static var STATUS_CODES : Dynamic;
	public static function createServer(listener:ClientRequest -> ServerResponse -> Void): Http;
	public static function createClient(port : Int, host : String) : ClientRequest;
}