$fn=100;
tube = 3.2/2;
insert = 4/2;
thread = 41/2;
neck = 29/2;
thickness = 3;
margin = 0.4;
use </home/eric/apps/threads.scad>


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

module air_spike(){
	od = 4/2;//outer diameter 
	difference(){
		union(){
			cylinder(3,tube+margin*3,tube+margin);
			translate([0,0,3]){ 	
				cylinder(15,tube+margin,tube+margin);
				}
			translate([0,0,18]){
				cylinder(6,tube+3*margin,tube+margin);
			}
			translate([0,0,24]){
				cylinder(4,tube+2*margin,tube+2*margin);
			}
		}
	cylinder(30,tube,tube);
	}
}

module tube_insert(){
    difference(){
	  cylinder(10,insert+margin,insert+margin);
	  cylinder(10,insert,insert);
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

module lid(){
    h = 13.4;
    d =27;
    thread_d = 24.4;
    difference(){
	  RodEnd(d,h,thread_len=h-2,thread_diam=thread_d,thread_pitch=3.175);
	  r = d/2-5.5;
	  cylinder(h,r,r);

    }
}

module lid_insert_4(){
    d =27;
    r = d/2-3.9;
    shift = insert+1.4;
    difference(){
	  cylinder(2,r,r);
	  for(x = [shift, -shift], y = [shift, -shift])translate([x, y, 0]) cylinder(2,insert,insert);
	  cylinder(2,tube,tube);
	  }
	  for(x = [shift, -shift], y = [shift, -shift])translate([x, y, 2]){
	  tube_insert();
	  
	  
    }
}

module lid_insert_3(){
    d =27;
    r = d/2-3.9;
    shift = insert+1.4;
    ofset = 1;
    difference(){
	  cylinder(2,r,r);
	  translate([0,ofset,0]){
		translate([-r/3,-r/3,0])cylinder(2,insert,insert);
		translate([r/3,-r/3,0])cylinder(2,insert,insert);
		translate([0,r/3,0])cylinder(2,insert,insert);
	  }
    }
    translate([0,ofset,0]){
	  translate([-r/3,-r/3,2])tube_insert();
	  translate([r/3,-r/3,2])tube_insert();
	  translate([0,r/3,2])tube_insert();
	  }
    }