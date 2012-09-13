class Test {
  public static function main() {
    var conc = new Concrete();
    conc.display(conc.bar());
    conc.display(conc.foo());
  }
}

/**
 *  An altvernative method or "the abstract method"
 */
interface AbstractMethodI {
  public function foo():String;
  public function bar():String;
}

/**
 * An altvernative class or "the abstract class"
 */
class AbstractClass {
  private function new() {
    if (Type.getClassName(Type.getClass(this)) == "AbstractClass") {
      throw "No instantiation";
    }
  }

  public function display(message:String):Void {
    trace(message);
  }
}

/**
 * Concrete sub class
 */
class Concrete extends AbstractClass, implements AbstractMethodI {
  public function new() {
    super();
  }

  public function foo():String {
    return "Concrete.foo()";
  }

  public function bar():String {
    return "Concrete.bar()";
  }
}
