import HautevilleHouse.BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean.CompartmentModels

namespace HautevilleHouse
namespace BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean

structure PharmacokineticInferencePackage {C : CompartmentModelPackage} where
  concentrationData : Type
  parameterEstimates : Type
  identifiability : Prop
  optimalDesign : Prop

structure PharmacokineticInferenceEvidence {C : CompartmentModelPackage}
    (P : PharmacokineticInferencePackage C) where
  identifiabilityClosed : P.identifiability
  optimalDesignClosed : P.optimalDesign

def PharmacokineticInferenceClosed {C : CompartmentModelPackage}
    (P : PharmacokineticInferencePackage C) : Prop :=
  P.identifiability ∧ P.optimalDesign

theorem pharmacokinetic_inference_closed_from_evidence {C : CompartmentModelPackage}
    (P : PharmacokineticInferencePackage C) (E : PharmacokineticInferenceEvidence P) :
    PharmacokineticInferenceClosed P := by
  exact And.intro E.identifiabilityClosed E.optimalDesignClosed

end BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean
end HautevilleHouse