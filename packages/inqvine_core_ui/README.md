### `inqvine_core_ui`

Basic UI components used through all Inqvine projects.

#### Platform Support

| Android | iOS | MacOS | Web | Windows | Linux |
|:-------:|:---:|:-----:|:---:|:-------:|:-----:|
|    ✔️    |  ✔️  |   ✔️   |  ✔️  |  ✔️  |  ✔️  |

##### Getting Started

Just import `inqvine_core_ui`

##### Visibility Widgets

1) InqvineConditionalAutohide  
Given a boolean value, will auto fade in a widget

2) InqvineConditionalWidget  
Given a boolean value, will auto fade between two widgets


##### Handler Widgets

1) InqvineEnabledHandler   
Toggles a widget between a disabled state and blocks pointer actions

2) InqvineKeyboardAutohideHandler   
Mimics iOS behaviour and autohides the keyboard when a user taps inside of the widget

3) InqvineTapHandler  
Handles onTap events with an opacity animation/haptic on tap event