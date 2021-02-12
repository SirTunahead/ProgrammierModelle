import scala.annotation.tailrec

object Aufgabe5 extends App {
  def isISBNFormat(value: String) = "[0-9]{1,3}-[0-9]{3}-[0-9]{5}-[0-9]{1}".r.matches(value)

   @tailrec def qSum(s: List[String], sum: Int) : Boolean =
    if(!s.isEmpty)
      qSum(s.drop(1), sum + (s.length * s.head.toInt))
    else if(sum % 11 == 0) true
    else false


  def isISBN(s: String) : Boolean =
    if(isISBNFormat(s))qSum(s.replaceAll("-", "").split("").toList, 0)
    else false;

  assert( isISBN("3-770-40001-1"))
  assert(!isISBN("3-770-400012-1"))
  assert(!isISBN("3-770-40001-2"))
}
