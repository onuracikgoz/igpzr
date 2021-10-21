import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:igpzr/core/base/base_notify/base_notify_store.dart';
import 'package:igpzr/core/services/http_service.dart';
import 'package:igpzr/ui/modules/home_page/home_store.dart';
import 'package:igpzr/ui/modules/init_page/init_store.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerSingleton<HttpService>(HttpService());
  locator.registerSingleton<HomeStore>(HomeStore());
  locator.registerSingleton<NotifyStore>(NotifyStore());
  locator.registerSingleton<InitStore>(InitStore());

  await GetStorage.init();
  locator.registerSingleton<GetStorage>(GetStorage());

  //await initializeDateFormatting('tr', null);
}
