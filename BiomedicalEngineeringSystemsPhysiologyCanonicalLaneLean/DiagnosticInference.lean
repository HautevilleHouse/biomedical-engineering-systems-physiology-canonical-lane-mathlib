import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean

structure DiagnosticInferencePackage where
  sensitivity : Float
  specificity : Float
  prevalence : Float
  positivePredictiveValue : Float
  negativePredictiveValue : Float
  likelihoodRatioPositive : Float
  likelihoodRatioNegative : Float

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.sensitivity ≥ 0 ∧ D.sensitivity ≤ 1 ∧ D.specificity ≥ 0 ∧ D.specificity ≤ 1

end BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean
end HautevilleHouse