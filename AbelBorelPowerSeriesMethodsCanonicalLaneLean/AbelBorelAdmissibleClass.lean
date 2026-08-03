import AbelBorelPowerSeriesMethodsCanonicalLaneLean.AbelBorelMathlibObjects

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

structure AdmissibleClass where
  object : AbelBorelAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AbelBorelWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse