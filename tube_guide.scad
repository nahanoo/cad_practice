w = 15;
nut = 10;
nut_margin = 2;
nut_h = 7;
tube = 5;
h = tube;
tube_margin = 5;


module plate(){
	cube([w,nut+nut_margin+tube+tube_margin,h*0.8]);
}

module hex(){
	$fn=6;
	translate([w/2,nut_h/2+nut_margin,h*0.8]){
		difference(){
			cylinder(h*1.2,nut_h/2+nut_margin,nut_h/2+nut_margin);
			cylinder(h*1.2,nut_h/2,nut_h/2);
		}
	}
}

module tube(){
	$fn=50;
	translate([0,nut+nut_margin,h*0.8]){
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
	cylinder(h,2,2);
}

module guide(){
	difference(){
		plate(); 
		translate([w/2,nut_h/2+nut_margin,0]) screw_hole();
	}
	hex();
	tube();
}