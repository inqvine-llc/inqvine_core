# inqvine_core_main

Basic tooling used through all projects.

## Extensions

### Design extensions

Contains Design and Widget extensions on [Color] and [double]
*) calculateTextForegroundColor (Returns black or white depending on the color supplied)

*) asRadiusCircular (Converts a double to a border radius)
*) asBorderRadiusCircular (Converts a double to a circular border radius)

*) asHeightWidget (Converts a double to a height based SizedBox)
*) asWidthWidget (Converts a double to a width based SizedBox)

Padding Extensions from doubles
*) asPaddingAll
*) asPaddingT
*) asPaddingTB
*) asPaddingB
*) asPaddingLTR
*) asPaddingLBR
*) asPaddingLR
*) asPaddingL
*) asPaddingR

### Crypto extensions

Cryptography and algorthimic functions built on the crypto package.
*) toUtf8
*) toSha1

### DateTime extensions

A number of built in extensions for the [DateTime] object built on top of Jiffy.  
*) asSecondsEpoch (Convert to seconds since epoch)
*) hhmmadoMMMMyyyy (Format as hhmmadoMMMMyyyy)
*) hhmma (Format as hhmma)
*) ddMMyyyy (Format as ddMMyyyy)
*) diffYearsFromCurrent
*) diffMonthsFromCurrent
*) diffFromCurrent
*) toJiffy
This package contains a variety of basic, commonly used utility extensions (and classes?/functions? etc).

### Context Extensions
Contains extensions on [BuildContext] for faster tidier use of MediaQueryData functions

### Number Extensions
Contains extensions on [double] and [int] for converting to and from meters, feet, and inches

### String Extensions
Contains extensions on [String] for logging events, errors, and general information

### Timestamp Extensions
