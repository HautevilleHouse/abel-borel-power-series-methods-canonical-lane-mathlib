import AbelBorelPowerSeriesMethodsCanonicalLaneLean.AbelBorelBridgeLemmas
import AbelBorelPowerSeriesMethodsCanonicalLaneLean.AbelBorelGateLemmas

/-!
# Abel Borel Proof Certificates

This module defines proof certificates for the key components of the Abel Borel power series methods:
summability, analytic continuation, and Tauberian theorems.
-/

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

structure SummabilityCertificate where
  formalPowerSeries : Type u
  AbelSummable : Prop
  BorelSummable : Prop
  equivalenceProof : Bool
  closureCondition : Prop

def SummabilityCertificateClosed (C : SummabilityCertificate) : Prop :=
  C.AbelSummable ∧ C.BorelSummable ∧ C.equivalenceProof

structure AnalyticContinuationCertificate where
  domain : Type u
  analyticContinuationExists : Prop
  uniquenessOfContinuation : Prop
  closureCondition : Prop

def AnalyticContinuationCertificateClosed (C : AnalyticContinuationCertificate) : Prop :=
  C.analyticContinuationExists ∧ C.uniquenessOfContinuation

structure TauberianCertificate where
  tauberianCondition : Prop
  abelianTheoremHolds : Prop
  tauberianTheoremHolds : Prop
  closureCondition : Prop

def TauberianCertificateClosed (C : TauberianCertificate) : Prop :=
  C.tauberianCondition ∧ C.abelianTheoremHolds ∧ C.tauberianTheoremHolds

structure FullAbelBorelCertificate where
  summability : SummabilityCertificate
  analyticContinuation : AnalyticContinuationCertificate
  tauberian : TauberianCertificate
  summabilityClosed : SummabilityCertificateClosed summability
  analyticContinuationClosed : AnalyticContinuationCertificateClosed analyticContinuation
  tauberianClosed : TauberianCertificateClosed tauberian

def FullAbelBorelCertificateClosed (C : FullAbelBorelCertificate) : Prop :=
  SummabilityCertificateClosed C.summability ∧
  AnalyticContinuationCertificateClosed C.analyticContinuation ∧
  TauberianCertificateClosed C.tauberian

theorem full_abel_borel_certificate_closed_from_components
    (C : FullAbelBorelCertificate) : FullAbelBorelCertificateClosed C := by
  exact And.intro C.summabilityClosed
    (And.intro C.analyticContinuationClosed C.tauberianClosed)

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse