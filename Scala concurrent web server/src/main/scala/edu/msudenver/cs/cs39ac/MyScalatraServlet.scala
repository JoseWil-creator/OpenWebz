// taskkill /pid 9904 /F will terminate the TCP connections
package edu.msudenver.cs.cs39ac

import org.scalatra._

import java.io.{File, FileNotFoundException}
import java.nio.file.Files
import javax.servlet.http.{HttpServletRequest, HttpServletResponse}
import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent.duration.Duration
import scala.concurrent.{Await, Future}
import scala.util.{Try, Success, Failure}
import scala.io.Source


// Var is mutable and val is immutable variables
class MyScalatraServlet extends ScalatraServlet {
  /* val buildFile: Future[String] = Future {
    val file = Source.fromFile("/:URL")
    try file.getLines.mkString("\n") finally file.close()
  }

  override def handle(request: HttpServletRequest, response: HttpServletResponse): Unit ={
    val file = buildFile
  }*/


  def buildFile(urlS: String): Future[String] = Future {
    val file = Source.fromFile("C:/tmp/" + urlS)
    try file.getLines.mkString("\n") finally file.close()
  }


  /*def funcFile(urlPath: String): String = {
    val file = Source.fromFile(params(urlPath))
    try{
      file.getLines.mkString("/n")
    }catch(Not)
  }*/
  get("/:URL") {
    contentType = "text/html"
    val s = Await.ready(buildFile(params("URL")), Duration.Inf).value.get

    val foo = s match {
      case Success(value) => value
      case Failure(exception) => s"<html><head><body>404 $exception</body></html>"
    }
    foo
  }
}
    /* var foo = ""
     futureCall onComplete{
       case Success(text) => return(text)
       foo = text
       case Failure(t) => log(s"Failed due to $t")

     }
  }
    get("/hello.html"){
    contentType = "html"
   "<html><body> " + params("hello.html") + "</body></html>"

  }*/


