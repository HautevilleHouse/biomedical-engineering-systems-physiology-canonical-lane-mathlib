import BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean

structure SurvivalModel where
  hazardFunction : ℝ → ℝ
  survivalFunction : ℝ → ℝ
  cumulativeHazard : ℝ → ℝ
  proportionalHazards : Prop

structure SurvivalEvidence (S : SurvivalModel) where
  hazardNonnegative : ∀ t, S.hazardFunction t ≥ 0
  survivalFromHazard : ∀ t, S.survivalFunction t = Real.exp (-S.cumulativeHazard t)
  proportionalHazardsClosed : S.proportionalHazards

def SurvivalClosed (S : SurvivalModel) : Prop :=
  (∀ t, S.hazardFunction t ≥ 0) ∧ S.proportionalHazards

theorem survival_closed_from_evidence (S : SurvivalModel) (E : SurvivalEvidence S) : SurvivalClosed S := by
  exact And.intro E.hazardNonnegative E.proportionalHazardsClosed

end BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean
end HautevilleHouse