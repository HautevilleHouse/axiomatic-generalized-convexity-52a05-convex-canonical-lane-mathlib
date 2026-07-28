import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.ConvexityAdmissibleClass

/-!
# Linkage Analysis as Convex Recombination
-/

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure LinkageAnalysisPackage where
  recombinationFraction : Prop
  lodScore : Prop
  convexLikelihood : Prop
  linkageConclusion : Prop

structure LinkageAnalysisEvidence where
  convexLikelihoodClosed : LinkageAnalysisPackage.convexLikelihood
  linkageConclusionClosed : LinkageAnalysisPackage.linkageConclusion

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.convexLikelihood ∧ L.linkageConclusion

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence) :
    LinkageAnalysisClosed L := by
  exact And.intro E.convexLikelihoodClosed E.linkageConclusionClosed

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse