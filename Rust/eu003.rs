use std::vec::Vec;

struct Primes {
  x: uint,
  list: Box<Vec<uint>>
}

impl Iterator<uint> for Primes {
  fn next(&mut self) -> Option<uint> {
    loop {
      self.x += 2;
      if !any(self.list.as_slice(), |&prime| self.x % prime == 0) {
        self.list.push(self.x);
        return Some(self.x)
      }
    }
  }
}

fn any<T>(xs: &[T], f: |&T| -> bool) -> bool {
  for x in xs.iter() {
    if f(x) { return true }
  }
  false
}

fn main() {
  let mut n = 600851475143u;
  let mut primes = Primes { x: 1, list: box vec![2]};
  for prime in primes {
    if n == prime { break }
    if n % prime == 0 { n /= prime; }
  }
  println!("{}", n);
}
