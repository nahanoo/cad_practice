$fn=50;
tube = 3.2/2;
thread = 41/2;
neck = 29/2;
thickness = 3;
margin = 0.4;

module spike(){
	od = 4/2;//outer diameter 
	difference(){
		union(){
			cylinder(3,tube+margin*6,tube+margin);
			translate([0,0,3]){
				cylinder(1,tube+margin,tube+margin);
				}
			translate([0,0,4]){
				cylinder(6,tube+2*margin,tube+margin);
			}
			translate([0,0,10]){
				cylinder(4,tube+2*margin,tube+2*margin);
			}
		}
	cylinder(17,tube,tube);
	}
}

module cover(){
	difference(){
		union(){
			//cylinder(thickness,neck,neck);
			translate([0,0,thickness]){
				cylinder(thickness,thread,thread);
			}
		}
		translate([-neck/2,0,0]){
			cylinder(2*thickness,tube,tube);

		}
		translate([neck/2,0,0]){
			cylinder(2*thickness,tube,tube);
		}
	}
}

module connector(){
	cover();		
	translate([-neck/2,0,thickness*2]){
			spike();
			}
	translate([neck/2,0,thickness*2]){
			spike();
			}	
}
connector();