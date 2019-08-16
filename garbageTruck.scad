hoehe=62.0;
breite=78.2;
laenge=77.0;

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
