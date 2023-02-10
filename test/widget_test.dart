import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test_tutorial/util_model.dart';

void main() {
  group("Value testing passed", () {
    test("myNumber's initial value", () {
      Utils myUtils = Utils();
      expect(myUtils.myNumber, 100);
    });

    test("Base Url is Empty", () {
      Utils myUtils = Utils();
      expect(myUtils.baseUrl.isEmpty, false);
    });
  });

  group("Methods testing", () {
    test("isMaxNew method testing", () {
      Utils myUtils = Utils();
      expect(myUtils.isMaxNew(50, 10, 0, false), true);
    });

    test("string equality testing", () {
      Utils myUtils = Utils();
      expect(myUtils.stringEquals("Odil bek", "Odilbek"), true);
    });

    test("Test formatting", () {
      expect(Utils.format(1), "01");
      expect(Utils.format(11), "11");
      expect(Utils.format(3), "03");
    });

    test(
      "Card formatting test",
      () {
        Utils myUtils = Utils();
        expect(myUtils.returnCardFormatText("8600312997956567"),
            "8600 3129 9795 6567");
      },
    );
  });
}
