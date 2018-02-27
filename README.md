Developed by Caetán Tojeiro Carpente (caetantojeiro95@gmail.com)

The file "mylistmodule.ml" contains the implementation of some Ocaml's function of the List module, with the correct error message and recursive type.

FUNCTIONS IMPLEMENTED:
- val hd : 'a list -> 'a
- val tl : 'a list -> 'a list
- val length : 'a list -> int
- val nth : 'a list -> int -> 'a
- val append : 'a list -> 'a list -> 'a list
- val rev : 'a list -> 'a list
- val rev_append : 'a list -> 'a list -> 'a list
- val concat : 'a list list -> 'a list
- val flatten : 'a list list -> 'a list
- val map : ('a -> 'b) -> 'a list -> 'b list
- val map2 : ('a -> 'b -> 'c) -> 'a list -> 'b list -> 'c list
- val fold_left : ('a -> 'b -> 'a) -> 'a -> 'b list -> 'a
- val fold_right : ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b
- val find : ('a -> bool) -> 'a list -> 'a
- val for_all : ('a -> bool) -> 'a list -> bool
- val exists : ('a -> bool) -> 'a list -> bool
- val mem : 'a -> 'a list -> bool
- val filter : ('a -> bool) -> 'a list -> 'a list
- val find_all : ('a -> bool) -> 'a list -> 'a list
- val partition : ('a -> bool) -> 'a list -> 'a list * 'a list
- val split : ('a * 'b) list -> 'a list * 'b list
- val combine : 'a list -> 'b list -> ('a * 'b) list


The file "mylistmodulePLUS.ml" contains the implementation of some Ocaml's function to work with list which are not developed in List module

FUNCTIONS IMPLEMENTED:
- remove: Delete first appearance, if exits, of the value in the list
		'a -> 'a list -> 'a list
		remove 3 [2; 6; 3; 4; 3] -> [2; 6; 4; 3]


- remove_all: Delete all appearances, if exits, of the value in the list
			'a -> 'a list -> 'a list
			remove 3 [2; 6; 3; 4; 3] -> [2; 6; 4]


- ldif: Delete all appearances, if exits, of l1 which appearances in l2
		'a list-> 'a list -> 'a list
		ldif [1;2;3;2;4] [2;3;3;5] -> [1;4]


- lprod: Calculate cartesian product between l1 and l2
		'a list -> 'b list -> ('a * 'b) list
		lprod [1;3;1;2] ['a';'b'] -> [(1,'a'); (1,'b'); (3,'a'); (3,'b'); (1,'a'); (1,'b'); (2,'a'); (2,'b')]
	

- divide: Divide l into a cartesian product, first with values which are in even positions and second with values in odd position
	'a list -> 'a list * 'a list
	divide ['a';'e';'i';'o';'u'] -> (['a';'i';'u'],['e';'o'])



**********************************************************************

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

**********************************************************************
