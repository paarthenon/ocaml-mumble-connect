(* Mumble connect *)
open Unix

(* function to handle the string creation and socket read. Uses TLS sockets *)
let sock_recv sock maxlen =
    let str = String.create maxlen in
    let recvlen = Ssl.read sock str 0 maxlen in
    String.sub str 0 recvlen

let () =
	Ssl.init ();
	let entry = (gethostbyname Sys.argv.(1)) in
	let addr = ADDR_INET (entry.h_addr_list.(0), 64738) in
	let sock = Ssl.open_connection Ssl.TLSv1 addr in
	let str = sock_recv sock 1024 in
	print_string str;
	print_endline "";
	let resp = Bitstring.bitstring_of_string str in
	Bitstring.hexdump_bitstring Pervasives.stdout resp