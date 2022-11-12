package edu.msudenver.cs.cs39ac

import org.scalatra._

class MyScalatraServlet extends ScalatraServlet {

  get("/") {
    views.html.hello()
  }

}
