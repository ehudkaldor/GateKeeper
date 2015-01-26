name := """gatekeeper"""

version := "1.0-SNAPSHOT"

lazy val root = (project in file(".")).enablePlugins(PlayScala)

scalaVersion := "2.11.1"

CoffeeScriptKeys.bare := true

libraryDependencies ++= Seq(
  jdbc,
  "com.h2database" % "h2" % "1.4.180",
  "com.github.aselab" %% "scala-activerecord" % "0.3.0",
  "com.github.aselab" %% "scala-activerecord-play2" % "0.3.0",
  "com.github.aselab" %% "scala-activerecord-specs" % "0.3.0" % "test"
)

// emberJsVersion := "1.10.0"
