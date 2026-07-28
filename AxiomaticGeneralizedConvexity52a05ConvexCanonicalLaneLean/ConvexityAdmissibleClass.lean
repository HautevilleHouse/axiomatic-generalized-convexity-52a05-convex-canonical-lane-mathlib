import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure ConvexAdmissibleObject where
  carrier : Type u
  convexStructure : Set (Set carrier)
  closureCondition : Prop
  hullOperator : Set carrier -> Set carrier
  hullIdempotent : ∀ s, hullOperator (hullOperator s) = hullOperator s
  hullExtensive : ∀ s, s ⊆ hullOperator s
  hullMonotone : ∀ s t, s ⊆ t → hullOperator s ⊆ hullOperator t
  closureConditionTerm : closureCondition

structure AdmissibleClass where
  object : ConvexAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (∀ s, A.object.hullOperator (A.object.hullOperator s) = A.object.hullOperator s) ∧
  (∀ s, s ⊆ A.object.hullOperator s) ∧
  (∀ s t, s ⊆ t → A.object.hullOperator s ⊆ A.object.hullOperator t) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse