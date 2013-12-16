<?php
define("BAILOUT",16);
define("MAX_ITERATIONS",1000);

	


	function mandelbrot($x,$y) {
		$cr = $y-0.5;
		$ci = $x;
		$zi = 0.0;
		$zr = 0.0;
		$i = 0;
		while (true) {
			$i++;
			$temp = $zr * $zi;
			$zr2 = $zr * $zr;
			$zi2 = $zi * $zi;
			$zr = $zr2 - $zi2 + $cr;
			$zi = $temp + $temp + $ci;
			if ($zi2 + $zr2 > BAILOUT)
				return $i;
			if ($i > MAX_ITERATIONS)
				return 0;
		}
	
	}


	function main() {
		for ($y = -39; $y < 39; $y++) {
			for ($x = -39; $x < 39; $x++) {
				if (mandelbrot($x/40.0,$y/40.0) == 0) 
					echo("*");
				else
					echo(" ");

			}
			echo("\n");
		}
	}
main();
