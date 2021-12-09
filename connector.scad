$fn=50;
tube = 3.2/2;
thread = 41/2;
neck = 29/2;
thickness = 3;
spike_h = 12 	;

module spike(){
	od = 5/2; //outer diameter
	margin = 0.8; 
	difference(){
		union(){
			cylinder(spike_h/2,od*2,tube+2*margin);
			translate([0,0,spike_h/2]){
				cylinder(spike_h*1.5,tube+2*margin,tube+margin);
			}
			translate([0,0,spike_h*0.8]){
				cylinder(spike_h/4,tube+margin*3,tube+margin);
			}
			translate([0,0,spike_h*0.8-spike_h/4]){
				cylinder(spike_h/4,tube+margin,tube+margin*3);
			}
		}
	cylinder(3.5*spike_h,tube,tube);
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


connector();