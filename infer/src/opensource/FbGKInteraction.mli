(*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *)

module ConfigName : sig
  type t

  val compare : t -> t -> int

  val equal : t -> t -> bool

  val pp : Format.formatter -> t -> unit
end

val get_config : 'exp -> 'config_name option

val is_config_check : 'tenv -> 'pname -> bool

val is_marker_start : 'tenv -> 'pname -> bool

val is_marker_end : 'tenv -> 'pname -> bool