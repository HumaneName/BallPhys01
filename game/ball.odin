package game

import fmt "core:fmt"
import rl  "vendor:raylib"



init :: proc() {
    stats.position = {0, 0}
    stats.velocity = {15, 15}
    stats.mass     = 1

    fmt.println("ball.odin ran")
}

Stats :: struct {
    position : struct {x, y: int},
    velocity : struct {x, y: int},
    mass     : int
}

stats: Stats



ball :: proc() {
  
}

draw :: proc() {

}

physics :: proc() {
    defer stats.position.x += stats.velocity.x
    defer stats.position.y += stats.velocity.y
    defer collision()

    stats.velocity.y += globals.gravity
    stats.velocity.x *= globals.friction

}

collision :: proc() {

}