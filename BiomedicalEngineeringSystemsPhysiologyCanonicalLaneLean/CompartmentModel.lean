import BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean

structure CompartmentModelPackage where
  compartments : Nat
  transferRates : Type u
  initialConditions : Type v
  solutionExists : Prop
  parameterIdentifiability : Prop

def CompartmentModelClosed (M : CompartmentModelPackage) : Prop :=
  M.solutionExists ∧ M.parameterIdentifiability

theorem compartment_model_closed (M : CompartmentModelPackage) : CompartmentModelClosed M := by
  exact And.intro M.solutionExists M.parameterIdentifiability

end BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean
end HautevilleHouse