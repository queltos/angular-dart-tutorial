import 'package:angular2/core.dart';
import 'package:angular2/platform/browser.dart';

import 'package:angular2/platform/common.dart';
import 'package:angular_quickstart/app_component.dart';

void main() {
  // Second parameter is from
  // http://stackoverflow.com/questions/41965060/dart-angular-2-pub-serve-404-on-page-reload
  // and supposed to fix the reloading issue for deep urls. Doesn't work though
  bootstrap(AppComponent, [
    provide(LocationStrategy, useClass: HashLocationStrategy)]);
}
