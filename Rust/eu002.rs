// Don't know how idiomatic this is but I love that it's possible
// Implement Fib as a Iterator<uint> with next and suddenly you get access to
//   take_while, nice for generating infinite series

struct Fib {
    x1: uint, x2: uint
}

impl Iterator<uint> for Fib {
    fn next(&mut self) -> Option<uint> {
        let x3 = self.x1 + self.x2;
        self.x1 = self.x2;
        self.x2 = x3;
        Some(x3)
    }
}

fn main() {
    let fib = Fib { x1: 0, x2: 1 };
    let x = fib.take_while(|&x| x < 4000000)
               .filter(|x| x % 2 == 0)
               .fold(0u, |a, x| a + x);
    println!("{}", x);
}
