import 'package:ama/main.dart' as app;
import 'package:flutter_driver/driver_extension.dart';

void main() {

  enableFlutterDriverExtension();

  app.main(['../test_driver/testFile.json']);
}