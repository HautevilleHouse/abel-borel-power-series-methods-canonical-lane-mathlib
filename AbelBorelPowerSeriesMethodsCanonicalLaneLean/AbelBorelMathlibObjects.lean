import AbelBorelPowerSeriesMethodsCanonicalLaneLean.AbelBorelFinalTheorem
import Mathlib.Analysis.Analytic
import Mathlib.Analysis.SpecialFunctions.Power

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

open Complex

structure AbelBorelSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AbelBorelAdmittedObject where
  space : AbelBorelSpace
  formalSeries : ℕ → ℂ
  convergenceRadius : ℝ≥0∞
  analyticContinuation : ℂ → ℂ
  tauberianCondition : Prop
  conclusion : tauberianCondition

def AbelBorelWitnessClosed (O : AbelBorelAdmittedObject) : Prop :=
  O.tauberianCondition

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse