package ;

import buddy.BuddySuite;
import buddy.Buddy;
using buddy.Should;

import node.http.Server;

class ServerTest extends BuddySuite implements Buddy{
	public function new(){
		describe("Server Test",{
			it("Server sample",function(done){
				true.should.be(false);
				done();
			});
		});
	}
}