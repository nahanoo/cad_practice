$fn=50;
w = 320;
d = 200;
thickness = 7;
m = 1.5;
module baseplate(){
    w_reps = w/10.5;
    w_distance = w/w_reps;
    d_reps = 16;
    d_distance = d/d_reps;
    echo(w_distance);
    echo(d_distance);

    cube([w,d,thickness]);
    for (k = [1:w_reps-1]){
        for (q = [1:d_reps-1]){
        translate([w_distance*k,d_distance,0]){
            cube(50);
        }  
    }
}
/*
projection(cut = true){
    translate([d,0,0]){
        rotate([0,0,90]){
            baseplate();
        }
    }
}
*/