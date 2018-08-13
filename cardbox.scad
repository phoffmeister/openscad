module card_box(card_x, card_y, thickness, inner_height) {
    p1 = [0,0];
    p2 = p1 + [0, inner_height];
    p3 = p2 + [-thickness, 0];
    p4 = p3 + [-thickness, thickness];
    p5 = p4 + [thickness, thickness];
    p6 = p5 + [-thickness, 0];
    p7 = p6 + [-thickness, -thickness];
    p8 = p7 + [0, -thickness];
    p9 = p8 + [2*thickness, -2*thickness];
    p10 = p9 + [0, -inner_height+(3*thickness)];
    p11 = p10 + [-thickness*0.8, -thickness*1.1];
    p12 = p10 + [0, -1.8*thickness];
    p13 = p12 + [thickness+card_x/2,0];
    p14 = p13 + [0, thickness];

    p=[p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14];
    difference() {
        union() {
            linear_extrude(height = card_y+2*thickness, center=true) {
                union() {
                    translate([-card_x/2,0,0]) polygon(points=p);
                    mirror([1,0,0]) translate([-card_x/2,0,0]) polygon(points=p);
                }
            }
            translate([0,inner_height/2,-card_y/2-thickness/2]) cube(size=[card_x, inner_height, thickness], center=true);
            translate([0,inner_height/2,card_y/2+thickness/2]) cube(size=[card_x, inner_height, thickness], center=true);
            translate([card_x/2+thickness/2, inner_height-1.2, (-card_y/2)*0.85]) rotate([0,90,0]) cylinder(h=thickness*0.6, r=2, center=true, $fn=30);
            translate([-card_x/2-thickness/2, inner_height-1.2, (-card_y/2)*0.85]) rotate([0,90,0]) cylinder(h=thickness*0.6, r=2, center=true, $fn=30);
        }
        //translate([card_x/2+thickness/2, -1.2, (-card_y/2)*0.85]) rotate([0,90,0]) cylinder(h=thickness*1.5, r=2.5, center=true, $fn=30);
        //translate([-card_x/2-thickness/2, -1.2, (-card_y/2)*0.85]) rotate([0,90,0]) cylinder(h=thickness*1.5, r=2.5, center=true, $fn=30);
                translate([card_x/2+thickness/2, -1.2, (-card_y/2)*0.85]) rotate([0,90,0]) cylinder(h=thickness, r=2.5, center=true, $fn=30);
        translate([card_x/2+thickness/2, -2.5, (-card_y/2)*0.9]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([card_x/2+thickness/2, -2.5, (-card_y/2)*0.92]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([card_x/2+thickness/2, -2.5, (-card_y/2)*0.94]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([card_x/2+thickness/2, -2.5, (-card_y/2)*0.96]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([card_x/2+thickness/2, -2.5, (-card_y/2)*0.98]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([card_x/2+thickness/2, -2.5, (-card_y/2)*1.00]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([card_x/2+thickness/2, -2.5, (-card_y/2)*1.02]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([card_x/2+thickness/2, -2.5, (-card_y/2)*1.04]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([-card_x/2-thickness/2, -1.2, (-card_y/2)*0.85]) rotate([0,90,0]) cylinder(h=thickness, r=2.5, center=true, $fn=30);
        translate([-card_x/2-thickness/2, -2.5, (-card_y/2)*0.9]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([-card_x/2-thickness/2, -2.5, (-card_y/2)*0.92]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([-card_x/2-thickness/2, -2.5, (-card_y/2)*0.94]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([-card_x/2-thickness/2, -2.5, (-card_y/2)*0.96]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([-card_x/2-thickness/2, -2.5, (-card_y/2)*0.98]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([-card_x/2-thickness/2, -2.5, (-card_y/2)*1.00]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([-card_x/2-thickness/2, -2.5, (-card_y/2)*1.02]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([-card_x/2-thickness/2, -2.5, (-card_y/2)*1.04]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
    }
}

module card_box_cap(card_x, card_y, thickness) {
    p1 = [0,0];
    p2 = p1 + [0,thickness];
    p3 = p2 +  [-thickness, 0];
    p4 = p3 + [-thickness*0.8, -thickness*1.1];
    p5 = p3 + [0, -1.8*thickness];
    p6 = p5 + [thickness+card_x/2,0];
    p7 = p6 + [0, thickness*0.9];
    
    p = [p1,p2,p3,p4,p5,p6,p7];
    
    difference() {
        union() {
            linear_extrude(height = card_y+2*thickness, center=true) {
                union() {
                    translate([-card_x/2,0,0]) polygon(points=p);
                    mirror([1,0,0]) translate([-card_x/2,0,0]) polygon(points=p);
                }
            }
        }
        translate([card_x/2+thickness/2, -1.2, (-card_y/2)*0.85]) rotate([0,90,0]) cylinder(h=thickness, r=2.5, center=true, $fn=30);
        translate([card_x/2+thickness/2, -2.5, (-card_y/2)*0.9]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([card_x/2+thickness/2, -2.5, (-card_y/2)*0.92]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([card_x/2+thickness/2, -2.5, (-card_y/2)*0.94]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([card_x/2+thickness/2, -2.5, (-card_y/2)*0.96]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([card_x/2+thickness/2, -2.5, (-card_y/2)*0.98]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([card_x/2+thickness/2, -2.5, (-card_y/2)*1.00]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([card_x/2+thickness/2, -2.5, (-card_y/2)*1.02]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([card_x/2+thickness/2, -2.5, (-card_y/2)*1.04]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([-card_x/2-thickness/2, -1.2, (-card_y/2)*0.85]) rotate([0,90,0]) cylinder(h=thickness, r=2.5, center=true, $fn=30);
        translate([-card_x/2-thickness/2, -2.5, (-card_y/2)*0.9]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([-card_x/2-thickness/2, -2.5, (-card_y/2)*0.92]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([-card_x/2-thickness/2, -2.5, (-card_y/2)*0.94]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([-card_x/2-thickness/2, -2.5, (-card_y/2)*0.96]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([-card_x/2-thickness/2, -2.5, (-card_y/2)*0.98]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([-card_x/2-thickness/2, -2.5, (-card_y/2)*1.00]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([-card_x/2-thickness/2, -2.5, (-card_y/2)*1.02]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        translate([-card_x/2-thickness/2, -2.5, (-card_y/2)*1.04]) rotate([0,90,0]) cylinder(h=thickness*0.8, r=1, center=true, $fn=30);
        //translate([card_x/2+thickness/2, -1.2, (-card_y/2)*0.85]) cube([thickness*1.5,2,(card_y/2)*0.15], center=true);
    }
}
rotate([90,0,0]) {
    translate([100,0,0]) card_box(70,100,2.5,50);
    card_box_cap(70,100,2.5);
}