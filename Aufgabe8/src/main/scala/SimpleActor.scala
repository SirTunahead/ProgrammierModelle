import akka.actor.{Actor, ActorSystem, Props}
/*
class SimpleActor extends Actor{
  def receive(counter : Int): Receive = {
    case "stop" =>context.stop(self)
      println("terminatig actor...")
    case message : String =>
      println("received message: "+message)
      sender ! message.toUpperCase
      println("messages received: "+counter)
      context.become(receive(counter+1))
  }

  override def receive: Receive = receive(1)
}

class MainActor extends Actor{
  val actor = context.actorOf(Props[SimpleActor])
  actor ! "hello"
  actor ! "hfu"
  actor ! "world"
  actor ! "stop"
  println("message send...")

  override def receive: Receive = {
    case response => println(response)
  }
}
/*
object Main extends App{
  val system=ActorSystem("hfu")
  val mainActor = system.actorOf(Props[MainActor])
}
*/ */