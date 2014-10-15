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



extern class URL{
	public function parse(url:String,?parseQuery : String,?slashedDenoteHodt : String) : UrlObj;
	public function format(url:UrlObj) :String;
	public function resolove(from:String,to:String) : String;
}