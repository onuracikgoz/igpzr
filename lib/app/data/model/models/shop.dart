import 'graphql.dart';

class Shop {
  String? loggingPageId;
  bool? showSuggestedProfiles;
  bool? showFollowDialog;
  Graphql? graphql;
  dynamic toastContentOnLoad;
  bool? showViewShop;
  dynamic profilePicEditSyncProps;
  bool? alwaysShowMessageButtonToProAccount;

  Shop({
    this.loggingPageId,
    this.showSuggestedProfiles,
    this.showFollowDialog,
    this.graphql,
    this.toastContentOnLoad,
    this.showViewShop,
    this.profilePicEditSyncProps,
    this.alwaysShowMessageButtonToProAccount,
  });

  factory Shop.fromJson(Map<String, dynamic> json) => Shop(
        loggingPageId: json['logging_page_id'] as String?,
        showSuggestedProfiles: json['show_suggested_profiles'] as bool?,
        showFollowDialog: json['show_follow_dialog'] as bool?,
        graphql: json['graphql'] == null
            ? null
            : Graphql.fromJson(json['graphql'] as Map<String, dynamic>),
        toastContentOnLoad: json['toast_content_on_load'],
        showViewShop: json['show_view_shop'] as bool?,
        profilePicEditSyncProps: json['profile_pic_edit_sync_props'],
        alwaysShowMessageButtonToProAccount:
            json['always_show_message_button_to_pro_account'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'logging_page_id': loggingPageId,
        'show_suggested_profiles': showSuggestedProfiles,
        'show_follow_dialog': showFollowDialog,
        'graphql': graphql?.toJson(),
        'toast_content_on_load': toastContentOnLoad,
        'show_view_shop': showViewShop,
        'profile_pic_edit_sync_props': profilePicEditSyncProps,
        'always_show_message_button_to_pro_account':
            alwaysShowMessageButtonToProAccount,
      };
}
