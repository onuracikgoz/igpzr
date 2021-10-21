
import 'package:igpzr/core/base/base_notify/base_notify_store.dart';
import 'package:igpzr/core/services/http_service.dart';
import 'package:igpzr/init/locator.dart';

class BaseRepository {
  //TODO: bu kodda iyileştirme yapılacak
  HttpService http = locator<HttpService>();
  NotifyStore notifyStore = locator<NotifyStore>();
  BaseRepository() {
    print("Base repo Init");
    http = locator<HttpService>();
    notifyStore = locator<NotifyStore>();
  }
}
