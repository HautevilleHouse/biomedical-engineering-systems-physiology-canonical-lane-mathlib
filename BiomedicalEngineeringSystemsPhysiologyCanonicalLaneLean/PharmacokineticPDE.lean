import BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean.CompartmentModel
import Mathlib.Analysis.PDE

namespace HautevilleHouse
namespace BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean

structure PharmacokineticPDE (M : CompartmentModel) where
  diffusionCoefficient : ℝ
  advectionVelocity : Vector ℝ M.numCompartments
  reactionTerm : ℝ → Vector ℝ M.numCompartments → Vector ℝ M.numCompartments
  wellPosed : Prop

structure PharmacokineticEvidence {M : CompartmentModel} (P : PharmacokineticPDE M) where
  diffusionPositive : P.diffusionCoefficient > 0
  reactionContinuity : Prop
  wellPosedClosed : P.wellPosed

def PharmacokineticClosed {M : CompartmentModel} (P : PharmacokineticPDE M) : Prop :=
  P.diffusionCoefficient > 0 ∧ P.wellPosed

theorem pharmacokinetic_closed_from_evidence {M : CompartmentModel} (P : PharmacokineticPDE M) (E : PharmacokineticEvidence P) : PharmacokineticClosed P := by
  exact And.intro E.diffusionPositive E.wellPosedClosed

end BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean
end HautevilleHouse