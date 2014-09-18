fn main() {
  let x = range(0u, 1000u)
         .filter(|x| x % 3 == 0 || x % 5 == 0)
         .fold(0u, |a, x| a + x);
  println!("{}", x);
}
