module baseplate(w,d,w_reps,d_reps,w_distance,d_distance){
    thickness = 4;
    w_space = w/w_reps;
    d_space = d/d_reps;
    echo(w_space);
        difference(){
        cube([w,d,thickness]);
        for (i = [1:w_reps]){
            for (j = [1:d_reps]){
                translate([w_space*i-(w_space/2),d_space*j-(d_space/2),0]){
                cube([w_distance,d_distance,thickness*2],center=true);
                }
            }
        }
    }
}

w = 270;
d = 166.8;
baseplate(w/3*2,d,6,12,16,3);
translate([w/3*2,0,0]){
    baseplate(96,d,6,6,3,13);
}


/*
projection(cut = true){
    translate([d,0,0]){
        rotate([0,0,90]){
            baseplate(w/3*2,d,6,12,16,3);
            translate([w/3*2,0,0]){
                baseplate(96,d,6,6,3,13);
            }
        }
    }
}*/