### `inqvine_core_simulate`

Extensions for DevicePreview to allow mocking of multiple pages and actions throughout an application

#### Platform Support

| Android | iOS | MacOS | Web | Windows | Linux |
|:-------:|:---:|:-----:|:---:|:-------:|:-----:|
|    ✔️    |  ✔️  |   ✔️   |  ✔️  |  ✔️  |  ✔️  |

##### Getting Started

1. Import `inqvine_core_simulate`
2. Wrap your view widget in `InqvineSimulatable` providing the required parameters
3. Follow the `DevicePreview` guide for setup
4. Add the `FakeActionPlugin` and `ViewSelectionPlugin` to the tools in `DevicePreview`

##### Adding actions

You can include actions in your fakes passed to `InqvineSimulatable`.  
These functions get passed to the simulator and are available on the right hand side panel.

##### View Selection

Inside the `ViewSelectionPlugin` implement the list of views to navigate to, and a function to navigate when required.  
You can use the navigation solution of your choice.