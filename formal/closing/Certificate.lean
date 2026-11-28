import Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.FieldSimp
namespace CircularArc
noncomputable def phase (t : ℝ) := Real.pi + 2 * Real.arctan t
theorem phase_strict : StrictMono phase := by
  intro x y h
  dsimp [phase]
  linarith [Real.arctan_strictMono h]
theorem phase_derivative (t : ℝ) : HasDerivAt phase (2/(1+t^2)) t := by
  change HasDerivAt (fun x : ℝ => Real.pi + 2*Real.arctan x) _ t
  simpa only [div_eq_mul_inv,one_mul] using ((Real.hasDerivAt_arctan t).const_mul 2).const_add Real.pi
/-- Every prescribed arc length strictly between zero and a full turn
occurs with positive scale; the angular speed from the paper is nonzero
even at each endpoint as its input speed there is one quarter. -/
theorem scale_for_length (A L : ℝ) (hA : 0 < A) (hL : 0 < L) (hπ : L < 2*Real.pi) :
    ∃ k : ℝ, 0 < k ∧ phase (k*A) - phase (k*(-A)) = L ∧
      0 < (2/(1+(k*A)^2))*k/4 := by
  let θ := L/4
  have hθ : 0 < θ := by dsimp [θ]; linarith
  have ht : θ < Real.pi/2 := by dsimp [θ]; linarith
  have htn := Real.tan_pos_of_pos_of_lt_pi_div_two hθ ht
  refine ⟨Real.tan θ/A,div_pos htn hA,?_,?_⟩
  · rw [div_mul_cancel₀ _ hA.ne',mul_neg,div_mul_cancel₀ _ hA.ne']
    simp only [phase,Real.arctan_neg,Real.arctan_tan (by linarith [Real.pi_pos] : -(Real.pi/2)<θ) ht]
    dsimp [θ]
    ring
  · positivity
/-- The phase used for the length calculation parametrizes the actual
Möbius quotient of the two boundary factors. -/
theorem mobius_phase (t : ℝ) :
    Complex.exp ((phase t : ℝ) * Complex.I) = ((t:ℂ)-Complex.I)/(t+Complex.I) := by
  have nonzero : (t:ℂ)+Complex.I ≠ 0 := by
    intro h
    have := congrArg Complex.im h
    simp at this
  apply (eq_div_iff nonzero).2
  have positive : 0 < 1+t^2 := by positivity
  have root := Real.sq_sqrt positive.le
  have nz := (Real.sqrt_pos.mpr positive).ne'
  have hc : Real.cos (phase t) = (t^2-1)/(1+t^2) := by
    simp [phase,Real.cos_add,Real.cos_two_mul,Real.cos_arctan]
    field_simp
    nlinarith [congrArg (fun v : ℝ => (1+t^2)*v) root,congrArg (fun v : ℝ => (t^2-1)*v) root]
  have hs : Real.sin (phase t) = -2*t/(1+t^2) := by
    simp [phase,Real.sin_add,Real.sin_two_mul,Real.cos_arctan,Real.sin_arctan]
    field_simp
    nlinarith [congrArg (fun v : ℝ => t*v) root]
  apply Complex.ext
  · simp only [Complex.mul_re,Complex.sub_re,Complex.add_re,Complex.add_im,
      Complex.ofReal_re,Complex.ofReal_im,Complex.I_re,Complex.I_im,
      Complex.exp_ofReal_mul_I_re,Complex.exp_ofReal_mul_I_im,hc,hs]
    field_simp
    ring
  · simp only [Complex.mul_im,Complex.sub_im,Complex.add_re,Complex.add_im,
      Complex.ofReal_re,Complex.ofReal_im,Complex.I_re,Complex.I_im,
      Complex.exp_ofReal_mul_I_re,Complex.exp_ofReal_mul_I_im,hc,hs]
    field_simp
    ring
end CircularArc
#print axioms CircularArc.phase_derivative
#print axioms CircularArc.scale_for_length
#print axioms CircularArc.mobius_phase
