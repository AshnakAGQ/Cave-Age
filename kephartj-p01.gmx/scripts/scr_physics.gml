// Set horizontal speed
vx += ax;

// Horizontal collisions
if (place_meeting(x + vx, y, obj_ground))
{
    // sign(x) = x * -1
    while(!place_meeting(x + sign(vx), y, obj_ground))
    {
        // Move object 1 pixel at a time until it hits a collision
        x += sign(vx)
    }
    vx = 0; // Stop at walls
    
    ax = 0; // Stop acceleration
}

// Move horizontally
x += vx;

// Set vertical speed
vy += ay;

// Vertical collisions
if (place_meeting(x, y + vy, obj_ground))
{
    // sign(x) = x * -1
    while(!place_meeting(x, y + sign(vy), obj_ground))
    {
        // Move object 1 pixel at a time until it hits a collision
        y += sign(vy)
    }
    vy = 0; // Stop at ground
    
    ay = 0; // Stop acceleration
}

//Move vertically
y += vy;
