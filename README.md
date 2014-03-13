## TiStrokeView

Stroke line on your Titanium app.

What there is ti.canvas module?
ti.canvas module is can not be adjusted after drawing :(

### Usage

	var TiStroke = require('be.k0suke.tistroke'),
		window = Ti.UI.createWindow(),
		strokeView = TiStroke.createView({
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
	window.add(strokeView);
	window.open();

Yes, expansion and contraction.

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

### License

The MIT License (MIT) Copyright (c) 2014 Kosuke Isobe, Socketbase Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.