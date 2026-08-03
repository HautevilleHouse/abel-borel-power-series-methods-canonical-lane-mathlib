import AbelBorelPowerSeriesMethodsCanonicalLaneLean.AbelBorelProofCertificates

/-!
# Abel Borel Evidence Terms

This module exposes the proof terms for each certificate, extracting the closure evidence.
-/

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

structure SummabilityEvidenceTerms (C : SummabilityCertificate) where
  abelSummableClosed : C.AbelSummable
  borelSummableClosed : C.BorelSummable
  equivalenceProofClosed : C.equivalenceProof
  summabilityCertificateClosed : SummabilityCertificateClosed C

def SummabilityCertificate.toEvidenceTerms (C : SummabilityCertificate) :
    SummabilityEvidenceTerms C := {
  abelSummableClosed := C.AbelSummable
  borelSummableClosed := C.BorelSummable
  equivalenceProofClosed := C.equivalenceProof
  summabilityCertificateClosed := by
    exact And.intro C.AbelSummable (And.intro C.BorelSummable C.equivalenceProof)
}

structure AnalyticContinuationEvidenceTerms (C : AnalyticContinuationCertificate) where
  analyticContinuationExistsClosed : C.analyticContinuationExists
  uniquenessOfContinuationClosed : C.uniquenessOfContinuation
  analyticContinuationCertificateClosed : AnalyticContinuationCertificateClosed C

def AnalyticContinuationCertificate.toEvidenceTerms (C : AnalyticContinuationCertificate) :
    AnalyticContinuationEvidenceTerms C := {
  analyticContinuationExistsClosed := C.analyticContinuationExists
  uniquenessOfContinuationClosed := C.uniquenessOfContinuation
  analyticContinuationCertificateClosed := by
    exact And.intro C.analyticContinuationExists C.uniquenessOfContinuation
}

structure TauberianEvidenceTerms (C : TauberianCertificate) where
  tauberianConditionClosed : C.tauberianCondition
  abelianTheoremHoldsClosed : C.abelianTheoremHolds
  tauberianTheoremHoldsClosed : C.tauberianTheoremHolds
  tauberianCertificateClosed : TauberianCertificateClosed C

def TauberianCertificate.toEvidenceTerms (C : TauberianCertificate) :
    TauberianEvidenceTerms C := {
  tauberianConditionClosed := C.tauberianCondition
  abelianTheoremHoldsClosed := C.abelianTheoremHolds
  tauberianTheoremHoldsClosed := C.tauberianTheoremHolds
  tauberianCertificateClosed := by
    exact And.intro C.tauberianCondition (And.intro C.abelianTheoremHolds C.tauberianTheoremHolds)
}

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse