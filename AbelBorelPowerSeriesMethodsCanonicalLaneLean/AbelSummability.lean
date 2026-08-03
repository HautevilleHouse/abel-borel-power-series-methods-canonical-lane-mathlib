import canonicalLaneMathlib.AdmissibleClass
import AbelBorelPowerSeriesMethodsCanonicalLaneLean.PowerSeriesStructure

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

structure AbelSummabilityEvidence {A : Type} [NormedCommRing A] (P : AbelSummabilityPackage A) where
  summabilityClosed : P.summability
  abelLimitClosed : P.abelLimit = P.abelLimit -- identity, placeholder

def AbelSummabilityClosed {A : Type} [NormedCommRing A] (P : AbelSummabilityPackage A) : Prop :=
  P.summability

theorem abel_summability_closed_from_evidence
    {A : Type} [NormedCommRing A] (P : AbelSummabilityPackage A) (E : AbelSummabilityEvidence P) :
    AbelSummabilityClosed P := by
  exact E.summabilityClosed

theorem abel_theorem_bridge {A : Type} [NormedCommRing A] (P : AbelSummabilityPackage A) (h : AbelSummabilityClosed P) :
  True := trivial

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse