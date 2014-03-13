// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.


// open a single window
var win = Ti.UI.createWindow({
	backgroundColor:'white'
});
win.open();

// TODO: write your module tests here
var TiStroke = require('be.k0suke.tistroke');
Ti.API.info("module is => " + TiStroke);

var strokeView = TiStroke.createView({
	width: Ti.UI.FILL,
	height: Ti.UI.FILL,
	lineWidth: 6,
	lineColor: '#f00',
	lineAlpha: 1,
	lineFrom: {
		x: 10,
		y: 10
	},
	lineTo: {
		x: 100,
		y: 100
	}
});
win.add(strokeView);

var counter = 0,
	reverse = 1;
setInterval(function(){
	if (counter > 10) {
		counter = 0;
		reverse = reverse === 1 ? -1 : 1;
	}
	
	var to = strokeView.getLineTo();
	
	strokeView.setLineTo({
		x: to.x + 10 * reverse,
		y: to.y + 10 * reverse
	});
	
	counter++;
}, 100);