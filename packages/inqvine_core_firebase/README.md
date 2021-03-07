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

##### Configuration

To use [InqvineAuthService.loginWithEmailAndPassword], you will have to enable this auth provider in Firebase.