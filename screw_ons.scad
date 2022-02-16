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
	cylinder(3,vial_r+12,vial_r+12);
}
vial_holder();
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
vial_holder();
/*
for (i = [0:4]){
	translate([*i,0,0]){
		vial_holder();
	}
}
*/