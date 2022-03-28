
type 'a t = {mutable x: 'a}
let[@inline] make x = {x}
let[@inline] get {x} = x
let[@inline] set r x = r.x <- x

let[@inline never] exchange r x =
  (* critical section *)
  let y = r.x in
  r.x <- x;
  (* end critical section *)
  y

let[@inline never] compare_and_set r seen v =
  (* critical section *)
  if r.x == seen then (
    r.x <- v;
    (* end critical section *)
    true
  ) else false

let[@inline never] fetch_and_add r x =
  (* critical section *)
  let v = r.x in
  r.x <- x + r.x;
  (* end critical section *)
  v

let[@inline never] incr r =
  (* critical section *)
  r.x <- 1 + r.x
  (* end critical section *)

let[@inline never] decr r =
  (* critical section *)
  r.x <- r.x - 1
  (* end critical section *)
