import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

structure FormalPowerSeries (A : Type) [CommRing A] where
  coefficients : ℕ → A

def FormalPowerSeries.zero (A) [CommRing A] : FormalPowerSeries A :=
  { coefficients := λ _ => 0 }

def FormalPowerSeries.one (A) [CommRing A] : FormalPowerSeries A :=
  { coefficients := λ n => if n = 0 then 1 else 0 }

structure ConvergentPowerSeries (A : Type) [NormedCommRing A] (f : FormalPowerSeries A) where
  radius : ℝ≥0
  sum : {x : A // ∥x∥ < radius} → A
  sumFormula : ∀ (x : A) (hx : ∥x∥ < radius), sum ⟨x, hx⟩ = ∑' n, f.coefficients n * x ^ n

def AbelSummable (A : Type) [NormedCommRing A] (f : FormalPowerSeries A) : Prop :=
  ∃ (r : ℝ≥0) (s : ConvergentPowerSeries A f), s.radius > 0

structure AbelSummabilityPackage (A : Type) [NormedCommRing A] where
  formalSeries : FormalPowerSeries A
  summability : AbelSummable A formalSeries
  abelLimit : A
  abelTheorem : summability → (∀ x, ∥x∥ < 1 → limit of series) -- placeholder

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse