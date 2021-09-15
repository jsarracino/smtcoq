
Require Import List Bool NArith Psatz Int63 Nnat ZArith.
Import ListNotations.
Local Open Scope list_scope.
Local Open Scope N_scope.
Local Open Scope bool_scope.

Section BasicList.


  (* 
    In .v files, you use a Register c as "foo.bar.c" command.
    In .ml files you refer to that constant by Coqlib.lib_ref "foo.bar.c"
 *)


  Definition t := list Z.
  Register t as SMTCoq.Syntax.BasicList.t.

  Definition len := List.length.
  Register len as SMTCoq.Syntax.BasicList.len.

  Definition eq_dec : forall (l r: t), {l = r} + {l <> r}.
  eapply list_eq_dec.
  exact Z.eq_dec.
  Defined.

  Register eq_dec as SMTCoq.Syntax.BasicList.eq_dec.

  Definition eqb (l: t) (r: t) := if eq_dec l r then true else false.
  Register eqb as SMTCoq.Syntax.BasicList.eqb.

  Register Nat.eqb as SMTCoq.Syntax.BasicList.N.eqb.

End BasicList.
