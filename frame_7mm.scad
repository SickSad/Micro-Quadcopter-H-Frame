
module led_holder(){
		rotate([90,0,0])difference(){
		union(){
			cylinder(r=3, h=3, $fn=100, center=true);
			translate([0,-2.5,0])cube([5,2,3], center=true, $fn=100);
		}
		cylinder(r=1.5, h=6, $fn=100, center=true);
	}
}

module frame(){
	union(){
		difference(){
			union(){
				intersection(){
					linear_extrude(height = 15, center = true, convexity = 10, $fn=100)
						import (file = "frame.dxf", layer = "frame");
					translate([0,0,-5])rotate([90,0,0])linear_extrude(height = 80, center = true, convexity = 10, $fn=100)
						import (file = "frame.dxf", layer = "front_profile");	
				}
			}
			
			translate([0,0,-1.8])cube([20,50,5], center=true);
			translate([9,0,-2.3])rotate([90,0,0])cylinder(r=2, h=55, center=true, $fn=100);
			translate([-9,0,-2.3])rotate([90,0,0])cylinder(r=2, h=55, center=true, $fn=100);

			color([0.3,0.3,0.0])translate([32.5, 32.5,-4])cylinder(r=3.5, h=10, $fn=100);
			color([0.3,0.3,0.0])translate([-32.5, 32.5,-4])cylinder(r=3.5, h=10, $fn=100);
			color([0.3,0.3,0.0])translate([32.5, -32.5,-4])cylinder(r=3.5, h=10, $fn=100);
			color([0.3,0.3,0.0])translate([-32.5, -32.5,-4])cylinder(r=3.5, h=10, $fn=100);


			color([0.3,0.3,0.0])translate([-32.5, -32.5,-2.5])difference(){
				translate([0,0,5.1])cube([30,30,10], center = true);
				cylinder(r1=6,r2=4.5 , h=8, $fn=100);
			}


			color([0.3,0.3,0.0])translate([-32.5, 32.5,-2.5])difference(){
				translate([0,0,5.1])cube([30,30,10], center = true);
				cylinder(r1=6,r2=4.5 , h=8, $fn=100);
			}

			color([0.3,0.3,0.0])translate([32.5, -32.5,-2.5])difference(){
				translate([0,0,5.1])cube([30,30,10], center = true);
				cylinder(r1=6,r2=4.5 , h=8, $fn=100);
			}

			color([0.3,0.3,0.0])translate([32.5, 32.5,-2.5])difference(){
				translate([0,0,5.1])cube([30,30,10], center = true);
				cylinder(r1=6,r2=4.5 , h=8, $fn=100);
			}


		}
		intersection(){

			linear_extrude(height = 15, center = true, convexity = 10, $fn=100)
				import (file = "frame.dxf", layer = "frame_strengthners");

			translate([0,0,-5])rotate([90,0,0])linear_extrude(height = 80, center = true, convexity = 10, $fn=100)
				import (file = "frame.dxf", layer = "strengthners_profile");	
		}
	}
}


module stand(){
	intersection(){
		rotate([90,0,0])linear_extrude(height = 8, center = true, convexity = 10, $fn=200, center=true)
			import (file = "frame.dxf", layer = "stands_top");
			//translate([35.5778/2,0,0])cylinder(r=1.9, h=0.5, $fn=100);
			//translate([-35.5778/2,0,0])cylinder(r=1.9, h=0.5, $fn=100);
		rotate([0,0,0])linear_extrude(height = 30, center = true, convexity = 10, $fn=200, center=true)
			import (file = "frame.dxf", layer = "stands_profile");
	}
	
	translate([25.25,-0.5,10])cube([3.5,3,2]);
	translate([-28.75,-0.5,10])cube([3.5,3,2]);
}


frame();
translate([50,0,-4.5])rotate([90,0,90])stand();
translate([-50,0,-4.5])rotate([90,0,-90])stand();


