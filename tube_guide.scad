w = 15;
nut = 10;
nut_margin = 3;
nut_h = 5;
tube = 4.5;
h = tube;
tube_margin = 5;


module plate(){
	cube([w,nut+nut_margin+tube+tube_margin,h]);
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
	$fn=50;
	translate([0,nut+nut_margin,h]){
		difference(){
			cube([w,tube+tube_margin,h*1.2]);
			translate([0,tube_margin,h/2]){
				union(){
					rotate([0,90,0]){
						cylinder(w,tube/2,tube/2);
					}
					translate([0,-tube/4,tube/3]){
						cube([w,tube/2,tube/2]);
					}
				}
			}
		}
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