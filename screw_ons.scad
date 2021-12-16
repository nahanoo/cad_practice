include </home/eric/apps/nutsnbolts/cyl_head_bolt.scad>;
module vial_holder(){
	vial_r = 12.6;
	m = 2;
	holes = 45.25;
	h = 40;
	$fn=100;

	//Actual vial holder
	difference(){
		cylinder(h,vial_r+2,vial_r+2);
		cylinder(h,vial_r,vial_r);
	}
	//Foot
	difference(){
		//Unites circular foot and rectangular foot
		union(){
			cylinder(3,vial_r+12,vial_r+12);
			translate([0,0,1.5]){
				cube([holes+14,14,3],center=true);
			}
		}
		//Adding M3 screw holes
		translate([holes/2,0,0]){
			cylinder(3,m,m);
		}
		translate([-holes/2,0,0]){
			cylinder(3,m,m);
		}
	}
}
module leg(){
	r = 3.5;
	h = 10;
	difference(){
		union(){
			$fn=6;
			cylinder(3,r+2,r+2);
			translate([0,0,3]){				
				difference(){
					cylinder(h-6,r+2,r+2);
					cylinder(h-6,r,r);
				}
			}
		}
		$fn=50;
		cylinder(3,2,2);
	}
}
/*
for (i = [0:4]){
	translate([20*i,0,0]){
		leg();
	}
}
translate([0,50,0]){
	vial_holder();
}*/