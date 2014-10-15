package http;

import buddy.BuddySuite;
import buddy.Buddy;
using buddy.Should;

import node.Node;
import node.http.Server;
import node.http.Http;
using node.http.Server.ServerEvent;

class ServerTest extends BuddySuite implements Buddy{
	public function new(){
		describe("Server Test",{
			it("Server ",function(done){
				done();
			});
		});
	}
}