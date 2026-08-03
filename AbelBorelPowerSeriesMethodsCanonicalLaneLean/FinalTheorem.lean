import AbelBorelPowerSeriesMethodsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AbelBorelPowerSeriesMethodsCanonicalLaneLean

def ConstrainedAbelBorelClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_abel_borel_endgame (A : AdmissibleClass) :
    ConstrainedAbelBorelClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AbelBorelPowerSeriesMethodsCanonicalLaneLean
end HautevilleHouse