package node.stream;

import node.Buffer;

extern interface Writable{
	function write(chunk : Dynamic,?encoding : String) : Bool;
	function end(?chunk : Dynamic, ?encoding : String) : Void;
}