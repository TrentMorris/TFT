#!/usr/bin/env ruby
require 'fileutils'

dirName = ARGV[0]

FileUtils::mkdir_p dirName + '/src/main/scala'
FileUtils::mkdir_p dirName + '/src/test/scala'
FileUtils::mkdir_p dirName + '/project'
buildFile = File.new(dirName + "/build.sbt", "w")
buildFile.puts(%Q[name := "#{dirName}"

version:= "1.0"

resolvers += "Typesafe Repository" at "http://repo.typesafe.com/typesafe/releases/"

scalaVersion := "2.9.2"

libraryDependencies ++= Seq(
	"org.specs2" %% "specs2" % "1.12.4.1" % "test",
	"com.typesafe.akka" % "akka-actor"        % "2.0.3" withSources,
  	"com.typesafe.akka" % "akka-testkit"      % "2.0.3" % "test" withSources)

resolvers ++= Seq("snapshots", "releases").map(Resolver.sonatypeRepo)])
buildFile.close
gitIgnore = File.new(dirName + "/.gitignore", "w")
gitIgnore.puts("*.class
*.#*
*#
*~
*.lic
.idea/
lib_managed/
fetch.iml
target/
project/plugins/src_managed/
project/boot/
project/plugins/target/
project/plugins/project/
project/plugins/lib_managed/
project/build/target/
out/
logs/
*.csv
*.iml
*.swp
*.iws
*.ipr
*.classpath
*.project")
gitIgnore.close


# require 'fileutils'
#  
#  class Bub::Sbt < Thor
#  	 include Thor::Actions
#  
#  	desc "template", "creates a sbt folder with akka and specs2 depenedency"
#  	def template(dictName)
#  		FileUtils::mkdir_p dictName + '/src/main/scala'
#  	FileUtils::mkdir_p dictName + '/src/test/scala'
#  		FileUtils::mkdir_p dictName + '/project'
#  		buildFile = File.new(dictName + "/build.sbt", "w")
#  		buildFile.puts(%Q[name := "#{dictName}"
#  
#  version:= "1.0"