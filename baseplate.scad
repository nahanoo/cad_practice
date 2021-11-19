$fn=50;
w = 320;
d = 200;
thickness = 7;
m = 1.5;
w_reps = 48;
w_distance = w/w_reps;
d_reps = 16;
d_distance = d/d_reps;
echo(w_distance);
echo(d_distance);

cube([w,d,10]);
for (i = [1:w_reps-1]){
    for (j = [1:d_reps-1]){
        translate([w_distance*i,d_distance*j,10]){
        cylinder(thickness,1.5,1.5);
        }
    }
}
for (k = [0:w_reps/2-1]){
    translate([w_distance-m,d_distance,15]){
        translate([w_distance*2*k,0,0]){
            for (q = [0:2]){
                translate([0,(d_reps-1)/3*d_distance*q,0]){
                    cube([3,(d_reps-4)/3*d_distance,5]);
                }
            }
        }  
    }
}

