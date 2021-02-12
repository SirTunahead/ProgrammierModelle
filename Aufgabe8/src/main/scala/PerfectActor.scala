import akka.actor.{Actor, ActorSystem, Props}
/*
class PerfectActor extends Actor{

  override def receive: Receive = {
    case "bye" => context.stop(self)
      println("terminatig actor...")

    case input : Int =>
      var sum = 0;
      var i = 1;

      while ( {
        i < input
      }) {
        if (input % i == 0) sum = sum + i
        i += 1
      }
      if ( input == sum ) sender ! input
      println("result is: "+sum)
  }

} */

class PerfectCounterActor extends Actor{

  def receive(counter : Int): Receive = {
    case "bye" =>context.stop(self)
      println("found " +counter+" perfect numbers")

    case input : Int =>
      if((1 to input/2)
        .filter(input % _ == 0)
        .sum
        .equals(input)) context.become(receive(counter+1))
  }

   override def receive: Receive = receive(0)

}

class MainActor extends Actor{
  println("mainActor starts...")
  val perfectCounterActor = context.actorOf(Props[PerfectCounterActor])

  perfectCounterActor! -1
  perfectCounterActor! 1
  perfectCounterActor! 6
  perfectCounterActor! 7
  perfectCounterActor! 23
  perfectCounterActor! 28
  perfectCounterActor! "bye"

  override def receive: Receive = {
    case response => println(response)
  }
}
object Main extends App{
  val system=ActorSystem("hfu")
  val mainActor = system.actorOf(Props[MainActor])
}