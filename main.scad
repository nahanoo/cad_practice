include <lab_equipment.scad>;
include <rack.scad>;

height=80;
radius=15;
falcon(height,radius);
translate([0,0,height]){
    syringe(height,radius);
};
$fn=10;

radius=160;
inner_radius=120;
pole_radius=10;
stand(radius,inner_radius,pole_radius);