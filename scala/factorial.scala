object Main extends App {
	def factorial(n: Int): Int = n match {
		case 0 => 1
		case _ => n * factorial(n - 1)
	}
	println(factorial(4))
}
