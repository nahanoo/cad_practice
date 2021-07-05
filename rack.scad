module stand(radius,inner_radius,pole_radius){
    difference(){
        union(){
            difference(){
                cylinder(20,radius,radius);
                cylinder(20,inner_radius,inner_radius);
            };
        };
        union(){    
                for(x = [(inner_radius+radius)/2, -(inner_radius+radius)/2], y = 0) translate([x, y, 0]) cylinder(r=pole_radius, h=50);
                    
                for(x = 0, y = [(inner_radius+radius)/2, -(inner_radius+radius)/2]) translate([x, y, 0]) cylinder(r=pole_radius, h=50);
                };
            };
            
    union(){
        difference(){
            union(){
                for(x = [(inner_radius+radius)/2, -(inner_radius+radius)/2], y = 0) translate([x, y, 0]) cylinder(r=pole_radius+5, h=50);
                    
                for(x = 0, y = [(inner_radius+radius)/2, -(inner_radius+radius)/2]) translate([x, y, 0]) cylinder(r=pole_radius+5, h=50);
                    };
            union(){    
                for(x = [(inner_radius+radius)/2, -(inner_radius+radius)/2], y = 0) translate([x, y, 0]) cylinder(r=pole_radius, h=50);
                    
                for(x = 0, y = [(inner_radius+radius)/2, -(inner_radius+radius)/2]) translate([x, y, 0]) cylinder(r=pole_radius, h=50);
                };
            };
        };
}
