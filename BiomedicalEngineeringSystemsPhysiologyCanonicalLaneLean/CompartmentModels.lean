import HautevilleHouse.BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean

structure CompartmentModelPackage where
  numCompartments : Nat
  rateMatrix : Type
  initialConditions : Type
  solutionOperator : Type
  linearTimeInvariant : Prop
  massBalance : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  linearTimeInvariantClosed : C.linearTimeInvariant
  massBalanceClosed : C.massBalance

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.linearTimeInvariant ∧ C.massBalance

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.linearTimeInvariantClosed E.massBalanceClosed

end BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean
end HautevilleHouse