object Aufgabe1 extends App {

  def digits(value: Integer):Int = value.toString.size

  assert(1==digits(1))
  assert(2==digits(12))
  assert(3==digits(123))
  assert(4==digits(1234))

}