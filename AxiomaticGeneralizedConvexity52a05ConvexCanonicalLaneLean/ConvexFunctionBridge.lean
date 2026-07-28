import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure ConvexFunctionPackage (A : AdmissibleClass) where
  domain : Set (A.object.carrier)
  codomain : Type v
  partialOrder : PartialOrder codomain
  convexFunction : (A.object.carrier) → codomain
  domainConvex : domain ∈ A.object.convexStructure
  epigraphConvex : { p : A.object.carrier × codomain | p.1 ∈ domain ∧ partialOrder.le (convexFunction p.1) p.2 } ∈ A.object.convexStructure
  domainConvexTerm : domain ∈ A.object.convexStructure
  epigraphConvexTerm : { p : A.object.carrier × codomain | p.1 ∈ domain ∧ partialOrder.le (convexFunction p.1) p.2 } ∈ A.object.convexStructure

structure ConvexFunctionEvidence (A : AdmissibleClass) (P : ConvexFunctionPackage A) where
  domainConvexClosed : P.domainConvex
  epigraphConvexClosed : P.epigraphConvex

def ConvexFunctionClosed (A : AdmissibleClass) (P : ConvexFunctionPackage A) : Prop :=
  P.domainConvex ∧ P.epigraphConvex

theorem convex_function_closed_from_evidence (A : AdmissibleClass) (P : ConvexFunctionPackage A) (E : ConvexFunctionEvidence A P) :
    ConvexFunctionClosed A P := by
  exact And.intro E.domainConvexClosed E.epigraphConvexClosed

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse