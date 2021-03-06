// Scala's parsing rules can be strange at first
// Notes:
//  * Functions that don't take arguments do not need parenthesis
//  * 1 to 100 is actually the call (1).to(100)
//  * If the expression is a value then a space is sugar for the . operator
//  * If the expression is a function expecting 1 parameter then a space is
//    sugar for function application
//  * Because Scala is statically typed it knows how to properly desugar
//    spaces without ambiguity
object Main {
  def main(args: Array[String]) {
    println(1 to 999 filter {x: Int => x % 3 == 0 || x % 5 == 0} sum)
  }
}
