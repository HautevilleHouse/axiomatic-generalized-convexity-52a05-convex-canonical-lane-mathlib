import canonicalLaneMathlib.AdmissibleClass
import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure SequenceAlignmentPackage (A : AdmissibleClass) where
  referenceSequence : String
  querySequence : String
  alignmentScore : ℕ
  gapPenalty : ℝ
  substitutionMatrix : ℝ
  scoreConvex : Prop
  alignmentOptimal : Prop
  convexEvidence : scoreConvex
  optimalEvidence : alignmentOptimal

def SequenceAlignmentClosed (A : AdmissibleClass) (S : SequenceAlignmentPackage A) : Prop :=
  S.scoreConvex ∧ S.alignmentOptimal

theorem sequence_alignment_closed_from_evidence (A : AdmissibleClass) (S : SequenceAlignmentPackage A) :
    SequenceAlignmentClosed A S := by
  exact And.intro S.convexEvidence S.optimalEvidence

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse