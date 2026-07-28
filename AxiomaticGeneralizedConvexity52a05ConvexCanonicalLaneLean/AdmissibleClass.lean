import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure ConvexAdmittedObject where
  carrierSet : Type u
  convexityProperty : Prop
  endpointStatement : Prop
  remainderWitness : Prop
  conclusion : convexityProperty

structure AdmissibleClass where
  object : ConvexAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ConvexityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse
