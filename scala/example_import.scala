// importを使うと名前空間の省略が可能になります

object Main extends App {
	// println(scala.io.StdIn.readLine)
	import scala.io.StdIn._
	println(readLine)
}
