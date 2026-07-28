import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.ConvexAdmissibleClass

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure SequenceAlignmentConvexity where
  sequences : Type
  alignmentSpace : Type
  convexMetric : Prop
  alignmentClosed : Prop
  convexMetricClosed : convexMetric

def SequenceAlignmentConvexClosed (S : SequenceAlignmentConvexity) : Prop :=
  S.convexMetric ∧ S.alignmentClosed

theorem sequence_alignment_convex_closed_from_evidence (S : SequenceAlignmentConvexity) :
    SequenceAlignmentConvexClosed S := by
  exact And.intro S.convexMetricClosed S.alignmentClosed

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse