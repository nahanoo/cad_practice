module stand(width,depth,pole_radius,extra_play,thickness){
        pole_position = 93;
        color("white"){
        difference(){
            union(){
                difference(){
                    translate([-(width/2+extra_play+thickness),-(depth/2+thickness+extra_play),0]){
                    cube([width+2*(extra_play+thickness),depth+2*(extra_play+thickness),20]);
                    };
                    translate([-(width/2+extra_play),-(depth/2+extra_play),0]){
                    cube([width+2*extra_play,depth+2*extra_play,20]);
                    };
                };
            };
            for(x = [width/2+extra_play+thickness/2, -width/2-extra_play-thickness/2], y = [-       pole_position,pole_position]) translate([x, y, 10]) cylinder(r=pole_radius, h=50);
            };

            difference(){
                
                for(x = [width/2+extra_play+thickness/2, -width/2-extra_play-thickness/2], y =              [-pole_position,pole_position]) translate([x, y, 0]) cylinder(r=pole_radius+5, h=50);
                
                for(x = [width/2+extra_play+thickness/2, -width/2-extra_play-thickness/2], y =              [-pole_position,pole_position]) translate([x, y, 0]) cylinder(r=pole_radius, h=50); 
                };
                for(x = [width/2+extra_play+thickness/2, -width/2-extra_play-thickness/2], y =              [-pole_position,pole_position]) translate([x, y, 0]) cylinder(r=pole_radius, h=3*80);
        };
    };