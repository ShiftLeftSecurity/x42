import java.lang.*;

public class X42 {
  public static void main(String[] args) throws Exception {
    if (args.length > 0 && args[0].equals("42")) {
      throw new Exception("It depends!");
    }
    System.out.println("What is the meaning of life?");
  }
}
