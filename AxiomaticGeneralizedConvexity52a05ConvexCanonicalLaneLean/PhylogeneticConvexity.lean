import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.ConvexAdmissibleClass

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure PhylogeneticConvexity where
  treeSpace : Type
  convexHull : Type
  convexTreeClosure : Prop
  phylogeneticConvex : Prop
  convexTreeClosureClosed : convexTreeClosure

def PhylogeneticConvexClosed (P : PhylogeneticConvexity) : Prop :=
  P.convexTreeClosure ∧ P.phylogeneticConvex

theorem phylogenetic_convex_closed_from_evidence (P : PhylogeneticConvexity) :
    PhylogeneticConvexClosed P := by
  exact And.intro P.convexTreeClosureClosed P.phylogeneticConvex

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse