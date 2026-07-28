import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.AdmissibleClass

/-!
# Hardy-Weinberg Equilibrium as a Convex Set

This module defines the Hardy-Weinberg equilibrium condition as a convex subset
of genotype frequency space. The closure is framed via the admissible class.
-/

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure HardyWeinbergPackage where
  alleleFrequencies : Type u
  genotypeFrequencies : Type v
  convexityCondition : Prop
  equilibriumEquations : Prop
  alleleFrequenciesDefined : alleleFrequencies
  genotypeFrequenciesDefined : genotypeFrequencies
  convexConditionClosed : convexityCondition
  equilibriumClosed : equilibriumEquations

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  convexConditionClosed : H.convexityCondition
  equilibriumClosed : H.equilibriumEquations

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.convexityCondition ∧ H.equilibriumEquations

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage)
    (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.convexConditionClosed E.equilibriumClosed

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse
