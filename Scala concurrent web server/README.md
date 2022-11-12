# CS39ACSpring2022Assignment03

You'll need to install SBT on your machine. Here are some instructions.
* https://www.scala-sbt.org/1.x/docs/Installing-sbt-on-Windows.html
* https://www.scala-sbt.org/1.x/docs/Installing-sbt-on-Mac.html
* https://www.scala-sbt.org/1.x/docs/Installing-sbt-on-Linux.html

This project was built with Scalatra (https://scalatra.org/) Here is how
this specific repo was built.

    MS200667 CS39ACSpring2022Assignment03  sbt new scalatra/scalatra.g8
    [info] welcome to sbt 1.6.2 (Homebrew Java 18)
    [info] loading settings for project global-plugins from idea.sbt ...
    [info] loading global plugins from /Users/stevebeaty/.sbt/1.0/plugins
    [info] set current project to new (in build file:/private/var/folders/jr/6dhz8k8j6cnddyzy9xkggjc80000gp/T/sbt_318efc9/new/)
    organization [com.example]: edu.msudenver.cs
    name [My Scalatra Web App]:
    version [0.1.0-SNAPSHOT]:
    servlet_name [MyScalatraServlet]:
    package [com.example.app]: edu.msudenver.cs.cs39ac
    scala_version [2.13.4]:
    sbt_version [1.4.5]:
    scalatra_version [2.8.2]:
    twirl_version [1.4.2]:
    xsbt_web_plugin_version [4.2.1]:
    jetty_version [9.4.35.v20201120]:

You'll need to set your JAVA\_HOME environment variable to refer to a Java
1.8 install. You'll be able to start a web servlet via sbt:

    MS200667 CS39ACSpring2022Assignment03  sbt
    [info] welcome to sbt 1.4.5 (Oracle Corporation Java 1.8.0_212)
    [info] loading settings for project global-plugins from idea.sbt ...
    [info] loading global plugins from /Users/stevebeaty/.sbt/1.0/plugins
    [info] loading settings for project cs39acspring2022assignment03-build from plugins.sbt ...
    [info] loading project definition from /Users/stevebeaty/src/CS39ACSpring2022Assignment03/project
    [info] loading settings for project hello from build.sbt ...
    [info] set current project to My Scalatra Web App (in build file:/Users/stevebeaty/src/CS39ACSpring2022Assignment03/)
    [info] sbt server started at local:///Users/stevebeaty/.sbt/1.0/server/37802fd9d145a1a76db5/sock
    [info] started sbt server
    sbt:My Scalatra Web App> ~jetty:start
    [info] starting server ...
    [success] Total time: 1 s, completed Apr 10, 2022 3:59:55 PM
    [info] 1. Monitoring source files for hello/jetty:start...
    [info]    Press <enter> to interrupt or '?' for more options.
    2022-04-10 15:59:55.568:INFO::main: Logging initialized @252ms to org.eclipse.jetty.util.log.StdErrLog
    WARNING: jetty-runner is deprecated.
             See Jetty Documentation for startup options
             https://www.eclipse.org/jetty/documentation/
    2022-04-10 15:59:55.578:INFO:oejr.Runner:main: Runner
    2022-04-10 15:59:55.731:INFO:oejs.Server:main: jetty-9.4.29.v20200521; built: 2020-05-21T17:20:40.598Z; git: 77c232aed8a45c818fd27232278d9f95a021095e; jvm 1.8.0_212-b10
    2022-04-10 15:59:55.994:WARN:oeja.AnnotationParser:main: Unrecognized ASM version, assuming ASM7
    2022-04-10 15:59:56.744:INFO:oeja.AnnotationConfiguration:main: Scanning elapsed time=749ms
    2022-04-10 15:59:57.124:INFO:oejs.session:main: DefaultSessionIdManager workerName=node0
    2022-04-10 15:59:57.124:INFO:oejs.session:main: No SessionScavenger set, using defaults
    2022-04-10 15:59:57.127:INFO:oejs.session:main: node0 Scavenging every 600000ms
    15:59:57.185 [main] INFO  o.scalatra.servlet.ScalatraListener - The cycle class name from the config: ScalatraBootstrap
    15:59:57.446 [main] INFO  o.scalatra.servlet.ScalatraListener - Initializing life cycle class: ScalatraBootstrap
    2022-04-10 15:59:57.599:INFO:oejsh.ContextHandler:main: Started o.e.j.w.WebAppContext@29444d75{/,file:///Users/stevebeaty/src/CS39ACSpring2022Assignment03/target/webapp/,AVAILABLE}{file:///Users/stevebeaty/src/CS39ACSpring2022Assignment03/target/webapp/}
    2022-04-10 15:59:57.622:INFO:oejs.AbstractConnector:main: Started ServerConnector@2a33fae0{HTTP/1.1, (http/1.1)}{0.0.0.0:8080}
    2022-04-10 15:59:57.626:INFO:oejs.Server:main: Started @2311ms

You should now be able to browse to http://localhost:8080/hello.html and
see:

    Request URL: hello.html

You need to modify
src/main/scala/edu/msudenver/cs/cs39ac/MyScalatraServlet.scala to return
the contents of a file using a Scala Future, similar to assignments 1 and 2.
For this assignment, there is no need to read the command line for port
number, directory, etc.

For more information on HTTP requests and responses see:
https://javadoc.io/doc/org.scalatra/scalatra-unidoc_2.13/2.8.0/org/scalatra/ScalatraServlet.html

###~jetty:start
###jetty:stop