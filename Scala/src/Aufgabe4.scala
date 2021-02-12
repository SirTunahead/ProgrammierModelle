object Aufgabe4 extends App {

  def isISBNFormat(value: String) = "[0-9]{1,3}-[0-9]{3}-[0-9]{5}-[0-9]{1}".r.matches(value)

  assert(isISBNFormat("3-770-40001-1"))
  assert(!isISBNFormat("3-770-400012-1"))
  assert(!isISBNFormat("3-770-40001=1"))

}