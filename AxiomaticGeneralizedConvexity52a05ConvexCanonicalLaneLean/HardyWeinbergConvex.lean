import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.ConvexityAdmissibleClass

/-!
# Hardy-Weinberg Equilibrium as Convex Set
-/

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure HardyWeinbergPackage where
  alleleFrequencies : Prop
  genotypeFrequencies : Prop
  equilibriumCondition : Prop
  convexSet : Prop

structure HardyWeinbergEvidence where
  equilibriumConditionClosed : HardyWeinbergPackage.equilibriumCondition
  convexSetClosed : HardyWeinbergPackage.convexSet

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.equilibriumCondition ∧ H.convexSet

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage) (E : HardyWeinbergEvidence) :
    HardyWeinbergClosed H := by
  exact And.intro E.equilibriumConditionClosed E.convexSetClosed

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse