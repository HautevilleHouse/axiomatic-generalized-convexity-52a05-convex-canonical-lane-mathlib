import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.ConvexAdmissibleClass

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure HardyWeinbergConvexSet where
  alleleFrequencies : Type
  genotypeFrequencies : Type
  equilibriumCondition : Prop
  convexClosure : Prop
  equilibriumConditionClosed : equilibriumCondition

def HardyWeinbergConvexClosed (H : HardyWeinbergConvexSet) : Prop :=
  H.equilibriumCondition ∧ H.convexClosure

theorem hardy_weinberg_convex_closed_from_evidence (H : HardyWeinbergConvexSet) :
    HardyWeinbergConvexClosed H := by
  exact And.intro H.equilibriumConditionClosed H.convexClosure

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse