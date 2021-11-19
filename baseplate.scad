module baseplate(){
    $fn=50;
    w = 275;
    d = 170;
    thickness = 7;
    m = 3;
    w_reps = 8;
    w_space = w/w_reps;
    d_reps = 8;
    d_space = d/d_reps;
    w_distance = 20;
    d_distance = 3;

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

projection(cut = true){
    translate([170,0,0]){
        rotate([0,0,90]){
            baseplate();
        }
    }
}

