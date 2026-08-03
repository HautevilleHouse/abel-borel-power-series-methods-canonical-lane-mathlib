import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

structure AbelPowerSeriesPackage where
  powerSeries : Nat → ℝ
  radius : ℝ
  abelSum := λ r => ∑' n, powerSeries n * r^n
  abelSumDefined : Prop
  abelSumAnalytic : Prop
  abelSumConverges : Prop
  tauberianCondition : Prop

structure AbelPowerSeriesEvidence (A : AbelPowerSeriesPackage) where
  abelSumDefinedClosed : A.abelSumDefined
  abelSumAnalyticClosed : A.abelSumAnalytic
  abelSumConvergesClosed : A.abelSumConverges
  tauberianConditionClosed : A.tauberianCondition

def AbelPowerSeriesClosed (A : AbelPowerSeriesPackage) : Prop :=
  A.abelSumDefined ∧ A.abelSumAnalytic ∧ A.abelSumConverges ∧ A.tauberianCondition

theorem abel_power_series_closed_from_evidence (A : AbelPowerSeriesPackage) (E : AbelPowerSeriesEvidence A) :
    AbelPowerSeriesClosed A := by
  exact And.intro E.abelSumDefinedClosed (And.intro E.abelSumAnalyticClosed (And.intro E.abelSumConvergesClosed E.tauberianConditionClosed))

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse