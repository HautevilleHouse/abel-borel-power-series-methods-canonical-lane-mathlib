import AbelBorelPowerSeriesMethodsCanonicalLaneLean.AbelBorelFinalTheorem
import Mathlib.Analysis.Analytic

/-!
# Mathlib Statement Layer

This module imports the shared Mathlib-backed Abel Borel core and the
endgame pilot. The pilot closes over its admitted class and carries the
unrestricted classical boundary separately.
-/

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "abel-borel-canonical-lane",
  theoremObject := "Abel Borel Power Series Methods",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem theorem_specific_endgame_pilot_checked :
    ∀ A : AdmissibleClass, ConstrainedAbelBorelClosure A := by
  intro A
  exact constrained_abel_borel_endgame A

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse