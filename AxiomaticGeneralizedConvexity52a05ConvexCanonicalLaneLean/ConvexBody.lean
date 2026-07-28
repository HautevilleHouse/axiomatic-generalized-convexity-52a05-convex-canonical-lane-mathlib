import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure ConvexBodyPackage where
  underlyingSet : Type
  convexCombination : underlyingSet → underlyingSet → ℝ → underlyingSet
  convexityAxiom : Prop
  closureProperty : Prop

structure ConvexBodyEvidence (C : ConvexBodyPackage) where
  convexityAxiomClosed : C.convexityAxiom
  closurePropertyClosed : C.closureProperty

def ConvexBodyClosed (C : ConvexBodyPackage) : Prop :=
  C.convexityAxiom ∧ C.closureProperty

theorem convex_body_closed_from_evidence (C : ConvexBodyPackage) (E : ConvexBodyEvidence C) :
    ConvexBodyClosed C := by
  exact And.intro E.convexityAxiomClosed E.closurePropertyClosed

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse