// Scala has the ability to produce lazy sequences using Stream

object Main {
  def main(args: Array[String]) {
    println(fib(0, 1).takeWhile(_ < 4000000).filter(_ % 2 == 0).reduce(_+_))
  }
  
  def fib(x1: Int, x2: Int): Stream[Int] = {
    x1 #:: fib(x2, x1 + x2)
  }
}
