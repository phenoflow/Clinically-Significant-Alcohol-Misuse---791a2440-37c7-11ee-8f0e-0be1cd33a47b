cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  clinically-significant-alcohol-misuse---primary:
    run: clinically-significant-alcohol-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  clinically-significant-alcohol-misuse-drinker---primary:
    run: clinically-significant-alcohol-misuse-drinker---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse---primary/output
  harmful-clinically-significant-alcohol-misuse---primary:
    run: harmful-clinically-significant-alcohol-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-drinker---primary/output
  clinically-significant-alcohol-misuse-alcoholism---primary:
    run: clinically-significant-alcohol-misuse-alcoholism---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: harmful-clinically-significant-alcohol-misuse---primary/output
  clinically-significant-alcohol-misuse-induced---primary:
    run: clinically-significant-alcohol-misuse-induced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-alcoholism---primary/output
  clinically-significant-alcohol-misuse-abuse---primary:
    run: clinically-significant-alcohol-misuse-abuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-induced---primary/output
  clinically-significant-alcohol-misuse-addiction---primary:
    run: clinically-significant-alcohol-misuse-addiction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-abuse---primary/output
  clinically-significant-alcohol-misuse-detoxification---primary:
    run: clinically-significant-alcohol-misuse-detoxification---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-addiction---primary/output
  clinically-significant-alcohol-misuse-service---primary:
    run: clinically-significant-alcohol-misuse-service---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-detoxification---primary/output
  clinically-significant-alcohol-misuse-consumptn---primary:
    run: clinically-significant-alcohol-misuse-consumptn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-service---primary/output
  clinically-significant-alcohol-misuse-extended---primary:
    run: clinically-significant-alcohol-misuse-extended---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-consumptn---primary/output
  clinically-significant-alcohol-misuse-delirium---primary:
    run: clinically-significant-alcohol-misuse-delirium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-extended---primary/output
  clinically-significant-alcohol-misuse-korsakov---primary:
    run: clinically-significant-alcohol-misuse-korsakov---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-delirium---primary/output
  clinically-significant-alcohol-misuse-hallucinosis---primary:
    run: clinically-significant-alcohol-misuse-hallucinosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-korsakov---primary/output
  clinically-significant-alcohol-misuse-dementium---primary:
    run: clinically-significant-alcohol-misuse-dementium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-hallucinosis---primary/output
  xchronic-clinically-significant-alcohol-misuse---primary:
    run: xchronic-clinically-significant-alcohol-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-dementium---primary/output
  clinically-significant-alcohol-misuse-intoxication---primary:
    run: clinically-significant-alcohol-misuse-intoxication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: xchronic-clinically-significant-alcohol-misuse---primary/output
  clinically-significant-alcohol-misuse-paranoia---primary:
    run: clinically-significant-alcohol-misuse-paranoia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-intoxication---primary/output
  other-clinically-significant-alcohol-misuse---primary:
    run: other-clinically-significant-alcohol-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-paranoia---primary/output
  clinically-significant-alcohol-misuse-withdrawal---primary:
    run: clinically-significant-alcohol-misuse-withdrawal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: other-clinically-significant-alcohol-misuse---primary/output
  clinically-significant-alcohol-misuse-dependence---primary:
    run: clinically-significant-alcohol-misuse-dependence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-withdrawal---primary/output
  acute-clinically-significant-alcohol-misuse---primary:
    run: acute-clinically-significant-alcohol-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-dependence---primary/output
  clinically-significant-alcohol-misuse-unspecified---primary:
    run: clinically-significant-alcohol-misuse-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: acute-clinically-significant-alcohol-misuse---primary/output
  continuous-clinically-significant-alcohol-misuse---primary:
    run: continuous-clinically-significant-alcohol-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-unspecified---primary/output
  episodic-clinically-significant-alcohol-misuse---primary:
    run: episodic-clinically-significant-alcohol-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: continuous-clinically-significant-alcohol-misuse---primary/output
  clinically-significant-alcohol-misuse-remission---primary:
    run: clinically-significant-alcohol-misuse-remission---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: episodic-clinically-significant-alcohol-misuse---primary/output
  xmental-clinically-significant-alcohol-misuse---primary:
    run: xmental-clinically-significant-alcohol-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-remission---primary/output
  clinically-significant-alcohol-misuse-state---primary:
    run: clinically-significant-alcohol-misuse-state---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: xmental-clinically-significant-alcohol-misuse---primary/output
  clinically-significant-alcohol-misuse-behav---primary:
    run: clinically-significant-alcohol-misuse-behav---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-state---primary/output
  clinically-significant-alcohol-misuse-treatment---primary:
    run: clinically-significant-alcohol-misuse-treatment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-behav---primary/output
  clinically-significant-alcohol-misuse-cirrhosis---primary:
    run: clinically-significant-alcohol-misuse-cirrhosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-treatment---primary/output
  clinically-significant-alcohol-misuse-liver---primary:
    run: clinically-significant-alcohol-misuse-liver---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-cirrhosis---primary/output
  clinically-significant-alcohol-misuse-hepatitis---primary:
    run: clinically-significant-alcohol-misuse-hepatitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-liver---primary/output
  deterrent-clinically-significant-alcohol-misuse---primary:
    run: deterrent-clinically-significant-alcohol-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: clinically-significant-alcohol-misuse-hepatitis---primary/output
  adverse-clinically-significant-alcohol-misuse---primary:
    run: adverse-clinically-significant-alcohol-misuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: deterrent-clinically-significant-alcohol-misuse---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: adverse-clinically-significant-alcohol-misuse---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
