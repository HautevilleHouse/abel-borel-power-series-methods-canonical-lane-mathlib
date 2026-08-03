import AbelBorelPowerSeriesMethodsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

structure BorelSummabilityPackage where
  powerSeries : Type u
  borelTransform : Type v
  borelSumExists : Prop
  borelSumValue : Prop
  analyticContinuation : Prop

structure BorelSummabilityEvidence (B : BorelSummabilityPackage) where
  borelSumExistsClosed : B.borelSumExists
  borelSumValueClosed : B.borelSumValue
  analyticContinuationClosed : B.analyticContinuation

def BorelSummabilityClosed (B : BorelSummabilityPackage) : Prop :=
  B.borelSumExists ∧ B.borelSumValue ∧ B.analyticContinuation

theorem borel_summability_closed_from_evidence (B : BorelSummabilityPackage)
    (E : BorelSummabilityEvidence B) : BorelSummabilityClosed B := by
  exact And.intro E.borelSumExistsClosed
    (And.intro E.borelSumValueClosed E.analyticContinuationClosed)

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse