object X42 {
  def main(args: Array[String]) = {
    if (args.length > 0 && args(0) == "42") {
      throw new Exception("It depends!")
    }
    println("What is the meaning of life?")
  }
}
