import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:github_sign_in/github_sign_in.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'package:github_signin_promax/github_signin_promax.dart';
// import 'package:meta/meta.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await GoogleSignIn().signIn();
      if (googleSignInAccount == null) {
        // User canceled the sign-in process
        debugPrint("User canceled the signin process.");
        return null;
      }
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
      );
      final UserCredential authResult =
          await _auth.signInWithCredential(credential);
      debugPrint('User: ${authResult.user?.email}');
      return authResult.user;
    } catch (error) {
      debugPrint("Error signing in with Google: $error");
      // print('catch at auth_repository');
      return null;
    }
  }

  Future<User?> signInWithFacebook() async {
    try {
      final result = await FacebookAuth.instance.login();
      if (result.status == LoginStatus.success) {
        final credential =
            FacebookAuthProvider.credential(result.accessToken!.tokenString);
        final UserCredential authResult =
            await FirebaseAuth.instance.signInWithCredential(credential);
        debugPrint("Facebook login success: ${authResult.user?.displayName}");
        return authResult.user;
      } else {
        debugPrint("Facebook login failed: ${result.message}");
        return null;
      }
    } catch (error) {
      debugPrint("Error signing in with Facebook: $error");
      return null;
    }
  }

  // signInWithGithub({required BuildContext context}) {
  //   // create required params
  //   var params = GithubSignInParams(
  //     clientId: 'Ov23liu1dwU9Fcp9lAi8',
  //     clientSecret: '359e4ca40bac1e51ee9658e7d5f9cb858213fc6f',
  //     redirectUrl: 'https://bloc-ecommerce-555.firebaseapp.com/__/auth/handler',
  //     scopes: 'read:user,user:email',
  //   );

  //   // Push [GithubSigninScreen] to perform login then get the [GithubSignInResponse]
  //   Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
  //     return GithubSigninScreen(
  //       params: params,
  //       headerColor: Colors.green,
  //       title: 'Login with github',
  //     );
  //   })).then((value) {
  //     // TOTO: handle the response value as a GithubSignInResponse instance
  //   });
  // }
  // Future<User?> signInWithGithub() async {
  //   // ignore: unused_element
  //   Future<UserCredential> signInWithGitHub(BuildContext context) async {
  //     // Create a GitHubSignIn instance
  //     final GitHubSignIn gitHubSignIn = GitHubSignIn(
  //         clientId: 'Ov23liu1dwU9Fcp9lAi8',
  //         clientSecret: '359e4ca40bac1e51ee9658e7d5f9cb858213fc6f',
  //         redirectUrl: 'https://my-project.firebaseapp.com/__/auth/handler');

  //     // Trigger the sign-in flow
  //     final result = await gitHubSignIn.signIn(context);

  //     // Create a credential from the access token
  //     final githubAuthCredential =
  //         GithubAuthProvider.credential(result.token.toString());

  //     // Once signed in, return the UserCredential
  //     return await FirebaseAuth.instance
  //         .signInWithCredential(githubAuthCredential);
  //   }

  //   return null;
  // }
}
