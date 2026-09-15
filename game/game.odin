package game

import fmt "core:fmt"
import rl  "vendor:raylib"

Globals :: struct {gravity: int, friction: f16}
globals: Globals

game :: proc() {
    ball()
}