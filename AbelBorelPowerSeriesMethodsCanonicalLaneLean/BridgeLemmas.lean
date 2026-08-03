import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AbelBorelWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse