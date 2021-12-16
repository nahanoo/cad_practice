$fn=50;
tube = 3.2/2;
insert = 3.2/2+0.3;
thread = 41/2;
neck = 29/2;
thickness = 3;
margin = 0.4;

module spike(){
	od = 4/2;//outer diameter 
	difference(){
		union(){
			cylinder(3,tube+margin*4,tube+margin);
			translate([0,0,3]){ 	
				cylinder(1,tube+margin,tube+margin);
				}
			translate([0,0,4]){
				cylinder(6,tube+3*margin,tube+margin);
			}
			translate([0,0,10]){
				cylinder(4,tube+2*margin,tube+2*margin);
			}
		}
	cylinder(14,tube,tube);
	}
}

module tube_insert(){
    difference(){
	  cylinder(6,insert+margin,insert+margin);
	  cylinder(6,insert,insert);
    }
}


module cover(){
	difference(){
		union(){
			//cylinder(thickness,neck,neck);
			translate([0,0,0]){
				cylinder(thickness,thread,thread);
			}
		}
		translate([-neck/2,0,0]){
			cylinder(2*thickness,insert,insert);

		}
		translate([neck/2,0,0]){
			cylinder(2*thickness,tube,tube);
		}
	}
}

module waste(){
	cover();		
	translate([-neck/2,0,thickness]){
			tube_insert();
			}
	translate([neck/2,0,thickness]){
			spike();
			}	
}
waste();