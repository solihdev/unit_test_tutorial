import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test_tutorial/util_model.dart';

void main() {
  Utils myUtils = Utils();

  group("Value testing passed", () {
    test("myNumber's initial value equals to 100", () {
      expect(myUtils.myNumber, 100);
    });

    test("Base Url is Not Empty", () {
      expect(myUtils.baseUrl.isEmpty, false);
    });
  });

  group("Methods testing", () {

    test("isMaxNew method testing", () {
        expect(myUtils.isMaxNew(50, 10, 0, false), true);
    });

    test("string equality testing", () {
      expect(myUtils.stringEquals("Odil bek", "Odilbek"), true);
    });

    group('Group test formatting', () {
      test("Test formatting", () {
        expect(Utils.format(1), "01");
      });
      test('Test formatting 2', (){
        expect(Utils.format(11), "11");
      });
      test('Test formatting 3', (){
        expect(Utils.format(3), "03");
      });
    });
    test(
      "Card formatting test",
      () {
        expect(myUtils.returnCardFormatText("8600312997956567"),
            "8600 3129 9795 6567");
      },
    );
  });
}
