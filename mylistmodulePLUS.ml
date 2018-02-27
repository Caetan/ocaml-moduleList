

(***********************************************************************


	Developed by Caetán Tojeiro Carpente (caetantojeiro95@gmail.com)
	


Copyright (C) 2017  Caetán Tojeiro Carpente

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/agpl-3.0.html>



************************************************************************)



(*----------------------------------------*)

(*------------AUX FUNCTIONS-------------*)

let hd l = match l with
| h::_ -> h
| [] -> raise (Failure "hd");;


let tl l = match l with
| _::t-> t
| [] -> raise (Failure "tl");;


let rev l =
	let rec aux l a = match l with
	  [] -> a
	| h::t -> aux t (h::a)
  in aux l [];;

(*----------------------------------------*)


(*Delete first appearance, if exits, of the value in the list*)
(*'a -> 'a list -> 'a list*)
(*remove 3 [2; 6; 3; 4; 3] -> [2; 6; 4; 3]*)
let rec remove a l = match l with 
  [] -> l
| h::t -> if (a==h) then t
	  else h::(remove a t);;


(*Delete all appearances, if exits, of the value in the list*)
(*'a -> 'a list -> 'a list*)
(*remove 3 [2; 6; 3; 4; 3] -> [2; 6; 4]*)
let rec remove_all a l = match l with
	[] -> []
| h::t -> if (a==h) then (remove_all a t)
	  else h::(remove_all a t);;


(*Delete all appearances, if exits, of l1 which appearances in l2*)
(*'a list-> 'a list -> 'a list*)
(*ldif [1;2;3;2;4] [2;3;3;5] -> [1;4]*)
let rec ldif l1 l2 = match (l1,l2) with
  h1::t1, h2::t2 -> ldif (remove_all h2 l1) t2
| _ -> l1;;


(*Calculate cartesian product between l1 and l2*)
(*'a list -> 'b list -> ('a * 'b) list*)
(*lprod [1;3;1;2] ['a';'b'] -> [(1,'a'); (1,'b'); (3,'a'); (3,'b'); (1,'a'); (1,'b'); (2,'a'); (2,'b')]*)
let lprod l1 l2 =	
	let rec aux acc = function
		  [],_ -> List.rev acc
		| _::t1,[] -> aux acc (t1,l2)
		| h1::t1,h2::t2 -> aux ((h1,h2)::acc) (h1::t1,t2)
	in aux [] (l1,l2);;


(*Divide l into a cartesian product, first with values which are in even positions and second with values in odd position*)
(*'a list -> 'a list * 'a list*)
(*divide ['a';'e';'i';'o';'u'] -> (['a';'i';'u'],['e';'o'])*)
let divide l =
  let rec aux acc acc2 = function
					  [h] -> (rev (h::acc), rev acc2)
					| [] -> (rev acc, rev acc2)
					| h::t -> aux (h::acc) (hd t::acc2) (tl t)
				in aux [] [] l;;
