package game

import fmt "core:fmt"
import rl  "vendor:raylib"



init :: proc() {
    stats = {position = {0,0}, velocity = {15,15}, mass = 1, radius = 5.0}
    Boundary = {WindowSize}

    fmt.println("ball.odin ran")
}

Stats :: struct {
    position : struct {x, y: int},
    velocity : struct {x, y: int},
    mass     : int,
    radius   : f32,
}

stats: Stats
boundary: Boundary


ball :: proc() {
  
}

draw :: proc() {
    rl.DrawCircle(stats.position.x,stats.position.y,stats.radius,rl.RED)
}

physics :: proc() {
    defer stats.position.x += stats.velocity.x
    defer stats.position.y += stats.velocity.y
    defer collision()

    stats.velocity.y += globals.gravity
    stats.velocity.x *= globals.friction

}

Boundary :: struct  {x,y: i32}

collision :: proc() {
    if (stats.position.y > Boundary.y) {
        stats.position.y = Boundary.y
        stats.velocity.y *= -1
    }
}
