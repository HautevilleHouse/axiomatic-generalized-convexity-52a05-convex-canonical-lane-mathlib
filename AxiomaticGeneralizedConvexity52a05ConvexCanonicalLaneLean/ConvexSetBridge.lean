import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.closureCondition

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.closureConditionTerm

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse