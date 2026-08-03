import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbelBorelPowerSeriesMethodsCanonicalLaneLean.AbelSummability
import HautevilleHouse.AbelBorelPowerSeriesMethodsCanonicalLaneLean.BorelSummability

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

structure PowerSeriesSummationPackage (A : AbelSummabilityPackage) (B : BorelSummabilityPackage) where
  consistencyCondition : Prop
  taurusMethod : Prop
  consistencyConditionClosed : consistencyCondition
  taurusMethodClosed : taurusMethod

def PowerSeriesSummationClosed (A : AbelSummabilityPackage) (B : BorelSummabilityPackage) (P : PowerSeriesSummationPackage A B) : Prop :=
  P.consistencyCondition ∧ P.taurusMethod

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse
