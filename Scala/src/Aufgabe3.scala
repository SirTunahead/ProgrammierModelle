object Aufgabe3 extends App {

def isPerfect(n: Int) : Boolean =
  (1 to n/2)
    .filter(n % _ == 0)
    .sum
    .equals(n)

assert(!isPerfect(5))
assert(isPerfect(6))
assert(isPerfect(28))
}


/*Lösung aus dem Internet, verstehe ich zum großteil aber nicht ganz.
  Aber für später sicher mal interessant.
  .collect .sum und until verstehe ich einigermaßen.
  Bei den zuasmmenhängen hakt es noch

def isPerfectNumber(input: Int) :Boolean  = {
      val check_sum = ( (2 until input).collect  { case x if input % x == 0 => x }  ).sum
      if (input <= 1) "false"
      else if ( check_sum == input - 1 ) "true"
      else "false"
    }

 */