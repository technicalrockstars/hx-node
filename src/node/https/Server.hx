package node.https;

extern class Server{
	@:overload(function(port:String,?callback:Dynamic) : Void {})
	@:overload(function(handle:Dynamic,?callback:Dynamic) : Void {})
	public function listen(port : String,?host:String,?backlog:String,callback:Dynamic) : Void;
	public function close(?callback:Dynamic) : Void;
}