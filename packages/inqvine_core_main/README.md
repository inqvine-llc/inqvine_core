### `inqvine_core_main`

Basic tooling used through all Inqvine projects.

#### Platform Support

| Android | iOS | MacOS | Web | Windows | Linux |
|:-------:|:---:|:-----:|:---:|:-------:|:-----:|
|    ✔️    |  ✔️  |   ✔️   |  ✔️  |  ✔️  |  ✔️  |

##### Getting Started

To get started using this package, perform the following actions:
1) Add `await inqvine.registerInqvineServices()` to your main.dart
2) Optionally register a `GlobalKey<NavigatorState>` to access context anywhere using `inqvine.setNavigationKey(key)`

##### Recommendations

Here are some packages included with core which we recommend using.  
This will allow parts of core to seamlessly integrate with your application.  

1) Beamer (https://pub.dev/packages/beamer)
Some parts of core may include route guards which can be integrated directly into your [BeamerRouterDelegate].

#### Inqvine Service

Think of this as a core place that all shared services can be accessed from.  
You can call `inqvine.` anywhere in your app to find what we support.

##### Methods

- setNavigationKey -> Set a navigator key, so that functions dependent on context can be used, and context can be obtained via `inqvine.context`
- publishEvent -> Send any object down an event bus. This is useful for view model to view model or service to service communication.
- getEventStream -> Listen on an event bus for objects passed down from `publishEvent`.
- resetLocator -> Reset the entire dependency injection container. Useful for testing.
- isRegisteredInLocator -> Check the dependency injection container for a registered service.
- getFromLocator -> Get a service or object from the dependency container.
- registerInLocator -> Register anything inside of the dependency injection container.
- registerService -> Registers a service extending `InqvineServiceBase` in the dependency injection container, and then initialize it.
- registerInqvineServices -> Registers all generic Inqvine services

##### Available Default Services

- `inqvine.logger` -> Configuration for the logger service based on extension methods in `string_extensions`

#### Extensions

##### Design extensions

Contains Design and Widget extensions on [Color] and [double]
- calculateTextForegroundColor (Returns black or white depending on the color supplied)

- asRadiusCircular (Converts a double to a border radius)
- asBorderRadiusCircular (Converts a double to a circular border radius)

- asHeightWidget (Converts a double to a height based SizedBox)
- asWidthWidget (Converts a double to a width based SizedBox)

Padding Extensions from doubles
- asPaddingAll
- asPaddingT
- asPaddingTB
- asPaddingB
- asPaddingLTR
- asPaddingLBR
- asPaddingLR
- asPaddingL
- asPaddingR

##### Crypto extensions

Cryptography and algorthimic functions built on the crypto package.
- toUtf8
- toSha1

##### DateTime extensions

A number of built in extensions for the [DateTime] object built on top of Jiffy.  
- asSecondsEpoch (Convert to seconds since epoch)
- hhmmadoMMMMyyyy (Format as hhmmadoMMMMyyyy)
- hhmma (Format as hhmma)
- ddMMyyyy (Format as ddMMyyyy)
- diffYearsFromCurrent
- diffMonthsFromCurrent
- diffFromCurrent
- toJiffy
This package contains a variety of basic, commonly used utility extensions (and classes?/functions? etc).

##### Context Extensions
Contains extensions on [BuildContext] for faster tidier use of MediaQueryData functions

##### Measurement Extensions
Contains extensions on [double] and [int] for converting to and from meters, feet, and inches

##### Bluetooth Extensions
Containts extensions for handling fields relating to [Bluetooth].  
For example, RSSI signal strength.

##### String Extensions
Contains extensions on [String] for logging events, errors, and general information

##### Timestamp Extensions