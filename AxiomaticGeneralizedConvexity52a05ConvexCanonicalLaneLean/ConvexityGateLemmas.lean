import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.ConvexityBridgeLemmas

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.object.endpointSatisfied ∨ A.object.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.object.gateWitness

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse