w = 15;
h = 3;
nut = 10;
nut_margin = 3;
nut_h = 5;
tube = 4.5;
tube_margin = 3;


module plate(){
	cube([w,nut+nut_margin*2+tube+tube_margin,h]);
}

module hex(){
	$fn=6;
	translate([w/2,nut_h+nut_margin/2,h]){
		difference(){
			cylinder(h,nut_h/2+nut_margin,nut_h/2+nut_margin);
			cylinder(h,nut_h/2,nut_h/2);
		}
	}
}

module tube(){
	translate([0,nut+nut_margin*2,h]){
		cube([w,tube+tube_margin,h]);
	}
}

module screw_hole(){
	$fn=50;
	cylinder(h,3/2,3/2);
}
difference(){
	plate(); 
	translate([w/2,nut_h+nut_margin/2,0]) screw_hole();
}
hex();
tube();
