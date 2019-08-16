

module bulge(laenge=10)
{
    translate([0,0,2])
    {
        rotate([0,90,0])
        {
            translate([0,0,1])
            {
                rotate([-90,0,0])
                {
                    cylinder(r=1,h=laenge);
                }
            }
            cube([2,laenge,2]);
        }
    }
}