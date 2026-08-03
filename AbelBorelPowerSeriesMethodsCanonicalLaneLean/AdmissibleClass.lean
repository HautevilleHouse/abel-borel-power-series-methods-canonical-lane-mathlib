import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

structure AbelBorelAdmittedObject where
  powerSeries : Nat → ℝ
  radiusOfConvergence : ℝ
  borelTransform : ℝ → ℝ
  abelSum : ℝ → ℝ
  tauberianCondition : Prop
  conclusion : tauberianCondition

structure AdmissibleClass where
  object : AbelBorelAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AbelBorelWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse