// src/lib.rs
mod bindings;

use bindings::exports::docs::calculator::calculate::Guest;

// Bring the imported add function into scope
use bindings::docs::adder::add::add;

struct Component;

impl Guest for Component {
    fn eval_expression(expr: String) -> u32 {
        // Cleverly parse `expr` into values and operations, and evaluate
        // them meticulously.
        add(123, 456)
    }
}