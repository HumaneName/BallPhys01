package main

import rl "vendor:raylib"
import "core:fmt"
import "assets"

main :: proc() {
    assets.ballInit()

    rl.InitWindow(800,600,"Ball Phys.")

    for !rl.WindowShouldClose() {
        rl.BeginDrawing()

        // Main loop
        assets.ball()

        rl.EndDrawing()
    }
}