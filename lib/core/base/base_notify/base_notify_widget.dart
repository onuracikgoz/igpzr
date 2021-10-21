
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:igpzr/init/locator.dart';
import 'package:igpzr/ui/reusable_widgets/text_widget/custom_content_text.dart';

import 'base_notify_store.dart';

class BaseNotifyWidget extends StatefulWidget {
  const BaseNotifyWidget({Key? key}) : super(key: key);

  @override
  _BaseNotifyWidgetState createState() => _BaseNotifyWidgetState();
}

class _BaseNotifyWidgetState extends State<BaseNotifyWidget> {
  @override
  Widget build(BuildContext context) {
    final svc = locator<NotifyStore>();
    return Observer(
      builder: (_) {
        if (svc.errorMessage != null) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: MaterialBanner(
              backgroundColor: svc.getNotifyTypeColor(),
              content: CustomContentText(text:svc.errorMessage ?? ""),
              //TODO: icon koyulavibilr leading: Text("data"),
              actions: [
                InkWell(
                  child: const CustomContentText(text: "Kapat"),
                  onTap: () {
                    svc.errorMessage = null;
                  },
                )
              ],
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
