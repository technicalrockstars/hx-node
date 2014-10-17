hx-node
=======

Extern NodeJs library on Haxe

## Installation

Using Haxelib install:

```
haxelib isntall hx-node
```

or using local install script

```
git clone https://github.com/technicalrockstars/hx-node
./loca.sh
```

## Code Examples

```NodeServerExample.hx
package ;

import node.Node;
import node.http.Server;
import node.http.Http;
import node.URL;

using node.http.Server.ServerEvent;
using node.http.ClientRequest.ClientRequestEvent;
using node.http.ServerResponse.ServerResponseEvent;

class NodeServerExample{
	public static function main(){
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
				trace(Std.string(data));
				// server close
				server.close();
			});
		});
		request.end();
	}
}
```
