(**************************************************************************)
(*                                                                        *)
(*     SMTCoq                                                             *)
(*     Copyright (C) 2011 - 2021                                          *)
(*                                                                        *)
(*     See file "AUTHORS" for the list of authors                         *)
(*                                                                        *)
(*   This file is distributed under the terms of the CeCILL-C licence     *)
(*                                                                        *)
(**************************************************************************)


include Translator_sig.S

val ra : SmtAtom.Atom.reify_tbl
val rf : SmtAtom.Form.reify
val ra_quant : SmtAtom.Atom.reify_tbl
val rf_quant : SmtAtom.Form.reify
