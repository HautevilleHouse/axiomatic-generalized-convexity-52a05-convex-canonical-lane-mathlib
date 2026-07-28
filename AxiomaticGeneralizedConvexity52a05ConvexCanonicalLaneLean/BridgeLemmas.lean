import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.convexCombinationClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.witness.elim (fun h => h) (fun h => A.object.convexCombinationClosed)

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse