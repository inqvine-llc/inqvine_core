## [1.2.1] - Added opacity parameter to inqVine TapHandler

## [1.2.0] - Add did pop and push callbacks
* Two new callbacks added to lifecycle hook

## [1.1.2] - Minor fixes
* Fix asSecondsEpoch returning the wrong time
* Store handleAction error callback in view model
* Update dependencies

## [1.1.1] - Riverpod migration

* Update view model references to RP 1.0.1
* Bump Firebase dependencies
* Fix exports for Riverpod dependencies

## [1.0.1] - Bump dependencies

* Update all dependencies

## [1.0.0] - Bump dependencies

* Update all dependencies to full null-safety variants

## [0.0.12-nullsafety.0] - Add System Service into Firebase Core

* Handle automatically preventing using of the application with downtimeBuilder and applicationStatus

## [0.0.11-nullsafety.0] - Add UI package

* Common UI helpers in inqvine_core_ui

## [0.0.10-nullsafety.0] - Remove beamer

* Remove beamer in favour of router per project

## [0.0.9-nullsafety.0] - Fix locator misuse

* Register Firebase services correctly inside locator

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
