package ;

import buddy.Buddy;
import buddy.BuddySuite;
using buddy.Should;

import node.URL;
import node.Node;
using Std;

class URLTest extends BuddySuite implements Buddy{
	public function new(){
		describe("url test",{
			it("url parse test",{
				var result = URL.parse("http://user:pass@host.com:8080/p/a/t/h?query=string#hash");
				result.string().should.be(
					({
						protocol : "http:", 
						slashes : "true", 
						auth : "user:pass", 
						host : "host.com:8080", 
						port : "8080", 
						hostname : "host.com", 
						hash : "#hash", 
						search : "?query=string", 
						query : "query=string", 
						pathname : "/p/a/t/h", 
						path : "/p/a/t/h?query=string", 
						href : "http://user:pass@host.com:8080/p/a/t/h?query=string#hash"
					}).string());
			});
		});
	}
}