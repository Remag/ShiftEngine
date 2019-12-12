/// update_kid_sprite( prevAnimationState )
var prevAnimationState = argument0;

// Update animation step.
if( AnimationState != prevAnimationState ) {
    AnimationStep = 0;
} else {
    AnimationStep++;
}

// Update animation direction.
if( AnimationDir != Dir ) {
    var animationDelta = sign( Dir ) * 0.4;
    AnimationDir += animationDelta;
    
    // Guarantee that animation direction will eventually equal direction.
    if( abs( AnimationDir ) > 1 ) {
        AnimationDir = Dir;
    }
}

// Find the direction independent sprite.
var baseSprite;
if( AnimationState == 0 ) {
    // Idle.
    image_speed = 0.135;
    baseSprite = SIdle;
    
} else if( AnimationState == 1 ) {
    // Running.
    baseSprite = SRun;
    image_speed = 0.335;

} else if( AnimationState == 2 ) {
    // Jumping.
    baseSprite = SJump;
    image_speed = 0.335;

} else if( AnimationState == 3 ) {
    // Falling.
    if( AnimationStep <= 12 ) {
        baseSprite = SFallStart;
        image_speed = 0;  
        image_index = min( AnimationStep * 0.334, 3 );
    } else {
        baseSprite = SFall;
        image_speed = 0.335;
    } 

} else if( AnimationState == 4 ) {
    // Sliding.
    baseSprite = SSlide;
    image_speed = 0.335;
}

// Choose directed sprite from base sprite and animation direction.
var resultSprite;
if( AnimationState == 1 || AnimationState == 0 ) {
    if( abs( AnimationDir ) < 1 ) {
        resultSprite = SQuarterStep;
    } else {
        resultSprite = baseSprite;
    }
} else {
    resultSprite = baseSprite;
}

sprite_index = resultSprite;

