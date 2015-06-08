
module parts() {
	color([0.5,0.7,0.7]){
		cube([20,22.5,5], center=true);
		translate([-5,-17,0.5])cube([3,12,6], center=true);
		translate([0,22.25+3.6,0])cube([19,22,5], center=true);
		
		//camera
		translate([0,0,-4])union(){
			translate([0,39.9+4,-5])cube([12.6, 6, 15], center=true);
			translate([0,39.9+10,-4.5])rotate([90,0,0])cylinder(r=4.5,h=3.10);
		}

		translate([0,0,-4])union(){
			translate([0,39.9+12.48,-4.5])rotate([90,0,0])cylinder(r=15/2,h=2.5);
			translate([0,39.9+15.45,-4.5])rotate([90,0,0])cylinder(r=16/2,h=3);
		}


	}	
}

difference(){
	union(){
		translate([0,19.5,2])cube([26,67,2],center=true);
		translate([0,39.9+13,-8.5])rotate([90,0,0])cylinder(r=9,h=6.0);

		translate([0,50,-3.5])cube([18,6,10],center=true);
	}
	translate([0,20,0])cube([11,50,9],center=true);
	translate([13,13,2.5])cylinder(r=2,h=5, center=true, $fn=200);
	translate([-13,13,2.5])cylinder(r=2,h=5, center=true, $fn=200);
	parts();
}

//parts();