$fn=50;
w = 320;
d = 200;
thickness = 7;
m = 3;
w_reps = 16;
w_space = w/w_reps;
d_reps = 5;
d_space = d/d_reps;
w_distance = 3;
d_distance = 30;


cube([w,d,10]);
for (i = [1:w_reps-1]){
    for (j = [1:d_reps]){
        translate([w_space*i,d_space*j-(d_space/2),10]){
        cube([w_distance,d_distance,10],center=true);
        }
    }
}
