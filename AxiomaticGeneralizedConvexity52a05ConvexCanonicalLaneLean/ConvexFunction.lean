import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.ConvexBody

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure ConvexFunctionPackage {C : ConvexBodyPackage} where
  domain : C.underlyingSet
  codomain : ℝ
  convexityInequality : Prop
  lowerSemicontinuous : Prop

structure ConvexFunctionEvidence {C : ConvexBodyPackage} (F : ConvexFunctionPackage C) where
  convexityInequalityClosed : F.convexityInequality
  lowerSemicontinuousClosed : F.lowerSemicontinuous

def ConvexFunctionClosed {C : ConvexBodyPackage} (F : ConvexFunctionPackage C) : Prop :=
  F.convexityInequality ∧ F.lowerSemicontinuous

theorem convex_function_closed_from_evidence {C : ConvexBodyPackage} (F : ConvexFunctionPackage C) (E : ConvexFunctionEvidence F) :
    ConvexFunctionClosed F := by
  exact And.intro E.convexityInequalityClosed E.lowerSemicontinuousClosed

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse