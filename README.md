# ocaml-mumble-connect
Simple TCP connection to a server.

This was mostly a test to see if I could get ocaml ssl working and have the mumble server recognize that someone is attempting to connect. Having successfully done so I'm most likely going to try to use protocol buffers in this instance instead of bitstring. Bitstring, while very cool, would force me to duplicate the effort of generating message structures and translation functions. Seems like a shame to do so when I could automatically generate them from mumble.proto.

