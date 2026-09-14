package main

import fmt "core:fmt"        // Imports the FMT library (I think I know what this does)
import rl  "vendor:raylib"   // Imports RayLib library
import G   "game"            // Imports game/game.odin

main :: proc() {
    fmt.println("Hello, World!") // Hiiiii :D

    Window(800,600,"RayLib window") // Initializes a window with by default 800px by 600px with a title "RayLib Window."
}

Window :: proc(Width : i32, Height : i32, Title : cstring) {  
/* Creates a window with the arguments,
   Width and Height (Pixels)
   Title            (String)
*/
    rl.InitWindow(Width,Height,Title)

    if !IsWindowReady() {
        rl.EndDrawing()
        fmt.println("Window failed to initialize!")
        return
    } 
    
    defer rl.CloseWindow()
    for !rl.WindowShouldClose() {
        defer rl.EndDrawing()
        rl.BeginDrawing()

        G.game()
        Render()
    }
}

Render :: proc() {

    rl.ClearBackground(rl.DARKBLUE)

}
