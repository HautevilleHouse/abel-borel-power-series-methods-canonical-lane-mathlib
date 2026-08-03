import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

structure AbelBorelAdmittedObject where
  series : Type
  domain : Type
  convergenceRadius : Prop
  analyticExtension : Prop
  conclusion : analyticExtension

structure AbelBorelWitnessClosed (O : AbelBorelAdmittedObject) : Prop :=
  O.convergenceRadius → O.analyticExtension

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse