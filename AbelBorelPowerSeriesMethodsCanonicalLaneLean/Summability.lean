import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

structure SummabilityPackage where
  powerSeries : Nat → ℝ
  abelSummable : Prop
  borelSummable : Prop
  equivalence : Prop
  regularMethod : Prop

structure SummabilityEvidence (S : SummabilityPackage) where
  abelSummableClosed : S.abelSummable
  borelSummableClosed : S.borelSummable
  equivalenceClosed : S.equivalence
  regularMethodClosed : S.regularMethod

def SummabilityClosed (S : SummabilityPackage) : Prop :=
  S.abelSummable ∧ S.borelSummable ∧ S.equivalence ∧ S.regularMethod

theorem summability_closed_from_evidence (S : SummabilityPackage) (E : SummabilityEvidence S) :
    SummabilityClosed S := by
  exact And.intro E.abelSummableClosed (And.intro E.borelSummableClosed (And.intro E.equivalenceClosed E.regularMethodClosed))

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse