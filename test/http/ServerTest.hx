package http;

import buddy.BuddySuite;
import buddy.Buddy;
using buddy.Should;

import node.Node;
import node.http.Server;
import node.http.Http;
import node.URL;
using node.http.Server.ServerEvent;
using node.http.ClientRequest.ClientRequestEvent;
using node.http.ServerResponse.ServerResponseEvent;

class ServerTest extends BuddySuite implements Buddy{
	public function new(){
		describe("Server Test",{
			it("Server ",function(done){
				var sendText = 'Hello World!\n';

				// creating Server
				var server = Http.createServer();
				server.onRequest(function(req,res){
					res.writeHead(200,{'Content-Type': 'text/plain'});
					res.end(sendText);
				});
				server.listen(3000);

				// access server
				var request = Http.request(URL.parse("http://localhost:3000"));
				request.onResponse(function(res){
					res.onData(function(data){
						(data : String).should.be(sendText);
						done();
					});
				});
				request.end();
			});
		});
	}
}