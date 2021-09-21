import 'edge_felix_video_timeline.dart';
import 'edge_follow.dart';
import 'edge_followed_by.dart';
import 'edge_media_collections.dart';
import 'edge_mutual_followed_by.dart';
import 'edge_owner_to_timeline_media.dart';
import 'edge_related_profiles.dart';
import 'edge_saved_media.dart';

class User {
  String? biography;
  bool? blockedByViewer;
  dynamic restrictedByViewer;
  bool? countryBlock;
  String? externalUrl;
  String? externalUrlLinkshimmed;
  EdgeFollowedBy? edgeFollowedBy;
  String? fbid;
  bool? followedByViewer;
  EdgeFollow? edgeFollow;
  bool? followsViewer;
  String? fullName;
  bool? hasArEffects;
  bool? hasClips;
  bool? hasGuides;
  bool? hasChannel;
  bool? hasBlockedViewer;
  int? highlightReelCount;
  bool? hasRequestedViewer;
  bool? hideLikeAndViewCounts;
  String? id;
  bool? isBusinessAccount;
  bool? isProfessionalAccount;
  bool? isJoinedRecently;
  dynamic businessAddressJson;
  dynamic businessContactMethod;
  dynamic businessEmail;
  dynamic businessPhoneNumber;
  String? businessCategoryName;
  dynamic overallCategoryName;
  String? categoryEnum;
  String? categoryName;
  bool? isPrivate;
  bool? isVerified;
  EdgeMutualFollowedBy? edgeMutualFollowedBy;
  String? profilePicUrl;
  String? profilePicUrlHd;
  bool? requestedByViewer;
  bool? shouldShowCategory;
  bool? shouldShowPublicContacts;
  String? username;
  dynamic connectedFbPage;
  List<dynamic>? pronouns;
  EdgeFelixVideoTimeline? edgeFelixVideoTimeline;
  EdgeOwnerToTimelineMedia? edgeOwnerToTimelineMedia;
  EdgeSavedMedia? edgeSavedMedia;
  EdgeMediaCollections? edgeMediaCollections;
  EdgeRelatedProfiles? edgeRelatedProfiles;

  User({
    this.biography,
    this.blockedByViewer,
    this.restrictedByViewer,
    this.countryBlock,
    this.externalUrl,
    this.externalUrlLinkshimmed,
    this.edgeFollowedBy,
    this.fbid,
    this.followedByViewer,
    this.edgeFollow,
    this.followsViewer,
    this.fullName,
    this.hasArEffects,
    this.hasClips,
    this.hasGuides,
    this.hasChannel,
    this.hasBlockedViewer,
    this.highlightReelCount,
    this.hasRequestedViewer,
    this.hideLikeAndViewCounts,
    this.id,
    this.isBusinessAccount,
    this.isProfessionalAccount,
    this.isJoinedRecently,
    this.businessAddressJson,
    this.businessContactMethod,
    this.businessEmail,
    this.businessPhoneNumber,
    this.businessCategoryName,
    this.overallCategoryName,
    this.categoryEnum,
    this.categoryName,
    this.isPrivate,
    this.isVerified,
    this.edgeMutualFollowedBy,
    this.profilePicUrl,
    this.profilePicUrlHd,
    this.requestedByViewer,
    this.shouldShowCategory,
    this.shouldShowPublicContacts,
    this.username,
    this.connectedFbPage,
    this.pronouns,
    this.edgeFelixVideoTimeline,
    this.edgeOwnerToTimelineMedia,
    this.edgeSavedMedia,
    this.edgeMediaCollections,
    this.edgeRelatedProfiles,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        biography: json['biography'] as String?,
        blockedByViewer: json['blocked_by_viewer'] as bool?,
        restrictedByViewer: json['restricted_by_viewer'],
        countryBlock: json['country_block'] as bool?,
        externalUrl: json['external_url'] as String?,
        externalUrlLinkshimmed: json['external_url_linkshimmed'] as String?,
        edgeFollowedBy: json['edge_followed_by'] == null
            ? null
            : EdgeFollowedBy.fromJson(
                json['edge_followed_by'] as Map<String, dynamic>),
        fbid: json['fbid'] as String?,
        followedByViewer: json['followed_by_viewer'] as bool?,
        edgeFollow: json['edge_follow'] == null
            ? null
            : EdgeFollow.fromJson(json['edge_follow'] as Map<String, dynamic>),
        followsViewer: json['follows_viewer'] as bool?,
        fullName: json['full_name'] as String?,
        hasArEffects: json['has_ar_effects'] as bool?,
        hasClips: json['has_clips'] as bool?,
        hasGuides: json['has_guides'] as bool?,
        hasChannel: json['has_channel'] as bool?,
        hasBlockedViewer: json['has_blocked_viewer'] as bool?,
        highlightReelCount: json['highlight_reel_count'] as int?,
        hasRequestedViewer: json['has_requested_viewer'] as bool?,
        hideLikeAndViewCounts: json['hide_like_and_view_counts'] as bool?,
        id: json['id'] as String?,
        isBusinessAccount: json['is_business_account'] as bool?,
        isProfessionalAccount: json['is_professional_account'] as bool?,
        isJoinedRecently: json['is_joined_recently'] as bool?,
        businessAddressJson: json['business_address_json'],
        businessContactMethod: json['business_contact_method'],
        businessEmail: json['business_email'],
        businessPhoneNumber: json['business_phone_number'],
        businessCategoryName: json['business_category_name'] as String?,
        overallCategoryName: json['overall_category_name'],
        categoryEnum: json['category_enum'] as String?,
        categoryName: json['category_name'] as String?,
        isPrivate: json['is_private'] as bool?,
        isVerified: json['is_verified'] as bool?,
        edgeMutualFollowedBy: json['edge_mutual_followed_by'] == null
            ? null
            : EdgeMutualFollowedBy.fromJson(
                json['edge_mutual_followed_by'] as Map<String, dynamic>),
        profilePicUrl: json['profile_pic_url'] as String?,
        profilePicUrlHd: json['profile_pic_url_hd'] as String?,
        requestedByViewer: json['requested_by_viewer'] as bool?,
        shouldShowCategory: json['should_show_category'] as bool?,
        shouldShowPublicContacts: json['should_show_public_contacts'] as bool?,
        username: json['username'] as String?,
        connectedFbPage: json['connected_fb_page'],
        pronouns: json['pronouns'] as List<dynamic>?,
        edgeFelixVideoTimeline: json['edge_felix_video_timeline'] == null
            ? null
            : EdgeFelixVideoTimeline.fromJson(
                json['edge_felix_video_timeline'] as Map<String, dynamic>),
        edgeOwnerToTimelineMedia: json['edge_owner_to_timeline_media'] == null
            ? null
            : EdgeOwnerToTimelineMedia.fromJson(
                json['edge_owner_to_timeline_media'] as Map<String, dynamic>),
        edgeSavedMedia: json['edge_saved_media'] == null
            ? null
            : EdgeSavedMedia.fromJson(
                json['edge_saved_media'] as Map<String, dynamic>),
        edgeMediaCollections: json['edge_media_collections'] == null
            ? null
            : EdgeMediaCollections.fromJson(
                json['edge_media_collections'] as Map<String, dynamic>),
        edgeRelatedProfiles: json['edge_related_profiles'] == null
            ? null
            : EdgeRelatedProfiles.fromJson(
                json['edge_related_profiles'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'biography': biography,
        'blocked_by_viewer': blockedByViewer,
        'restricted_by_viewer': restrictedByViewer,
        'country_block': countryBlock,
        'external_url': externalUrl,
        'external_url_linkshimmed': externalUrlLinkshimmed,
        'edge_followed_by': edgeFollowedBy?.toJson(),
        'fbid': fbid,
        'followed_by_viewer': followedByViewer,
        'edge_follow': edgeFollow?.toJson(),
        'follows_viewer': followsViewer,
        'full_name': fullName,
        'has_ar_effects': hasArEffects,
        'has_clips': hasClips,
        'has_guides': hasGuides,
        'has_channel': hasChannel,
        'has_blocked_viewer': hasBlockedViewer,
        'highlight_reel_count': highlightReelCount,
        'has_requested_viewer': hasRequestedViewer,
        'hide_like_and_view_counts': hideLikeAndViewCounts,
        'id': id,
        'is_business_account': isBusinessAccount,
        'is_professional_account': isProfessionalAccount,
        'is_joined_recently': isJoinedRecently,
        'business_address_json': businessAddressJson,
        'business_contact_method': businessContactMethod,
        'business_email': businessEmail,
        'business_phone_number': businessPhoneNumber,
        'business_category_name': businessCategoryName,
        'overall_category_name': overallCategoryName,
        'category_enum': categoryEnum,
        'category_name': categoryName,
        'is_private': isPrivate,
        'is_verified': isVerified,
        'edge_mutual_followed_by': edgeMutualFollowedBy?.toJson(),
        'profile_pic_url': profilePicUrl,
        'profile_pic_url_hd': profilePicUrlHd,
        'requested_by_viewer': requestedByViewer,
        'should_show_category': shouldShowCategory,
        'should_show_public_contacts': shouldShowPublicContacts,
        'username': username,
        'connected_fb_page': connectedFbPage,
        'pronouns': pronouns,
        'edge_felix_video_timeline': edgeFelixVideoTimeline?.toJson(),
        'edge_owner_to_timeline_media': edgeOwnerToTimelineMedia?.toJson(),
        'edge_saved_media': edgeSavedMedia?.toJson(),
        'edge_media_collections': edgeMediaCollections?.toJson(),
        'edge_related_profiles': edgeRelatedProfiles?.toJson(),
      };
}
