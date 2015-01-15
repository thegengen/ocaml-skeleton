open Batteries
open OUnit2

let test_hello test_ctxt =
  assert_equal ~printer:String.quote "Hello World" (Hello.hello "World")

let suite =
  "suite">:::
    ["test_hello">:: test_hello]

let () =
  run_test_tt_main suite
