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
