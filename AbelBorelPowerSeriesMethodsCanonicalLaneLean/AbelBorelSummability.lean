import HautevilleHouse.AbelBorelPowerSeriesMethodsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

structure AbelBorelSummabilityPackage where
  powerSeries : AbelBorelAdmittedObject → Type u
  abelMean : Type v
  borelMean : Type w
  abelTheoremHolds : Prop
  borelTheoremHolds : Prop
  tauberianCondition : Prop

structure AbelBorelSummabilityEvidence (P : AbelBorelSummabilityPackage) where
  abelTheoremHoldsClosed : P.abelTheoremHolds
  borelTheoremHoldsClosed : P.borelTheoremHolds
  tauberianConditionClosed : P.tauberianCondition

def AbelBorelSummabilityClosed (P : AbelBorelSummabilityPackage) : Prop :=
  P.abelTheoremHolds ∧ P.borelTheoremHolds ∧ P.tauberianCondition

theorem abel_borel_summability_closed_from_evidence
    (P : AbelBorelSummabilityPackage) (E : AbelBorelSummabilityEvidence P) :
    AbelBorelSummabilityClosed P := by
  exact And.intro E.abelTheoremHoldsClosed
    (And.intro E.borelTheoremHoldsClosed E.tauberianConditionClosed)

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse