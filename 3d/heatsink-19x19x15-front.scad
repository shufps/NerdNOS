$fn=60;
w=3.2;
h=2;
color("#404040") difference() {
        union() {
            translate([0,0,h/2]) cube([19.5,19.97,h], center=true);
            translate([-13.11/2, -25.85/2, 0]) cylinder(r=w, h=h);
            translate([13.11/2, 25.85/2, 0]) cylinder(r=w, h=h);
            translate([-13.11/2, -w, h/2]) cube([w *2, 25.85-5, h], center=true);
            translate([13.11/2, +w, h/2]) cube([w *2, 25.85-5, h], center=true);


            for (y=[-2:3]) {
                for (x=[-2:3]) {
                    translate([x*3.4-0.5-1.9, y*3.3-1-1.9]) cube([1, 2, 15]);
                }
            }
        }
        translate([-13.11/2, -25.85/2, -0.5]) cylinder(r=1.6, h=h+1);
        translate([13.11/2, 25.85/2, -0.5]) cylinder(r=1.6, h=h+1);
    }

        