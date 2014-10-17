package node;

import haxe.macro.Context;

class Node{
	public static var require : String -> Dynamic = untyped __js__('require');
}