## [0.0.8-nullsafety.0] - Remove DeviceInfoPlus

* Remove DIP due to json issue with Android Info

## [0.0.7-nullsafety.0] - Additional functionality

* Expose beamer delegate if used in [InqvineServices], call `inqvine.router`
* Allow unfocusing of keyboards from view models. `baseViewModel.unfocusKeyboards()`

## [0.0.6-nullsafety.0] - Remove crashlytics support to enable Web

* Remove Crashlytics for now until web is available

## [0.0.5-nullsafety.0] - (InqvineCoreFirebase) InqvineAdminService

* Allow configuration of `admin_users` via a collection, and some firestore rules.

## [0.0.4-nullsafety.0] - Initial implementation of Inqvine Firebase Core

* Adds auth service. (Note: Only supports email and password login at the moment)
