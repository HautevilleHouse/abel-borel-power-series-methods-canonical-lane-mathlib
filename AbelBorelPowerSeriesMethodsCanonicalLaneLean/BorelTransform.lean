import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

structure BorelTransformPackage where
  powerSeries : Nat → ℝ
  analyticContinuation : ℝ → ℝ
  borelSum := λ x => ∑' n, powerSeries n * x^n / n!
  borelSumDefined : Prop
  borelSumAnalytic : Prop
  borelSumConverges : Prop

structure BorelTransformEvidence (B : BorelTransformPackage) where
  borelSumDefinedClosed : B.borelSumDefined
  borelSumAnalyticClosed : B.borelSumAnalytic
  borelSumConvergesClosed : B.borelSumConverges

def BorelTransformClosed (B : BorelTransformPackage) : Prop :=
  B.borelSumDefined ∧ B.borelSumAnalytic ∧ B.borelSumConverges

theorem borel_transform_closed_from_evidence (B : BorelTransformPackage) (E : BorelTransformEvidence B) :
    BorelTransformClosed B := by
  exact And.intro E.borelSumDefinedClosed (And.intro E.borelSumAnalyticClosed E.borelSumConvergesClosed)

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse