### `inqvine_core_firebase`

Seemless integration with common Firebase services.

#### Platform Support

| Android | iOS | MacOS | Web | Windows | Linux |
|:-------:|:---:|:-----:|:---:|:-------:|:-----:|
|    ✔️    |  ✔️  |   ✔️   |  ✔️  |     |     |

#### Getting Started

First, follow the tutorial here to configure you project to use Firebase.  
https://codelabs.developers.google.com/codelabs/flutter-firebase#0  


Next, in your [main.dart] after calling [inqvine.registerInqvineServices], call [inqvineFirebase.registerInqvineFirebaseServices] to register all services in your locator.

#### Configuration

*) To use [InqvineAuthService.loginWithEmailAndPassword], you will have to enable this auth provider in Firebase.  
*) To use [InqvineAdminService], you will need to enable `cloud_firestore` and create a document with a users `uid` in a collection called `admin_users`

##### Inqvine Admin Service Rules

To enable the [InqvineAdminService], add the following to your `firestore.rules` file.

```
function isAdminUser() {
    return isLoggedIn() && exists(/databases/$(database)/documents/admin_users/$(request.auth.uid));
}

match /admin_users/{document} {
    allow read: if isAdminUser() || request.resource.data.name == request.auth.uid;
    allow write: if false;
}

```

#### Inqvine Auth Service

*) logout (Disconnect from Firebase and set the current user to null)
*) loginWithEmailAndPassword (Authenticate a user using their email and password)
*) signUpWithEmailPassword (Create a user using their email and password)

#### Inqvine Admin Service

*) isAdmin (Whether or not a record for the user exists in the `admin_user` collection)