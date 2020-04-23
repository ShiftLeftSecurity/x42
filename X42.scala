object X42 {
  def main(args: Array[String]) = {
    if (args.length > 0 && args(0) == "42") {
      System.err.println("It depends!");
      System.exit(42);
    }
    System.out.println("What is the meaning of life?");
  }
}
