package http;

import buddy.BuddySuite;
import buddy.Buddy;
using buddy.Should;

import node.Node;
import node.http.Http;
import node.http.ClientRequest;
import node.URL;
using node.http.ClientRequest.ClientRequestEvent;

class ClientRequestTest extends BuddySuite implements Buddy{
	public function new(){
		describe("ClientRequest",{
			it("request use protocol http to google.com",function(done){
				var http : Http = Node.require("http");
				var url : URL = Node.require("url");
				var request = http.request(url.parse("http://www.google.com"));
				request.onResponse(function(res){
					res.statusCode.should.be(302);
					done();
				});
				request.end();
			});

		});
	}
}

