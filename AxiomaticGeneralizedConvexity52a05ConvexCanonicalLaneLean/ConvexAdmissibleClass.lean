import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure ConvexAdmittedObject where
  space : Type
  convexStructure : Type
  carrierClosed : Prop
  convexCombinationClosed : Prop
  endpointCondition : Prop
  remainderRecorded : Prop
  witness : endpointCondition ∨ remainderRecorded

structure AdmissibleClass where
  object : ConvexAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.convexCombinationClosed ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse