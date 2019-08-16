hoehe=62.0;
breite=78.2;
laenge=77.0;
$fn = 50;

include<mod_bulge.scad>

difference()
{
    
    garbageTruckBody();

    translate([4,4,3])
    {
        scale([0.9,1,0.9])
        {
            garbageTruckBody();
        }
    }
}

addOnsBottom();


module addOnsBottom()
{
    //color("red")
    translate([10.5,0,-10.5])
    cube([2.5,96.0,10.5]);

    //color("red")
    translate([65.5,0,-10.5])
    cube([2.5,96.0,10.5]);

    /* TODO */
    //color("red")
    translate([breite/2,43,-5])
    cube([1,86,10],center=true);

    difference()
    {
        //color("red")
        translate([0,laenge,0])
        cube([breite,19,3]);

        //color("red")
        translate([breite/2,92,0])
        cube([40,12,12],center=true);
    }
}

module garbageTruckBody()
{
    difference()
    {
        cube([breite,laenge, hoehe]);

        //color("red")
        translate([78.3,-10,47.9])
        {
            rotate([0,-45,0])
            {
                cube([20,100,20]);
            }
        }

        //color("red")
        translate([0,-10,47.9])
        {
            rotate([0,-45,0])
            {
                cube([20,100,20]);
            }
        }
       
    }
}
