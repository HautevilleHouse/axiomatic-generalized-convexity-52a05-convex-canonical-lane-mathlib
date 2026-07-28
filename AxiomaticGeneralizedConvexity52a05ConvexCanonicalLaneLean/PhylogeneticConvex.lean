import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.ConvexityAdmissibleClass

/-!
# Phylogenetic Tree as Convex Structure
-/

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure PhylogeneticPackage where
  treeTopology : Prop
  branchLengths : Prop
  convexMetric : Prop
  treeEstimate : Prop

structure PhylogeneticEvidence where
  convexMetricClosed : PhylogeneticPackage.convexMetric
  treeEstimateClosed : PhylogeneticPackage.treeEstimate

def PhylogeneticClosed (P : PhylogeneticPackage) : Prop :=
  P.convexMetric ∧ P.treeEstimate

theorem phylogenetic_closed_from_evidence (P : PhylogeneticPackage) (E : PhylogeneticEvidence) :
    PhylogeneticClosed P := by
  exact And.intro E.convexMetricClosed E.treeEstimateClosed

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse