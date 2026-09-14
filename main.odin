package main

import fmt "core:fmt"
import rl  "vendor:raylib"
import G   "game"

main :: proc() {
    fmt.println("Hello, World!")

    Window(800,600,"RayLib window")
}

Window :: proc(Width : i32, Height : i32, Title : cstring) {

    rl.InitWindow(Width,Height,Title)
    defer rl.CloseWindow()
    for !rl.WindowShouldClose() {
        defer rl.EndDrawing
        rl.BeginDrawing()

        Render()
    }
}

Render :: proc() {

    rl.ClearBackground(rl.DARKBLUE)

}
