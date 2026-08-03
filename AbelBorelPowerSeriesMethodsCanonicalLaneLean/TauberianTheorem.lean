import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

structure TauberianTheoremPackage where
  powerSeries : Nat → ℝ
  abelLimitExists : Prop
  tauberianCondition : Prop
  seriesConverges : Prop
  limitEqualsSum : Prop

structure TauberianTheoremEvidence (T : TauberianTheoremPackage) where
  abelLimitExistsClosed : T.abelLimitExists
  tauberianConditionClosed : T.tauberianCondition
  seriesConvergesClosed : T.seriesConverges
  limitEqualsSumClosed : T.limitEqualsSum

def TauberianTheoremClosed (T : TauberianTheoremPackage) : Prop :=
  T.abelLimitExists ∧ T.tauberianCondition ∧ T.seriesConverges ∧ T.limitEqualsSum

theorem tauberian_theorem_closed_from_evidence (T : TauberianTheoremPackage) (E : TauberianTheoremEvidence T) :
    TauberianTheoremClosed T := by
  exact And.intro E.abelLimitExistsClosed (And.intro E.tauberianConditionClosed (And.intro E.seriesConvergesClosed E.limitEqualsSumClosed))

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse