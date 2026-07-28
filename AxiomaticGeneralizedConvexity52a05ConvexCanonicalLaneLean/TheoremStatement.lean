import AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  convexConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "Axiomatic-Generalized-Convexity-52A05-Convex-Canonical-Lane",
  theoremName := "Axiomatic Generalized Convexity 52A05 Convex",
  theoremObject := "Hardy-Weinberg equilibrium, linkage analysis, sequence alignment, phylogenetics",
  classicalBoundary := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen",
  convexConstrainedStatement := "convex-constrained theorem certificate internalized through baseline gates and canonical lane closure",
  certificateLane := "convex_constrained",
  carriedRemainder := "classical source boundary carried as open formalization obligation"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "Axiomatic-Generalized-Convexity-52A05-Convex-Canonical-Lane" := by
  rfl

end AxiomaticGeneralizedConvexity52a05ConvexCanonicalLaneLean
end HautevilleHouse