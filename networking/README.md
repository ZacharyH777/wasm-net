# Wit and Cross Language Support

## Networking
This example showcases a way to get cross language support through wit. 
In this instance all of the wasm components are created in rust.

What this means is that, some of the features that rust uses like bincode and 
lz4-flex compression can now work (with a little bit of ovrehead) on languages 
like go.

I choose this because I thought it would be a good showcase for how we can give
other languages like go and python some embbeded tooling without having to
create completely new bindings form scratch, like libraries have to do.

While I do not have examples quite yet, I will be showcasing a python and go
implementation of client that can still talk to and work with the rust server.

Very little of which will be done through python and go and instead a lot of it
will be done via the webassembly.

As of right now I found it better to connect to the server through the
host (native language). 

but building the server within wasm and using components to translate that
data to a cross language abstraction. Would be the ideal outcome eventually.