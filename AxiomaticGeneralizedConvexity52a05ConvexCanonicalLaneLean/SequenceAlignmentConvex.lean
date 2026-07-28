import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.ConvexityAdmissibleClass

/-!
# Sequence Alignment as Convex Optimization
-/

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure SequenceAlignmentPackage where
  scoringFunction : Prop
  gapPenalty : Prop
  alignmentConvex : Prop
  optimalAlignment : Prop

structure SequenceAlignmentEvidence where
  alignmentConvexClosed : SequenceAlignmentPackage.alignmentConvex
  optimalAlignmentClosed : SequenceAlignmentPackage.optimalAlignment

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.alignmentConvex ∧ S.optimalAlignment

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence) :
    SequenceAlignmentClosed S := by
  exact And.intro E.alignmentConvexClosed E.optimalAlignmentClosed

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse