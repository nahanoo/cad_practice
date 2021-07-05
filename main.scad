include <lab_equipment.scad>;
include <rack.scad>;

$fn=25;
stirrer_radius=135/2;
stirrer_width=150;
stirrer_depth=260;
stirrer_height=80;
translate([0,-30,0]){
    stirrer(stirrer_radius,stirrer_width,stirrer_depth,stirrer_height);
};

falcon_height=80;
falcon_radius=15;
syringe_height=80;
syringe_radius=15;
translate([0,0,80]){
    falcon(falcon_height,falcon_radius);
    translate([0,0,falcon_height]){
        syringe(syringe_height,syringe_radius);
    };
};

pole_radius=10;
extra_play=35;
thickness=30;
translate([0,0,0]){
    stand(stirrer_width,stirrer_depth,pole_radius,extra_play,thickness);
};


translate([0,0,3*80]){
    rotate([0,180,180]){
        stand(stirrer_width,stirrer_depth/3,pole_radius,extra_play,thickness);
        translate([0,0,10]){
            color("white"){
                cube([stirrer_width+2*extra_play+2*thickness,falcon_radius+20,20],center=true);
            };
        }
    };
};
