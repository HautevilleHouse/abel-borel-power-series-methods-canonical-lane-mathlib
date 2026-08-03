import HautevilleHouse.AbelBorelPowerSeriesMethodsCanonicalLaneLean.AbelBorelSummability

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

structure PowerSeriesMethodsPackage where
  radiusOfConvergence : Prop
  analyticContinuation : Prop
  borelTransform : Type u
  borelInversionFormula : Prop
  abelSummationMethod : Prop
  tauberianTheorem : Prop

structure PowerSeriesMethodsEvidence (P : PowerSeriesMethodsPackage) where
  radiusOfConvergenceClosed : P.radiusOfConvergence
  analyticContinuationClosed : P.analyticContinuation
  borelInversionFormulaClosed : P.borelInversionFormula
  abelSummationMethodClosed : P.abelSummationMethod
  tauberianTheoremClosed : P.tauberianTheorem

def PowerSeriesMethodsClosed (P : PowerSeriesMethodsPackage) : Prop :=
  P.radiusOfConvergence ∧ P.analyticContinuation ∧ P.borelInversionFormula ∧
  P.abelSummationMethod ∧ P.tauberianTheorem

theorem power_series_methods_closed_from_evidence
    (P : PowerSeriesMethodsPackage) (E : PowerSeriesMethodsEvidence P) :
    PowerSeriesMethodsClosed P := by
  exact And.intro E.radiusOfConvergenceClosed
    (And.intro E.analyticContinuationClosed
      (And.intro E.borelInversionFormulaClosed
        (And.intro E.abelSummationMethodClosed E.tauberianTheoremClosed)))

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse