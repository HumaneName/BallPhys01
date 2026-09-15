package main

import fmt "core:fmt"        // Imports the FMT library (I think I know what this does)
import rl  "vendor:raylib"   // Imports RayLib library
import G   "game"            // Imports game/game.odin

main :: proc() {
    fmt.println("Hello, World!") // Hiiiii :D
    G.init()

    Window(800,600,"RayLib window") // Initializes a window with by default 800px by 600px with a title "RayLib Window."
}

Window :: proc(Width : i32, Height : i32, Title : cstring) {  
/* Creates a window with the arguments,
   Width and Height (Pixels)
   Title            (String)
*/
    rl.InitWindow(Width,Height,Title)

    defer rl.CloseWindow() // After the window is told to close, it closes
    for !rl.WindowShouldClose() { // Until the window should close, run the following:
        defer rl.EndDrawing()
        rl.BeginDrawing()
        G.game()
        Render()
    }
}

Render :: proc() {

    rl.ClearBackground(rl.DARKBLUE)

}
