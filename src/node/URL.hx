package node;

typedef UrlObj = {
	protocol : String, 
	slashes : Bool, 
	auth : String, 
	host : String, 
	port : String, 
	hostname : String, 
	hash : String, 
	search : String, 
	query : Dynamic, 
	pathname : String, 
	path : String, 
	href : String
};


@:native("URL")
extern class URL{
	public static function parse(url:String,?parseQuery : String,?slashedDenoteHodt : String) : UrlObj;
	public static function format(url:UrlObj) :String;
	public static function resolove(from:String,to:String) : String;
	public static function __init__() : Void{
		untyped __js__(
			"var URL = require('url');"
		);
	}
}