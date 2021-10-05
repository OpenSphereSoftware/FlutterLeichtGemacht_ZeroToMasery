import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo/domain/entities/id.dart';
import 'package:todo/domain/entities/user.dart';

extension FirebaseUserMapper on User {
  CustomUser toDomain() {
    return CustomUser(id: UniqueID.fromUniqueString(uid));
  }
}
