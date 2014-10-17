package node.http;

extern class Http{
	public var STATUS_CODES : Dynamic;
	public static function createServer(?listener:ClientRequest -> ServerResponse -> Void): Server;
	public static function createClient(port : Int, host : String) : ClientRequest;
	public static function request(options : Dynamic, ?callback : ServerResponse -> Void ) : ClientRequest;
	public static function __init__() : Void {
		untyped __js__(
			"if(!('http' in node)){
				node.http = {};
			}
			node.http.Http = require('http');"
		);
	}
}