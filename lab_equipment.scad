$fn=50;
module falcon(height,radius){
        color("lightblue"){
        translate([0,0,10]){        
            cylinder(height-10,radius,radius);
            rotate([180,0,0]){
                cylinder(10,radius,0);
            };
            translate([0,0,height-20]){
                cylinder(10,radius+2,radius+2);
                translate([radius-5,0,-20]){
                    cylinder(40,2,2);
                }
                translate([-radius+5,0,-20]){
                    cylinder(40,2,2);
                }
                translate([0,0,-20]){
                    cylinder(40,2,2);
                }
            };
        };
    };
};

module syringe(height,radius){
    color("lightgreen"){
    translate([0,0,10]){        
            cylinder(height-10,radius,radius);
            rotate([180,0,0]){
                cylinder(10,radius/6,radius/10);
            };
            translate([0,0,height-12]){
            cylinder(2,radius+4,radius+4);
            };
        };
        translate([-radius/2,-1,height]){
              cube([radius,2,height]);  
        };
        rotate([0,0,90]){
            translate([-radius/2,-1,height]){
                  cube([radius,2,height]);  
            };
        };
        translate([0,0,2*height-2]){
            cylinder(2,radius+2,radius+2);
        };
    };
};

module stirrer(radius,width,depth,height){
        color("darkgray"){
        translate([-width/2,-depth/2,0]){
            cube([width,depth,height*2/3]);
        };
        translate([0,depth/8,0]){
            cylinder(height,radius,radius);
        };
    };
};

module reactor(){
    reactor_base = 53;
    reactor_height = 115;
    cube([reactor_base,reactor_base,reactor_height]);
}

module pump(){
    width = 100;
    depth = 150.5;
    thickness = 5;
    legs = 40;
    for(x = [width/10, width/10*9], y = [depth/10, depth/10*9]) translate([x, y, 0]) cylinder(r=2.25, h=legs);
    translate([0,0,legs]){
        cube([width,depth,thickness]);
        translate([0,0,thickness]){
            for(x = [width/4, width/4*3], y = [depth/4, depth/4*3]) translate([x, y, 0]) cylinder(r=20, h=8);
        }
    }
}

module bottle_2l(){
    height = 260;
    diameter = 136/2;
    cylinder(height/8*5,diameter,diameter);
    translate([0,0,height/8*5]){
        cylinder(height/8*2,diameter,diameter/4);
    }
    translate([0,0,height/8*7]){
        cylinder(height/8,diameter/4,diameter/4);
    }
}

module vial_ring(){
    vial = 12.6;
    margin = 2;
    difference(){
	  cylinder(4,vial+margin,vial+margin);
	  cylinder(4,vial,vial);
    }
}
vial_ring();