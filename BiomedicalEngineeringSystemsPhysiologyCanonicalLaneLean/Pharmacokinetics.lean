import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean

structure PharmacokineticsPackage where
  absorptionRate : Float
  distributionVolume : Float
  eliminationRate : Float
  bioavailability : Float
  halfLife : Float
  dose : Float
  timePoints : List Float
  concentrationData : List Float

def PharmacokineticsClosed (P : PharmacokineticsPackage) : Prop :=
  P.absorptionRate > 0 ∧ P.distributionVolume > 0 ∧ P.eliminationRate > 0

end BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean
end HautevilleHouse