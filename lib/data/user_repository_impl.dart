import 'dart:ui';
import 'package:flutter_application_1/domain/entities/user_entity.dart';
import 'package:flutter_application_1/domain/repositories/user_repository.dart';
import 'package:get/get_instance/src/lifecycle.dart';
import 'package:get/get_state_manager/src/simple/list_notifier.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<UserEntity> getUser() async {
    // Lógica para obtener el usuario desde la fuente de datos
    throw UnimplementedError();
  }

  @override
  Future<void> saveUser(UserEntity user) async {
    // Lógica para guardar un usuario en la fuente de datos
    throw UnimplementedError();
  }

  @override
  void $configureLifeCycle() {
    // TODOs: implement $configureLifeCycle
  }

  @override
  Disposer addListener(GetStateUpdate listener) {
    // TODOs: implement addListener
    throw UnimplementedError();
  }

  @override
  Disposer addListenerId(Object? key, GetStateUpdate listener) {
    // TODOs: implement addListenerId
    throw UnimplementedError();
  }

  @override
  // ignore: non_constant_identifier_names
  create_user(UserEntity user) {
    // TODOs: implement create_user
    throw UnimplementedError();
  }

  @override
  void dispose() {
    // TODOs: implement dispose
  }

  @override
  void disposeId(Object id) {
    // TODOs: implement disposeId
  }

  @override
  // TODOs: implement hasListeners
  bool get hasListeners => throw UnimplementedError();

  @override
  // TODOs: implement initialized
  bool get initialized => throw UnimplementedError();

  @override
  // TODOs: implement isClosed
  bool get isClosed => throw UnimplementedError();

  @override
  // TODOs: implement listeners
  int get listeners => throw UnimplementedError();

  @override
  void notifyChildrens() {
    // TODOs: implement notifyChildrens
  }

  @override
  void onClose() {
    // TODOs: implement onClose
  }

  @override
  // TODOs: implement onDelete
  InternalFinalCallback<void> get onDelete => throw UnimplementedError();

  @override
  void onInit() {
    // TODOs: implement onInit
  }

  @override
  void onReady() {
    // TODOs: implement onReady
  }

  @override
  // TODOs: implement onStart
  InternalFinalCallback<void> get onStart => throw UnimplementedError();

  @override
  void refresh() {
    // TODOs: implement refresh
  }

  @override
  void refreshGroup(Object id) {
    // TODOs: implement refreshGroup
  }

  @override
  void removeListener(VoidCallback listener) {
    // TODOs: implement removeListener
  }

  @override
  void removeListenerId(Object id, VoidCallback listener) {
    // TODOs: implement removeListenerId
  }

  @override
  void update([List<Object>? ids, bool condition = true]) {
    // TODOs: implement update
  }
}
