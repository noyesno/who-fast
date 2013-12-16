function mandelbrot(x, y) {
	var cr = y - 0.5;
	var ci = x;
	var zi = 0.0;
	var zr = 0.0;
	var i = 0;
	var BAILOUT = 16;
	var MAX_ITERATIONS = 1000;

	while(1) {
		i++;
		var temp = zr * zi;
		var zr2 = zr * zr;
		var zi2 = zi * zi;
		zr = zr2 - zi2 + cr;
		zi = temp + temp + ci;
		if (zi2 + zr2 > BAILOUT) {
			return i;
		}
		if (i > MAX_ITERATIONS) {
			return 0;
		}
	}
}

function main() {
	var x; var y;
	output = "";
	
	var date = new Date();
	for (y = -39; y < 39; y++) {
		output = "";
		for (x = -39; x < 39; x++) {
			var i = mandelbrot(x/40.0, y/40.0);
			if (i==0) {
				output += "*";
			}
			else {
				output += " ";
			}
		}	
		console.log(output);
	}
	return false;
}

main();
