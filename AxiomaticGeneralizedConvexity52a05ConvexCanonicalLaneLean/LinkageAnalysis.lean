import canonicalLaneMathlib.AdmissibleClass
import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure LinkageAnalysisPackage (A : AdmissibleClass) where
  chromosomeMap : A.object.populationType → ℕ
  recombinationFraction : ℝ
  logarithmOfOdds : ℝ
  linkageEquilibriumAssumed : Prop
  lodScoreSignificant : Prop
  significantEvidence : lodScoreSignificant

def LinkageAnalysisClosed (A : AdmissibleClass) (L : LinkageAnalysisPackage A) : Prop :=
  L.lodScoreSignificant

theorem linkage_analysis_closed_from_evidence (A : AdmissibleClass) (L : LinkageAnalysisPackage A) :
    LinkageAnalysisClosed A L := by
  exact L.significantEvidence

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse