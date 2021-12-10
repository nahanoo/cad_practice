$fn=50;
tube = 3.2/2;
thread = 41/2;
neck = 29/2;
thickness = 3;
spike_h = 12;
margin = 0.25;

module spike(){
	od = 4/2;//outer diameter 
	difference(){
		union(){
			cylinder(3,tube+margin*8,tube+margin);
			translate([0,0,3]){
				cylinder(3,tube+margin,tube+margin);
				}
			translate([0,0,6]){
				cylinder(8,tube+4*margin,tube+margin);
			}
			
			
		}
	cylinder(14,tube,tube);
	}
}

module cover(){
	difference(){
		union(){
			cylinder(thickness,neck,neck);
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
translate([neck/2,0,0]){
	rotate([180,0,0]){
		spike();
		}
	}
}
rotate([180,0,0]){
	spike();
}