import BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean.CompartmentModel

namespace HautevilleHouse
namespace BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean

structure PharmacokineticParameter (M : CompartmentModel) where
  clearance : ℝ
  volume : ℝ
  halfLife : ℝ
  derived : Prop
  derivedTerm : derived

def PharmacokineticParameterClosed (M : CompartmentModel) (P : PharmacokineticParameter M) : Prop :=
  P.derived

theorem pharmacokinetic_parameter_closed (M : CompartmentModel) (P : PharmacokineticParameter M) :
    PharmacokineticParameterClosed M P := by
  exact P.derivedTerm

end BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean
end HautevilleHouse