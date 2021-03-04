# inqvine_core

A new Flutter package project.

## Compiling Proto

All the data classes are created and scoped using the protobuf templating language.  
This allows for easy use between different programming languages, as well as statically typed condition checks against the objects.  

Before you can compile, please follow the documentation at `https://developers.google.com/protocol-buffers/docs/darttutorial` to get protoc installed for your system.

Then run the following from the root of your project: `protoc --dart_out=grpc:lib -Ipb proto/*.proto --proto_path .`
