import akka.actor.ActorSystem
import akka.http.scaladsl.{Http, server}
import akka.stream.ActorMaterializer
import akka.http.scaladsl.server.Directives.{host, _}

import scala.concurrent.ExecutionContext


object Server extends App {

  implicit val system: ActorSystem = ActorSystem("helloworld")
  implicit val executor: ExecutionContext = system.dispatcher
  implicit val materializer: ActorMaterializer = ActorMaterializer()

  val host = "0.0.0.0"
  val port = 9000

  def route :server.Route =

  pathPrefix("greet") {
    path(Segment) { name =>
      get {
        complete("Hello,"+ name)
      }
  }} ~ path("health") {
    get {
      complete("status ok")
    }
  }
  Http().bindAndHandle(route, host, port)
}

