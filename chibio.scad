include <lab_equipment.scad>;

margin = 100;
rw = 53;
bp_width = margin*3+margin/2*2+4*rw;
bp_depth = 450;
cube([bp_width,bp_depth,5]);
x_pos = 0;
y_pos = margin/2;
translate([margin/2,0,5]){
    for (i = [0:3]){
        shifted = [(x_pos+rw+margin)*i,y_pos,0];
        translate(shifted){
            reactor();
            translate([-rw/2,rw+40,0]){
                rotate([0,0,0]){
                    pump();
                }
            }
            translate([25,margin+rw+40+100+30,0]){
                bottle_2l();
            }
        }
    }
}
