import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fusion_app_store/app/store/domain/entity/user_entity.dart';
import 'package:fusion_app_store/app/store/domain/repository/store_repository.dart';
import 'package:fusion_app_store/constants/db_keys.dart';
import 'package:fusion_app_store/core/database/database.dart';
import 'package:fusion_app_store/main_common.dart';
import 'package:get/get.dart';

class StoreRepositoryImpl extends StoreRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FusionDatabase _database = Get.find<FusionDatabase>();

  @override
  Future<void> fetchUsers() async {
    var snapshot = await _firestore.collection('users').get();
    var users = snapshot.docs;
    var futures = <Future>[];
    for (var user in users) {
      futures.add(
          _database.addUser(userEntity: UserEntity.fromMap(data: user.data())));
    }
    await Future.wait(futures);
  }

  @override
  void listenUsers() {
    _firestore
        .collection('users')
        .where(DBKeys.joinedAtKey, isGreaterThan: sessionStartTime)
        .snapshots()
        .listen((snapshot) async {
      var users = snapshot.docs;
      var futures = <Future>[];
      for (var user in users) {
        futures.add(_database.addUser(
            userEntity: UserEntity.fromMap(data: user.data())));
      }
      await Future.wait(futures);
    });
  }
}
