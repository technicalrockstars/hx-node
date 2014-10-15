package ;

import buddy.BuddySuite;
import buddy.Buddy;
using buddy.Should;

import node.events.EventEmitter;

class EventEmitterTest extends BuddySuite implements Buddy{
	public function new(){
		describe("EventEmitter",{
			it("EventEmitter",function(done){
				var eventEmitter : EventEmitter = new EventEmitter();
				eventEmitter.on("add_event",function(x,y){
					(x + y).should.be(7);
					done();
					});
				eventEmitter.emit("add_event",3,4);
			});
		});
	}
}