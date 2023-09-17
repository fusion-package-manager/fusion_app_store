// Import the necessary library for the AppEntity class.
import 'dart:convert';

import 'package:fusion_app_store/app/store/domain/entity/app_entity.dart';
import 'package:fusion_app_store/constants/db_keys.dart';

// Define a UserEntity class to represent user information.
class UserEntity {
  // Define instance variables to store user data.
  final String username; // User's username.
  final String description; // User's description or bio.
  final bool active; // Indicates whether the user is active.
  final Set<String> likedApps; // A set of app IDs that the user has liked.
  final Set<AppEntity>
      ownedApps; // A set of AppEntity objects representing apps owned by the user.
  final int reputation; // User's reputation score.
  final int strikes; // The number of strikes against the user.
  final DateTime joinedAt; // The time when the user joined Fusion.

  // Constructor to initialize a UserEntity object.
  UserEntity({
    required this.username,
    required this.description,
    required this.active,
    required this.likedApps,
    required this.ownedApps,
    required this.reputation,
    required this.strikes,
    required this.joinedAt,
  });

  UserEntity.fromMap({required Map<String, dynamic> data})
      : username = data[DBKeys.usernameKey],
        description = data[DBKeys.descriptionKey],
        active = data[DBKeys.activeKey],
        likedApps = decodeLikedApps(data[DBKeys.likedAppsKey]),
        ownedApps = decodeOwnedApps(data[DBKeys.ownedAppsKey]),
        reputation = data[DBKeys.reputationKey],
        strikes = data[DBKeys.strikesKey],
        joinedAt = data[DBKeys.joinedAtKey];

  @override
  bool operator ==(Object other) {
    if (other.runtimeType == UserEntity) {
      // Compare UserEntity objects by their usernames.
      return (other as UserEntity).username == username;
    }
    return super == other;
  }

  @override
  int get hashCode => super.hashCode + username.hashCode;

  String encodeLikedApps() {
    return jsonEncode(likedApps.toList());
  }

  static Set<String> decodeLikedApps(source) {
    return (jsonDecode(source) as List<String>).toSet();
  }

  String encodeOwnedApps() {
    return jsonEncode(ownedApps.toList());
  }

  static Set<AppEntity> decodeOwnedApps(source) {
    return (jsonDecode(source) as List<AppEntity>).toSet();
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      DBKeys.usernameKey: username,
      DBKeys.descriptionKey: description,
      DBKeys.activeKey: active,
      DBKeys.likedAppsKey: likedApps,
      DBKeys.ownedAppsKey: ownedApps,
      DBKeys.reputationKey: reputation,
      DBKeys.strikesKey: strikes,
      DBKeys.joinedAtKey: joinedAt,
    };
  }
}
