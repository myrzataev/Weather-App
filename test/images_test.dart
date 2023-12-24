import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:home_work3/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.ellipse1).existsSync(), isTrue);
    expect(File(Images.cloud1).existsSync(), isTrue);
    expect(File(Images.crescentMoon1).existsSync(), isTrue);
    expect(File(Images.moon).existsSync(), isTrue);
    expect(File(Images.rain1).existsSync(), isTrue);
    expect(File(Images.snowflake).existsSync(), isTrue);
    expect(File(Images.snowflake1).existsSync(), isTrue);
    expect(File(Images.snowflakefinal).existsSync(), isTrue);
    expect(File(Images.sun).existsSync(), isTrue);
    expect(File(Images.sun1).existsSync(), isTrue);
  });
}
