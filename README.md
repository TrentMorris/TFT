Thor For Trent (TFT)
This is a command line tool that can be used to create directories and view some stats. Feel free to add to it!

Thor can be installed on Ubuntu as sudo apt-get install ruby-thor . This will install thor and what this TFT runs on. Now we can do the command thor list which shows all the files that end with .thor extension. 

thor list
git
---
thor git:stats  # shows some stats about the github repo you are currently in

sbt
---
thor sbt:template  # takes single parameter creates a sbt folder with that ...




These are our available commands for thor. If we want to be able to use these commands anywhere we need to install them. Do thor install git.sbt and accept the first prompt. After that enter a name for it to be stored as. You can use these commands anywhere now. Now that we have our commands installed we can do thor git:stats and that will show some github stats about the repository you are currently in. thor sbt:template will create a new folder named by your parameter and has some basic Scala, Akka, and Sbt settings.

Examples:
	$ thor git:stats
     23 .gitignore
     14 build.sbt
     23 src/main/scala/Actors/GameActor.scala
     43 src/main/scala/Actors/MasterActor.scala
     28 src/main/scala/Actors/WeekActor.scala
     287 src/main/scala/Functions/StatisticalMethods.scala
     42 src/main/scala/Functions/WeekIndexes.scala
     67 src/main/scala/Functions/WinnerCalculator.scala
     30 src/main/scala/GeneticAlgorithm/Chromosome.scala
     75 src/main/scala/GeneticAlgorithm/GeneticAlgorithmFunctions.scala
     15 src/main/scala/GeneticAlgorithm/Population.scala
     76 src/main/scala/main.scala
     43 src/test/scala/Actors/actorSpec.scala
     88 src/test/scala/GeneticAlgorithmFunctionsSpec.scala
     241 src/test/scala/StatisticalMethodsSpec.scala
     40 src/test/scala/WinnerCalculatorSpec.scala
  19032 total

That's it! Easy to add

