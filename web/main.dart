import 'package:angular2/core.dart';
import 'package:angular2/platform/browser.dart';
import 'package:angular2/platform/common.dart';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

import 'package:angular_quickstart/in_memory_data_service.dart';
import 'package:angular_quickstart/app_component.dart';

void main() {
  // Second parameter is from
  // http://stackoverflow.com/questions/41965060/dart-angular-2-pub-serve-404-on-page-reload
  // and supposed to fix the reloading issue for deep urls. Doesn't work though
  bootstrap(AppComponent, [
    provide(Client, useClass: InMemoryDataService),
//    for production use:
//    provide(BrowserClient, useFactory: () => new BrowserClient(), deps: []),
    provide(LocationStrategy, useClass: HashLocationStrategy)]);
}
