extern crate adder_rust;

use adder_rust::ui;
use std::env;

fn main() {
    let args: Vec<_> = env::args().skip(1).collect();

    println!("{}", ui::run(args));
}
