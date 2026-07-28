import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean.CompartmentModel
import HautevilleHouse.BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean.Pharmacokinetics
import HautevilleHouse.BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean.DiagnosticInference
import HautevilleHouse.BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean.SurvivalAnalysis

namespace HautevilleHouse
namespace BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean

structure PhysiologySystemsEvidence where
  compartmentModel : CompartmentModelPackage
  compartmentModelClosed : CompartmentModelClosed compartmentModel
  pharmacokinetics : PharmacokineticsPackage
  pharmacokineticsClosed : PharmacokineticsClosed pharmacokinetics
  diagnosticInference : DiagnosticInferencePackage
  diagnosticInferenceClosed : DiagnosticInferenceClosed diagnosticInference
  survivalAnalysis : SurvivalAnalysisPackage
  survivalAnalysisClosed : SurvivalAnalysisClosed survivalAnalysis

def PhysiologySystemsClosed (E : PhysiologySystemsEvidence) : Prop :=
  E.compartmentModelClosed ∧ E.pharmacokineticsClosed ∧
  E.diagnosticInferenceClosed ∧ E.survivalAnalysisClosed

theorem physiology_systems_closed_from_evidence (E : PhysiologySystemsEvidence) :
    PhysiologySystemsClosed E := by
  exact And.intro E.compartmentModelClosed
    (And.intro E.pharmacokineticsClosed
      (And.intro E.diagnosticInferenceClosed E.survivalAnalysisClosed))

end BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean
end HautevilleHouse
