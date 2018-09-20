import org.scalatest.{ Matchers, WordSpec }
import akka.http.scaladsl.testkit.ScalatestRouteTest

class AkkaAssignment1Spec extends WordSpec with Matchers with ScalatestRouteTest {

  "The rest service should greet for the GET request to /greet/name" in {
    Get("/greet/sachin") ~> Server.route ~> check {
      responseAs[String] shouldEqual "Hello,sachin"
    }
  }

  "The rest service should return status ok for health" in {
    Get("/health") ~> Server.route ~> check {
      responseAs[String] shouldEqual "status ok"
    }
  }

}