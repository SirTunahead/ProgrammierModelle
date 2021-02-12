import scala.annotation.tailrec

object Aufgabe2 extends App {

  @tailrec def tail_help(n: Int, g1: Int, g2: Int)  {
    if (n != 1)
      tail_help(n-1, (2*g1) + (3* g2), g1)
  }

  def tailrecursion(n: Int) = {
    val g1 = n
    val g2 = n
    tail_help(n, g1, g2)
  }

  assert(0==tailrecursion(0))
  assert(1==tailrecursion(1))
  assert(2==tailrecursion(2))
  assert(7==tailrecursion(3))
  assert(20==tailrecursion(4))
}
