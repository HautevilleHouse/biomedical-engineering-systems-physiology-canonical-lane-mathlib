import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean

structure AdmittedObject where
  system : Type u
  modelParameters : Prop
  diagnosticOutput : Prop
  conclusion : diagnosticOutput

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end BiomedicalEngineeringSystemsPhysiologyCanonicalLaneLean
end HautevilleHouse