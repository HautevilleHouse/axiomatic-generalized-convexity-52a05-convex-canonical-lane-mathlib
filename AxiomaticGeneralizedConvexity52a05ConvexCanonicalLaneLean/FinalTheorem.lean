import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

def ConstrainedConvexClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_convex_endgame (A : AdmissibleClass) :
    ConstrainedConvexClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse