import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<bool> isUsernameAvailable(String username) async {
    try {
      final querySnapshot = await _firestore
          .collection('users')
          .where('username', isEqualTo: username)
          .get();

      return querySnapshot.docs.isEmpty;
    } catch (e) {
      print('Error checking username availability: $e');
      return false;
    }
  }

  Future<bool> canChangeUsername(String userId) async {
    try {
      final documentSnapshot =
          await _firestore.collection('users').doc(userId).get();
      if (documentSnapshot.exists) {
        return !(documentSnapshot.data()?['isReview'] ?? false);
      } else {
        return false;
      }
    } catch (e) {
      print('Error checking if username can be changed: $e');
      return false;
    }
  }

  Future<void> updateUsername(String userId, String newUsername) async {
    try {
      await _firestore.collection('users').doc(userId).update({
        'username': newUsername,
      });
    } catch (e) {
      print('Error updating username: $e');
    }
  }
}
