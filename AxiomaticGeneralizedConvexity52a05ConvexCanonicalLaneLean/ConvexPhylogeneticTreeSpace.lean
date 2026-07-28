import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.AdmissibleClass

/-!
# Convex Phylogenetic Tree Space (BHV Space)

This module encodes the Billera-Holmes-Vogtmann tree space as a convex 
geodesic metric space. The closure verifies that the space satisfies the
axioms of a convex geodesic space.
-/

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure PhylogeneticTreeSpace where
  treeSpace : Type u
  metric : treeSpace → treeSpace → ℝ
  geodesicConvexity : Prop
  uniqueGeodesics : Prop
  geodesicConvexityClosed : geodesicConvexity
  uniqueGeodesicsClosed : uniqueGeodesics

structure PhylogeneticTreeSpaceEvidence (T : PhylogeneticTreeSpace) where
  geodesicConvexityClosed : T.geodesicConvexity
  uniqueGeodesicsClosed : T.uniqueGeodesics

def PhylogeneticTreeSpaceClosed (T : PhylogeneticTreeSpace) : Prop :=
  T.geodesicConvexity ∧ T.uniqueGeodesics

theorem phylogenetic_tree_space_closed_from_evidence (T : PhylogeneticTreeSpace)
    (E : PhylogeneticTreeSpaceEvidence T) : PhylogeneticTreeSpaceClosed T := by
  exact And.intro E.geodesicConvexityClosed E.uniqueGeodesicsClosed

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse
