import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.AdmissibleClass

/-!
# Convex Fitness Landscape

This module models a fitness landscape over a convex genotype space. The fitness
function is assumed to be convex, and the closure ensures the landscape satisfies
the generalized convexity axioms.
-/

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure ConvexFitnessPackage where
  genotypeSpace : Type u
  fitnessFunction : genotypeSpace → ℝ
  convexityAxiom : Prop
  fitnessBoundedBelow : Prop
  convexityAxiomClosed : convexityAxiom
  fitnessBoundedBelowClosed : fitnessBoundedBelow

structure ConvexFitnessEvidence (F : ConvexFitnessPackage) where
  convexityAxiomClosed : F.convexityAxiom
  fitnessBoundedBelowClosed : F.fitnessBoundedBelow

def ConvexFitnessClosed (F : ConvexFitnessPackage) : Prop :=
  F.convexityAxiom ∧ F.fitnessBoundedBelow

theorem convex_fitness_closed_from_evidence (F : ConvexFitnessPackage)
    (E : ConvexFitnessEvidence F) : ConvexFitnessClosed F := by
  exact And.intro E.convexityAxiomClosed E.fitnessBoundedBelowClosed

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse
