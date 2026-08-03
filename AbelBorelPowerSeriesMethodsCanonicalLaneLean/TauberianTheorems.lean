import canonicalLaneMathlib.AdmissibleClass
import AbelBorelPowerSeriesMethodsCanonicalLaneLean.AbelSummability

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

structure TauberianCondition (A : Type) [NormedCommRing A] (f : FormalPowerSeries A) where
  coefficientsPositive : ∀ n, f.coefficients n ∈ ℝ≥0
  slowlyVarying : (λ n => f.coefficients n) → (0) -- placeholder

def TauberianTheorem (A : Type) [NormedCommRing A] (f : FormalPowerSeries A) (h : AbelSummable A f) : Prop :=
  ∃ (tc : TauberianCondition A f), (∀ x, ∥x∥ < 1 → sum converges to original) -- placeholder

structure TauberianPackage {A : Type} [NormedCommRing A] (P : AbelSummabilityPackage A) where
  condition : TauberianCondition A P.formalSeries
  conclusion : TauberianTheorem A P.formalSeries P.summability

def TauberianClosed {A : Type} [NormedCommRing A] (P : AbelSummabilityPackage A) (T : TauberianPackage P) : Prop :=
  T.conclusion

theorem tauberian_closed {A : Type} [NormedCommRing A] (P : AbelSummabilityPackage A) (T : TauberianPackage P) :
  TauberianClosed P T := T.conclusion

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse