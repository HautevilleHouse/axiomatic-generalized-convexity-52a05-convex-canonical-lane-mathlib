import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.ConvexityAdmissibleClass

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  convexWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.convexSet A.object.convexFunction

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse