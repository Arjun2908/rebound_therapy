import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ReboundTherapyFirebaseUser {
  ReboundTherapyFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ReboundTherapyFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ReboundTherapyFirebaseUser> reboundTherapyFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ReboundTherapyFirebaseUser>(
      (user) {
        currentUser = ReboundTherapyFirebaseUser(user);
        return currentUser!;
      },
    );
