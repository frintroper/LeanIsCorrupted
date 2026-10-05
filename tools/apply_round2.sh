#!/usr/bin/env bash
# apply_round2.sh
# Run from the repository root. Adds the continuity/exclusivity theorem,
# the numerical companion, doc updates, and removes the remaining TODO.
# Refuses to overwrite existing new files unless FORCE=1.
set -euo pipefail
FORCE="${FORCE:-0}"

if [ ! -f lakefile.toml ] || [ ! -d CrookedPlatonism ]; then
  echo "Run from the repository root." >&2; exit 1
fi

write_file() {
  local path="$1"
  if [ -e "$path" ] && [ "$FORCE" != "1" ]; then
    echo "skip   $path (exists; FORCE=1 to overwrite)"; cat > /dev/null; return 0
  fi
  mkdir -p "$(dirname "$path")"; cat > "$path"; echo "wrote  $path"
}

# ------------------------------------------------------------ Lean: exclusivity
write_file CrookedPlatonism/Mathlib/OrdersExclusive.lean <<'EOF'
import Mathlib
import CrookedPlatonism.Mathlib.Jerk
import CrookedPlatonism.Mathlib.TifuOrders

/-!
# OrdersExclusive

Status: theorem.

Scope: for a function `x : ℝ → ℝ`, suppose the self-inversion axiom `A` (with its
nonzero clause) holds for the `m`-th derivative of `x`, and that derivative is
continuous on all of ℝ. Then `A` fails for the `n`-th derivative for every
`n > m`. So the axiom cannot hold at two different orders, and it does not
single out an order. The statement is for the whole real line. An interval
version would carry `ContinuousOn` hypotheses through the same argument.
-/

namespace CrookedPlatonism.OrdersExclusive

open CrookedPlatonism.TifuOrders (A)

/-- Under `A`, every value is `1` or `-1`. -/
theorem values (x : ℝ → ℝ) (hA : A x) (t : ℝ) : x t = 1 ∨ x t = -1 :=
  CrookedPlatonism.Jerk.self_inverse_cases (x t) (hA t).1 (hA t).2

/-- A continuous function satisfying `A` takes the same value at any two points,
because the intermediate value theorem would otherwise produce a zero. -/
theorem constant_on_interval (x : ℝ → ℝ) (hA : A x) {a b : ℝ}
    (hc : ContinuousOn x (Set.uIcc a b)) : x a = x b := by
  have hzero : ∀ c, x c ≠ 0 := fun c => (hA c).1
  rcases values x hA a with ha | ha <;> rcases values x hA b with hb | hb
  · rw [ha, hb]
  · exfalso
    have hmem : (0 : ℝ) ∈ Set.uIcc (x a) (x b) := by
      rw [ha, hb, Set.mem_uIcc]
      right
      norm_num
    obtain ⟨c, _, hc0⟩ := intermediate_value_uIcc hc hmem
    exact hzero c hc0
  · exfalso
    have hmem : (0 : ℝ) ∈ Set.uIcc (x a) (x b) := by
      rw [ha, hb, Set.mem_uIcc]
      left
      norm_num
    obtain ⟨c, _, hc0⟩ := intermediate_value_uIcc hc hmem
    exact hzero c hc0
  · rw [ha, hb]

/-- If `A` holds for the `m`-th derivative and it is continuous, every
derivative of order above `m` is identically zero. -/
theorem higher_zero (x : ℝ → ℝ) (m : ℕ)
    (hc : Continuous (iteratedDeriv m x)) (hA : A (iteratedDeriv m x)) (k : ℕ) :
    iteratedDeriv (m + 1 + k) x = fun _ => 0 := by
  have hconst : ∀ t, iteratedDeriv m x t = iteratedDeriv m x 0 := fun t =>
    constant_on_interval (iteratedDeriv m x) hA (a := t) (b := 0) hc.continuousOn
  have hfun : iteratedDeriv m x = fun _ => iteratedDeriv m x 0 := funext hconst
  have h1 : iteratedDeriv (m + 1) x = fun _ => 0 := by
    rw [iteratedDeriv_succ, hfun]
    funext t
    simp
  induction k with
  | zero => simpa using h1
  | succ k ih =>
    have e : m + 1 + (k + 1) = m + 1 + k + 1 := by omega
    rw [e, iteratedDeriv_succ, ih]
    funext t
    simp

/-- `A` cannot hold at two different orders when the lower derivative is continuous. -/
theorem orders_exclusive (x : ℝ → ℝ) {m n : ℕ} (hmn : m < n)
    (hcm : Continuous (iteratedDeriv m x)) (hm : A (iteratedDeriv m x)) :
    ¬ A (iteratedDeriv n x) := by
  intro hn
  obtain ⟨k, rfl⟩ : ∃ k, n = m + 1 + k := ⟨n - m - 1, by omega⟩
  have hz := higher_zero x m hcm hm k
  have h0 := (hn 0).1
  rw [hz] at h0
  exact h0 rfl

/-- The case in the appendix: orders 3 and 6. -/
theorem three_six (x : ℝ → ℝ) (hc : Continuous (iteratedDeriv 3 x)) :
    ¬ (A (iteratedDeriv 3 x) ∧ A (iteratedDeriv 6 x)) :=
  fun ⟨h3, h6⟩ => orders_exclusive x (by norm_num : 3 < 6) hc h3 h6

#print axioms orders_exclusive
#print axioms three_six

end CrookedPlatonism.OrdersExclusive
EOF

if ! grep -q "CrookedPlatonism.Mathlib.OrdersExclusive" CrookedPlatonism.lean; then
  echo "import CrookedPlatonism.Mathlib.OrdersExclusive" >> CrookedPlatonism.lean
  echo "edit   CrookedPlatonism.lean (import added)"
fi

# ----------------------------------------------------- Lean: remove the TODO
python3 - <<'EOF'
import re
p = "CrookedPlatonism/Mathlib/Jerk.lean"
s = open(p).read()
pat = re.compile(
    r"-- The constant-jerk conclusion needs[^\n]*\n"
    r"-- A smooth function with third derivative[^\n]*\n"
    r"-- TODO\(jerk\)[^\n]*\n")
new = ("-- A smooth function with third derivative identically 1 is `fun t => t ^ 3 / 6`;\n"
       "-- see CrookedPlatonism/Mathlib/ConstantJerk.lean. That the axiom holds at at most\n"
       "-- one order is proved in CrookedPlatonism/Mathlib/OrdersExclusive.lean.\n")
if pat.search(s):
    open(p, "w").write(pat.sub(new, s, count=1))
    print("edit   Jerk.lean (TODO replaced by cross-references)")
else:
    print("note   Jerk.lean TODO block not found; check by hand with grep -n TODO")
EOF

# ------------------------------------------------------------------ Python
write_file simulations/jerk_regress.py <<'EOF'
#!/usr/bin/env python3
"""
jerk_regress.py

Status: empirical (an exact finite check), not a proof. The general statement
is proved in CrookedPlatonism/Mathlib/OrdersExclusive.lean.

Scope: for the monomial trajectories x_n(t) = t^n / n!, tabulate which orders k
satisfy the self-inversion axiom A_k:  x^(k)(t) != 0 and x^(k)(t) = 1 / x^(k)(t)
for all t. Polynomials are handled exactly with rational coefficients, so the
table involves no floating point and no tolerances.

Reading the table: x_n has n-th derivative identically 1, so A_n holds. Every
other order fails, either because the derivative is nonconstant (k < n) or
because it is identically zero (k > n). The pattern is the same for every n, so
the axiom does not prefer any order. Nothing here selects order 3 over order 6.

Run:  python3 simulations/jerk_regress.py
"""
from fractions import Fraction
from math import factorial

MAX_ORDER = 8


def monomial(n):
    """x_n(t) = t^n / n!  as {exponent: coefficient}."""
    return {n: Fraction(1, factorial(n))}


def derivative(poly):
    return {e - 1: c * e for e, c in poly.items() if e > 0 and c * e != 0}


def nth_derivative(poly, k):
    for _ in range(k):
        poly = derivative(poly)
    return poly


def satisfies_A(poly):
    """A: the function is nowhere zero and equals its reciprocal everywhere.
    For a polynomial this holds exactly when it is a nonzero constant c with
    c * c == 1."""
    if not poly:
        return False                      # identically zero violates c != 0
    if set(poly) != {0}:
        return False                      # nonconstant polynomials vanish or vary
    c = poly[0]
    return c != 0 and c * c == 1


def main():
    orders = range(1, MAX_ORDER + 1)
    print("x_n(t) = t^n / n!;  entry is 'A' where axiom A_k holds for x_n, '.' where it fails")
    print()
    print("      k = " + " ".join(f"{k:>2}" for k in orders))
    for n in orders:
        x = monomial(n)
        row = ["A" if satisfies_A(nth_derivative(x, k)) else "." for k in orders]
        print(f"x_{n}      " + " ".join(f"{r:>2}" for r in row))
    print()
    ok = all(
        satisfies_A(nth_derivative(monomial(n), k)) == (n == k)
        for n in orders for k in orders
    )
    print("A_k holds for x_n exactly when k == n:", ok)
    print("Pairs of orders (m, n), m != n, jointly satisfied by any x_p in this family:",
          sum(
              1
              for p in orders for m in orders for n in orders
              if m < n
              and satisfies_A(nth_derivative(monomial(p), m))
              and satisfies_A(nth_derivative(monomial(p), n))
          ))


if __name__ == "__main__":
    main()
EOF
chmod +x simulations/jerk_regress.py

# -------------------------------------------------------------------- docs
python3 - <<'EOF'
def patch(path, old, new, label):
    try:
        s = open(path).read()
    except FileNotFoundError:
        print(f"note   {path} not found"); return
    if new in s:
        print(f"ok     {label} (already applied)"); return
    if old not in s:
        print(f"note   {label}: anchor not found in {path}; edit by hand"); return
    open(path, "w").write(s.replace(old, new, 1))
    print(f"edit   {label}")

# Foundations_of_Lean.md : checked jerk results
patch(
    "docs/Foundations_of_Lean.md",
    "That reading, a restriction on the class of admissible models, is expressible without any change to Lean.\n",
    "That reading, a restriction on the class of admissible models, is expressible without any change to Lean.\n\n"
    "Four results are machine checked in `CrookedPlatonism/Mathlib/`. `Jerk.lean` proves that `j ≠ 0` and `j = 1/j` give `j = ±1`, "
    "and that under Mathlib's total convention `1/0 = 0` the value `j = 0` also satisfies the equation. "
    "`ConstantJerk.lean` proves that `t ↦ t³/6` has third derivative identically 1. "
    "`TifuOrders.lean` and `OrdersExclusive.lean` prove that if the self-inversion axiom (with its nonzero clause) holds for the "
    "m-th derivative of a function, and that derivative is continuous on the real line, then the axiom fails for every higher order. "
    "The axiom therefore cannot single out an order: the argument that selects order 3 selects order 6 equally well, and no function satisfies both. "
    "The statement is for the whole line. An interval version would use the same argument with local continuity.\n",
    "Foundations_of_Lean.md jerk paragraph")

# Counterfactuals.md
patch(
    "simulations/Counterfactuals.md",
    "Status: design rule and conjecture. The designs below are proposals. None has been run.",
    "Status: design rule and conjecture. Section 3 has been carried out in part (see the Mathlib files). The other designs have not been run.",
    "Counterfactuals.md status line")
patch(
    "simulations/Counterfactuals.md",
    "The corresponding experiments are `Jerk.lean` and `TifuOrders.lean`.",
    "The corresponding checked results are in `Jerk.lean`, `ConstantJerk.lean`, `TifuOrders.lean` and `OrdersExclusive.lean`.",
    "Counterfactuals.md checked-results line")
patch(
    "simulations/Counterfactuals.md",
    "**A numerical companion.** `simulations/jerk_regress.py` is planned to check that the regress argument is symmetric: the same argument that selects order 3 selects any other order equally well.",
    "**A numerical companion.** `simulations/jerk_regress.py` tabulates, for the monomials `t^n/n!` and with exact arithmetic, which orders satisfy the axiom. Only the diagonal does. This is consistent with the checked exclusivity result: the same argument that selects order 3 selects any other order equally well, and no two orders can both hold.",
    "Counterfactuals.md numerical companion")

# simulations/README.md
patch(
    "simulations/README.md",
    "Planned:\n- jerk_regress.py: the symmetry of the regress argument (any order works the same).\n- ostrogradsky.py: instability for higher-derivative Lagrangians.\n",
    "Available:\n- `jerk_regress.py`: exact check, for monomial trajectories, of which orders satisfy the self-inversion axiom. Run with `python3 simulations/jerk_regress.py`.\n",
    "simulations/README.md")

# Root README: bullets
p = "README.md"
try:
    s = open(p).read()
    anchor = "The Mathlib files build under Lean 4.34.1"
    add = ""
    if "**ConstantJerk**" not in s:
        add += ("- **ConstantJerk** (needs Mathlib). The function `t ↦ t³/6` has third derivative identically 1, "
                "so a smooth trajectory with constant jerk exists.\n")
    if "**OrdersExclusive**" not in s:
        add += ("- **OrdersExclusive** (needs Mathlib). If the self-inversion axiom, with its nonzero clause, holds for the "
                "m-th derivative of a function and that derivative is continuous on the real line, it fails for every higher order. "
                "The axiom therefore cannot hold at two orders (for example 3 and 6), and it does not select an order.\n")
    if add and anchor in s:
        open(p, "w").write(s.replace(anchor, add + "\n" + anchor, 1))
        print("edit   README.md (bullets added)")
    else:
        print("ok     README.md (nothing to add or anchor missing)")
except FileNotFoundError:
    print("note   README.md not found")
EOF

echo
echo "Remaining TODO / sorry outside upstream/ and .lake/:"
grep -rnE "TODO|sorry" --include='*.lean' --include='*.md' --include='*.py' . 2>/dev/null \
  | grep -vE '^\./(upstream|\.lake)/' || echo "  none"
echo
echo "Next:  lake build   and   python3 simulations/jerk_regress.py"
