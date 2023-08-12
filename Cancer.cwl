cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  cancer-malign---primary:
    run: cancer-malign---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  cancer---primary:
    run: cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: cancer-malign---primary/output
  cancer-mchoriocarcinoma---primary:
    run: cancer-mchoriocarcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: cancer---primary/output
  cancer-neopl---primary:
    run: cancer-neopl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: cancer-mchoriocarcinoma---primary/output
  cancer-prostate---primary:
    run: cancer-prostate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: cancer-neopl---primary/output
  cancer-merythroleukaemia---primary:
    run: cancer-merythroleukaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: cancer-prostate---primary/output
  mhepatocellular-cancer---primary:
    run: mhepatocellular-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: cancer-merythroleukaemia---primary/output
  cancer-pseudotumour---primary:
    run: cancer-pseudotumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: mhepatocellular-cancer---primary/output
  cancer-staging---primary:
    run: cancer-staging---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: cancer-pseudotumour---primary/output
  cancer-mlymphoma---primary:
    run: cancer-mlymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: cancer-staging---primary/output
  other-cancer---primary:
    run: other-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: cancer-mlymphoma---primary/output
  cancer-delivered---primary:
    run: cancer-delivered---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: other-cancer---primary/output
  cancer-treatment---primary:
    run: cancer-treatment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: cancer-delivered---primary/output
  cancer-chemotherapy---primary:
    run: cancer-chemotherapy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: cancer-treatment---primary/output
  primary-cancer---primary:
    run: primary-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: cancer-chemotherapy---primary/output
  intermediate-cancer---primary:
    run: intermediate-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: primary-cancer---primary/output
  cancer-region---primary:
    run: cancer-region---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: intermediate-cancer---primary/output
  cancers---primary:
    run: cancers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: cancer-region---primary/output
  mangiolipomatous-cancer---primary:
    run: mangiolipomatous-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: cancers---primary/output
  cancer-mcarcinosarcoma---primary:
    run: cancer-mcarcinosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: mangiolipomatous-cancer---primary/output
  cancer-trunkunspecified---primary:
    run: cancer-trunkunspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: cancer-mcarcinosarcoma---primary/output
  central-cancer---primary:
    run: central-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: cancer-trunkunspecified---primary/output
  cancer-majora---primary:
    run: cancer-majora---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: central-cancer---primary/output
  vestibular-cancer---primary:
    run: vestibular-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: cancer-majora---primary/output
  cancer-mosteosarcoma---primary:
    run: cancer-mosteosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: vestibular-cancer---primary/output
  madenoid-cancer---primary:
    run: madenoid-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: cancer-mosteosarcoma---primary/output
  laryngeal-cancer---primary:
    run: laryngeal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: madenoid-cancer---primary/output
  cricoid-cancer---primary:
    run: cricoid-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: laryngeal-cancer---primary/output
  endocervical-cancer---primary:
    run: endocervical-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: cricoid-cancer---primary/output
  cancer-siewert---primary:
    run: cancer-siewert---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: endocervical-cancer---primary/output
  cancer-polyposis---primary:
    run: cancer-polyposis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: cancer-siewert---primary/output
  cancer-colon---primary:
    run: cancer-colon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: cancer-polyposis---primary/output
  perianal-cancer---primary:
    run: perianal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: cancer-colon---primary/output
  mductal-cancer---primary:
    run: mductal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: perianal-cancer---primary/output
  cancer-mhepatobiliary---primary:
    run: cancer-mhepatobiliary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: mductal-cancer---primary/output
  mpancreatic-cancer---primary:
    run: mpancreatic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: cancer-mhepatobiliary---primary/output
  cancer-mmesothelioma---primary:
    run: cancer-mmesothelioma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: mpancreatic-cancer---primary/output
  intrapelvic-cancer---primary:
    run: intrapelvic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: cancer-mmesothelioma---primary/output
  mneuroepitheliomatous-cancer---primary:
    run: mneuroepitheliomatous-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: intrapelvic-cancer---primary/output
  mmesothelial-cancer---primary:
    run: mmesothelial-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: mneuroepitheliomatous-cancer---primary/output
  cancer-angiosarcoma---primary:
    run: cancer-angiosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: mmesothelial-cancer---primary/output
  cancer-dermatofibrosarcoma---primary:
    run: cancer-dermatofibrosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: cancer-angiosarcoma---primary/output
  cancer-mrespiratory---primary:
    run: cancer-mrespiratory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: cancer-dermatofibrosarcoma---primary/output
  cancer-forearm---primary:
    run: cancer-forearm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: cancer-mrespiratory---primary/output
  cancer-protuberan---primary:
    run: cancer-protuberan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: cancer-forearm---primary/output
  tympanic-cancer---primary:
    run: tympanic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: cancer-protuberan---primary/output
  axillary-cancer---primary:
    run: axillary-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: tympanic-cancer---primary/output
  ethmoid-cancer---primary:
    run: ethmoid-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: axillary-cancer---primary/output
  sphenoidal-cancer---primary:
    run: sphenoidal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: ethmoid-cancer---primary/output
  arytenoid-cancer---primary:
    run: arytenoid-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: sphenoidal-cancer---primary/output
  cancer-cuneiform---primary:
    run: cancer-cuneiform---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: arytenoid-cancer---primary/output
  mthyroid-cancer---primary:
    run: mthyroid-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: cancer-cuneiform---primary/output
  cancer-carina---primary:
    run: cancer-carina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: mthyroid-cancer---primary/output
  cancer-pancoast's---primary:
    run: cancer-pancoast's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: cancer-carina---primary/output
  cancer-pericardium---primary:
    run: cancer-pericardium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: cancer-pancoast's---primary/output
  cancer-mskin---primary:
    run: cancer-mskin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: cancer-pericardium---primary/output
  cancer-articulr---primary:
    run: cancer-articulr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: cancer-mskin---primary/output
  cancer-enchondromata---primary:
    run: cancer-enchondromata---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: cancer-articulr---primary/output
  cancer-mosteoma---primary:
    run: cancer-mosteoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: cancer-enchondromata---primary/output
  cancer-skull---primary:
    run: cancer-skull---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: cancer-mosteoma---primary/output
  occipital-cancer---primary:
    run: occipital-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: cancer-skull---primary/output
  maxillary-cancer---primary:
    run: maxillary-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: occipital-cancer---primary/output
  cancer-column---primary:
    run: cancer-column---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: maxillary-cancer---primary/output
  vertebral-cancer---primary:
    run: vertebral-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: cancer-column---primary/output
  cancer-phalange---primary:
    run: cancer-phalange---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: vertebral-cancer---primary/output
  sacral-cancer---primary:
    run: sacral-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: cancer-phalange---primary/output
  coccygeal-cancer---primary:
    run: coccygeal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: sacral-cancer---primary/output
  cancer-metatarsal---primary:
    run: cancer-metatarsal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: coccygeal-cancer---primary/output
  cancer-limbunspfd---primary:
    run: cancer-limbunspfd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: cancer-metatarsal---primary/output
  cancer-forehead---primary:
    run: cancer-forehead---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: cancer-limbunspfd---primary/output
  cancer-thumb---primary:
    run: cancer-thumb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: cancer-forehead---primary/output
  popliteal-cancer---primary:
    run: popliteal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: cancer-thumb---primary/output
  great-cancer---primary:
    run: great-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: popliteal-cancer---primary/output
  cancer-including---primary:
    run: cancer-including---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: great-cancer---primary/output
  female-cancer---primary:
    run: female-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: cancer-including---primary/output
  cancer-exocervix---primary:
    run: cancer-exocervix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: female-cancer---primary/output
  cancer-madnexal---primary:
    run: cancer-madnexal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: cancer-exocervix---primary/output
  cancer-ovary---primary:
    run: cancer-ovary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: cancer-madnexal---primary/output
  fallopian-cancer---primary:
    run: fallopian-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: cancer-ovary---primary/output
  cancer-vulva---primary:
    run: cancer-vulva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: fallopian-cancer---primary/output
  cancer-mseminoma---primary:
    run: cancer-mseminoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: cancer-vulva---primary/output
  gastrointestinal-cancer---primary:
    run: gastrointestinal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: cancer-mseminoma---primary/output
  cancer-ureter---primary:
    run: cancer-ureter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: gastrointestinal-cancer---primary/output
  cancer-hypernephroma---primary:
    run: cancer-hypernephroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: cancer-ureter---primary/output
  cancer-eyeball---primary:
    run: cancer-eyeball---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: cancer-hypernephroma---primary/output
  cancer-retina---primary:
    run: cancer-retina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: cancer-eyeball---primary/output
  cancer-conjunctiva---primary:
    run: cancer-conjunctiva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: cancer-retina---primary/output
  cancer-cornea---primary:
    run: cancer-cornea---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: cancer-conjunctiva---primary/output
  cancer-cerebrum---primary:
    run: cancer-cerebrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: cancer-cornea---primary/output
  cancer-paraganglia---primary:
    run: cancer-paraganglia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: cancer-cerebrum---primary/output
  cancer-cortex---primary:
    run: cancer-cortex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: cancer-paraganglia---primary/output
  medullary-cancer---primary:
    run: medullary-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: cancer-cortex---primary/output
  cancer-mnerve---primary:
    run: cancer-mnerve---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: medullary-cancer---primary/output
  cancer-molfactory---primary:
    run: cancer-molfactory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: cancer-mnerve---primary/output
  cancer-vfolowup---primary:
    run: cancer-vfolowup---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: cancer-molfactory---primary/output
  cancer-chondromalacia---primary:
    run: cancer-chondromalacia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: cancer-vfolowup---primary/output
  cancer-mneuroendocrine---primary:
    run: cancer-mneuroendocrine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: cancer-chondromalacia---primary/output
  mparathyroid-cancer---primary:
    run: mparathyroid-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: cancer-mneuroendocrine---primary/output
  mpituitary-cancer---primary:
    run: mpituitary-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: mparathyroid-cancer---primary/output
  cancer-mglomu---primary:
    run: cancer-mglomu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: mpituitary-cancer---primary/output
  cancer-carcinoma---primary:
    run: cancer-carcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: cancer-mglomu---primary/output
  independent-cancer---primary:
    run: independent-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: cancer-carcinoma---primary/output
  cancer-msecondary---primary:
    run: cancer-msecondary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: independent-cancer---primary/output
  cancer-mreticulosarcoma---primary:
    run: cancer-mreticulosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: cancer-msecondary---primary/output
  lymphoproliferative-cancer---primary:
    run: lymphoproliferative-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: cancer-mreticulosarcoma---primary/output
  cancer-lymphosarcoma---primary:
    run: cancer-lymphosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: lymphoproliferative-cancer---primary/output
  cancer-spleen---primary:
    run: cancer-spleen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: cancer-lymphosarcoma---primary/output
  cancer-mhodgkin---primary:
    run: cancer-mhodgkin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: cancer-spleen---primary/output
  cancer-granuloma---primary:
    run: cancer-granuloma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: cancer-mhodgkin---primary/output
  cancer-predominance---primary:
    run: cancer-predominance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: cancer-granuloma---primary/output
  thoracic-cancer---primary:
    run: thoracic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: cancer-predominance---primary/output
  abdominal-cancer---primary:
    run: abdominal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: thoracic-cancer---primary/output
  cancer-mmixed---primary:
    run: cancer-mmixed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: abdominal-cancer---primary/output
  mprolymphocytic-cancer---primary:
    run: mprolymphocytic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: cancer-mmixed---primary/output
  mlymphocytic-cancer---primary:
    run: mlymphocytic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: mprolymphocytic-cancer---primary/output
  classical-cancer---primary:
    run: classical-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: mlymphocytic-cancer---primary/output
  mlymphoid-cancer---primary:
    run: mlymphoid-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: classical-cancer---primary/output
  cancer-mmycosis---primary:
    run: cancer-mmycosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: mlymphoid-cancer---primary/output
  cancer-sezary---primary:
    run: cancer-sezary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: cancer-mmycosis---primary/output
  cancer-reticuloendotheliosis---primary:
    run: cancer-reticuloendotheliosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: cancer-sezary---primary/output
  cancer-letterersiwe---primary:
    run: cancer-letterersiwe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: cancer-reticuloendotheliosis---primary/output
  cancer-noninfiltrating---primary:
    run: cancer-noninfiltrating---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: cancer-letterersiwe---primary/output
  immunoblastic-cancer---primary:
    run: immunoblastic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: cancer-noninfiltrating---primary/output
  mlymphoblastic-cancer---primary:
    run: mlymphoblastic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: immunoblastic-cancer---primary/output
  different-cancer---primary:
    run: different-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: mlymphoblastic-cancer---primary/output
  nonfollicular-cancer---primary:
    run: nonfollicular-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: different-cancer---primary/output
  centroblasticcentrocytic-cancer---primary:
    run: centroblasticcentrocytic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: nonfollicular-cancer---primary/output
  cancer-follicle---primary:
    run: cancer-follicle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: centroblasticcentrocytic-cancer---primary/output
  cancer-nkcell---primary:
    run: cancer-nkcell---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: cancer-follicle---primary/output
  cutaneous-cancer---primary:
    run: cutaneous-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: cancer-nkcell---primary/output
  splenic-cancer---primary:
    run: splenic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: cutaneous-cancer---primary/output
  cancer-periph---primary:
    run: cancer-periph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: splenic-cancer---primary/output
  cancer-reticulosis---primary:
    run: cancer-reticulosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: cancer-periph---primary/output
  cancer-myelomatosis---primary:
    run: cancer-myelomatosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: cancer-reticulosis---primary/output
  cancer-kahler's---primary:
    run: cancer-kahler's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: cancer-myelomatosis---primary/output
  cancer-mplasmacytoma---primary:
    run: cancer-mplasmacytoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: cancer-kahler's---primary/output
  solitary-cancer---primary:
    run: solitary-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: cancer-mplasmacytoma---primary/output
  cancer-msubacute---primary:
    run: cancer-msubacute---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: solitary-cancer---primary/output
  cancer-madult---primary:
    run: cancer-madult---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: cancer-msubacute---primary/output
  mmyeloid-cancer---primary:
    run: mmyeloid-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: cancer-madult---primary/output
  mgranulocytic-cancer---primary:
    run: mgranulocytic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: mmyeloid-cancer---primary/output
  meosinophilic-cancer---primary:
    run: meosinophilic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: mgranulocytic-cancer---primary/output
  cancer-chloroma---primary:
    run: cancer-chloroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: meosinophilic-cancer---primary/output
  monoblastic-cancer---primary:
    run: monoblastic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule145
      potentialCases:
        id: potentialCases
        source: cancer-chloroma---primary/output
  cancer-guglielmo's---primary:
    run: cancer-guglielmo's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule146
      potentialCases:
        id: potentialCases
        source: monoblastic-cancer---primary/output
  myeloproliferative-cancer---primary:
    run: myeloproliferative-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule147
      potentialCases:
        id: potentialCases
        source: cancer-guglielmo's---primary/output
  promyelocytic-cancer---primary:
    run: promyelocytic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule148
      potentialCases:
        id: potentialCases
        source: myeloproliferative-cancer---primary/output
  cancer-behaviour---primary:
    run: cancer-behaviour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule149
      potentialCases:
        id: potentialCases
        source: promyelocytic-cancer---primary/output
  mrenal-cancer---primary:
    run: mrenal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule150
      potentialCases:
        id: potentialCases
        source: cancer-behaviour---primary/output
  cancer-mcystosarcoma---primary:
    run: cancer-mcystosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule151
      potentialCases:
        id: potentialCases
        source: mrenal-cancer---primary/output
  cancer-mtumour---primary:
    run: cancer-mtumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule152
      potentialCases:
        id: potentialCases
        source: cancer-mcystosarcoma---primary/output
  cancer-mcarcinoma---primary:
    run: cancer-mcarcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule153
      potentialCases:
        id: potentialCases
        source: cancer-mtumour---primary/output
  cancer-mepithelioma---primary:
    run: cancer-mepithelioma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule154
      potentialCases:
        id: potentialCases
        source: cancer-mcarcinoma---primary/output
  mfibroepithelial-cancer---primary:
    run: mfibroepithelial-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule155
      potentialCases:
        id: potentialCases
        source: cancer-mepithelioma---primary/output
  pillar-cancer---primary:
    run: pillar-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule156
      potentialCases:
        id: potentialCases
        source: mfibroepithelial-cancer---primary/output
  cancer-epithelioma---primary:
    run: cancer-epithelioma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule157
      potentialCases:
        id: potentialCases
        source: pillar-cancer---primary/output
  cancer-mcystadenoma---primary:
    run: cancer-mcystadenoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule158
      potentialCases:
        id: potentialCases
        source: cancer-epithelioma---primary/output
  madenomatoid-cancer---primary:
    run: madenomatoid-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule159
      potentialCases:
        id: potentialCases
        source: cancer-mcystadenoma---primary/output
  adenocarcinomatous-cancer---primary:
    run: adenocarcinomatous-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule160
      potentialCases:
        id: potentialCases
        source: madenomatoid-cancer---primary/output
  msuperficial-cancer---primary:
    run: msuperficial-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule161
      potentialCases:
        id: potentialCases
        source: adenocarcinomatous-cancer---primary/output
  cancer-combined---primary:
    run: cancer-combined---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule162
      potentialCases:
        id: potentialCases
        source: msuperficial-cancer---primary/output
  mtubular-cancer---primary:
    run: mtubular-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule163
      potentialCases:
        id: potentialCases
        source: cancer-combined---primary/output
  alveolar-cancer---primary:
    run: alveolar-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule164
      potentialCases:
        id: potentialCases
        source: mtubular-cancer---primary/output
  villous-cancer---primary:
    run: villous-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule165
      potentialCases:
        id: potentialCases
        source: alveolar-cancer---primary/output
  moxyphilic-cancer---primary:
    run: moxyphilic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule166
      potentialCases:
        id: potentialCases
        source: villous-cancer---primary/output
  cancer-[m]hypernephroma---primary:
    run: cancer-[m]hypernephroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule167
      potentialCases:
        id: potentialCases
        source: moxyphilic-cancer---primary/output
  cancer-msweat---primary:
    run: cancer-msweat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule168
      potentialCases:
        id: potentialCases
        source: cancer-[m]hypernephroma---primary/output
  cancer-mapocrine---primary:
    run: cancer-mapocrine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule169
      potentialCases:
        id: potentialCases
        source: cancer-msweat---primary/output
  msebaceous-cancer---primary:
    run: msebaceous-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule170
      potentialCases:
        id: potentialCases
        source: cancer-mapocrine---primary/output
  epidermoid-cancer---primary:
    run: epidermoid-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule171
      potentialCases:
        id: potentialCases
        source: msebaceous-cancer---primary/output
  mserous-cancer---primary:
    run: mserous-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule172
      potentialCases:
        id: potentialCases
        source: epidermoid-cancer---primary/output
  mmucinous-cancer---primary:
    run: mmucinous-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule173
      potentialCases:
        id: potentialCases
        source: mserous-cancer---primary/output
  mlobular-cancer---primary:
    run: mlobular-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule174
      potentialCases:
        id: potentialCases
        source: mmucinous-cancer---primary/output
  cancer-mcomedocarcinoma---primary:
    run: cancer-mcomedocarcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule175
      potentialCases:
        id: potentialCases
        source: mlobular-cancer---primary/output
  cancer-lymph---primary:
    run: cancer-lymph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule176
      potentialCases:
        id: potentialCases
        source: cancer-mcomedocarcinoma---primary/output
  mfibromatous-cancer---primary:
    run: mfibromatous-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule177
      potentialCases:
        id: potentialCases
        source: cancer-lymph---primary/output
  cancer-fibrosarcoma---primary:
    run: cancer-fibrosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule178
      potentialCases:
        id: potentialCases
        source: mfibromatous-cancer---primary/output
  cancer-minfantile---primary:
    run: cancer-minfantile---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule179
      potentialCases:
        id: potentialCases
        source: cancer-fibrosarcoma---primary/output
  cancer-sarcoma---primary:
    run: cancer-sarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule180
      potentialCases:
        id: potentialCases
        source: cancer-minfantile---primary/output
  cancer-mpigmented---primary:
    run: cancer-mpigmented---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule181
      potentialCases:
        id: potentialCases
        source: cancer-sarcoma---primary/output
  mmyomatous-cancer---primary:
    run: mmyomatous-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule182
      potentialCases:
        id: potentialCases
        source: cancer-mpigmented---primary/output
  cancer-myosarcoma---primary:
    run: cancer-myosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule183
      potentialCases:
        id: potentialCases
        source: mmyomatous-cancer---primary/output
  mlipomatous-cancer---primary:
    run: mlipomatous-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule184
      potentialCases:
        id: potentialCases
        source: cancer-myosarcoma---primary/output
  cancer-liposarcoma---primary:
    run: cancer-liposarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule185
      potentialCases:
        id: potentialCases
        source: mlipomatous-cancer---primary/output
  cancer-mliposarcoma---primary:
    run: cancer-mliposarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule186
      potentialCases:
        id: potentialCases
        source: cancer-liposarcoma---primary/output
  cancer-mmyoma---primary:
    run: cancer-mmyoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule187
      potentialCases:
        id: potentialCases
        source: cancer-mliposarcoma---primary/output
  mleiomyomatous-cancer---primary:
    run: mleiomyomatous-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule188
      potentialCases:
        id: potentialCases
        source: cancer-mmyoma---primary/output
  mangiomyomatous-cancer---primary:
    run: mangiomyomatous-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule189
      potentialCases:
        id: potentialCases
        source: mleiomyomatous-cancer---primary/output
  mrhabdomyomatous-cancer---primary:
    run: mrhabdomyomatous-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule190
      potentialCases:
        id: potentialCases
        source: mangiomyomatous-cancer---primary/output
  embryonal-cancer---primary:
    run: embryonal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule191
      potentialCases:
        id: potentialCases
        source: mrhabdomyomatous-cancer---primary/output
  cancer-msarcoma---primary:
    run: cancer-msarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule192
      potentialCases:
        id: potentialCases
        source: embryonal-cancer---primary/output
  cancer-stroma---primary:
    run: cancer-stroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule193
      potentialCases:
        id: potentialCases
        source: cancer-msarcoma---primary/output
  cancer-madenosarcoma---primary:
    run: cancer-madenosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule194
      potentialCases:
        id: potentialCases
        source: cancer-stroma---primary/output
  biphasic-cancer---primary:
    run: biphasic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule195
      potentialCases:
        id: potentialCases
        source: cancer-madenosarcoma---primary/output
  mcystic-cancer---primary:
    run: mcystic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule196
      potentialCases:
        id: potentialCases
        source: biphasic-cancer---primary/output
  cancer-mgerm---primary:
    run: cancer-mgerm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule197
      potentialCases:
        id: potentialCases
        source: mcystic-cancer---primary/output
  cancer-mteratoma---primary:
    run: cancer-mteratoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule198
      potentialCases:
        id: potentialCases
        source: cancer-mgerm---primary/output
  mtrophoblastic-cancer---primary:
    run: mtrophoblastic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule199
      potentialCases:
        id: potentialCases
        source: cancer-mteratoma---primary/output
  cancer-chondrosarcoma---primary:
    run: cancer-chondrosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule200
      potentialCases:
        id: potentialCases
        source: mtrophoblastic-cancer---primary/output
  cancer-examination---primary:
    run: cancer-examination---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule201
      potentialCases:
        id: potentialCases
        source: cancer-chondrosarcoma---primary/output
  mchondromatous-cancer---primary:
    run: mchondromatous-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule202
      potentialCases:
        id: potentialCases
        source: cancer-examination---primary/output
  cancer-chondroma---primary:
    run: cancer-chondroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule203
      potentialCases:
        id: potentialCases
        source: mchondromatous-cancer---primary/output
  mameloblastic-cancer---primary:
    run: mameloblastic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule204
      potentialCases:
        id: potentialCases
        source: cancer-chondroma---primary/output
  cancer-meninge---primary:
    run: cancer-meninge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule205
      potentialCases:
        id: potentialCases
        source: mameloblastic-cancer---primary/output
  cancer-plasma---primary:
    run: cancer-plasma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule206
      potentialCases:
        id: potentialCases
        source: cancer-meninge---primary/output
  cancer-myelofibrosis---primary:
    run: cancer-myelofibrosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule207
      potentialCases:
        id: potentialCases
        source: cancer-plasma---primary/output
  cancer-mmisc---primary:
    run: cancer-mmisc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule208
      potentialCases:
        id: potentialCases
        source: cancer-myelofibrosis---primary/output
  cancer-mleukaemia---primary:
    run: cancer-mleukaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule209
      potentialCases:
        id: potentialCases
        source: cancer-mmisc---primary/output
  cancer-[m]chloroma---primary:
    run: cancer-[m]chloroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule210
      potentialCases:
        id: potentialCases
        source: cancer-mleukaemia---primary/output
  cancer-panmyelosis---primary:
    run: cancer-panmyelosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule211
      potentialCases:
        id: potentialCases
        source: cancer-[m]chloroma---primary/output
  mchronic-cancer---primary:
    run: mchronic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule212
      potentialCases:
        id: potentialCases
        source: cancer-panmyelosis---primary/output
  cancer-osteoma---primary:
    run: cancer-osteoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule213
      potentialCases:
        id: potentialCases
        source: mchronic-cancer---primary/output
  cancer-puerperium---primary:
    run: cancer-puerperium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule214
      potentialCases:
        id: potentialCases
        source: cancer-osteoma---primary/output
  cancer-affecting---primary:
    run: cancer-affecting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule215
      potentialCases:
        id: potentialCases
        source: cancer-puerperium---primary/output
  cancer-finger---primary:
    run: cancer-finger---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule216
      potentialCases:
        id: potentialCases
        source: cancer-affecting---primary/output
  cancer-ankle---primary:
    run: cancer-ankle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule217
      potentialCases:
        id: potentialCases
        source: cancer-finger---primary/output
  cancer-lesser---primary:
    run: cancer-lesser---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule218
      potentialCases:
        id: potentialCases
        source: cancer-ankle---primary/output
  cancer-advice---primary:
    run: cancer-advice---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule219
      potentialCases:
        id: potentialCases
        source: cancer-lesser---primary/output
  cancer-inventory---primary:
    run: cancer-inventory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule220
      potentialCases:
        id: potentialCases
        source: cancer-advice---primary/output
  mlymphatic-cancer---primary:
    run: mlymphatic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule221
      potentialCases:
        id: potentialCases
        source: cancer-inventory---primary/output
  cancer-surgery---primary:
    run: cancer-surgery---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule222
      potentialCases:
        id: potentialCases
        source: mlymphatic-cancer---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule223
      potentialCases:
        id: potentialCases
        source: cancer-surgery---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
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
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
  inputModule145:
    id: inputModule145
    doc: Python implementation unit
    type: File
  inputModule146:
    id: inputModule146
    doc: Python implementation unit
    type: File
  inputModule147:
    id: inputModule147
    doc: Python implementation unit
    type: File
  inputModule148:
    id: inputModule148
    doc: Python implementation unit
    type: File
  inputModule149:
    id: inputModule149
    doc: Python implementation unit
    type: File
  inputModule150:
    id: inputModule150
    doc: Python implementation unit
    type: File
  inputModule151:
    id: inputModule151
    doc: Python implementation unit
    type: File
  inputModule152:
    id: inputModule152
    doc: Python implementation unit
    type: File
  inputModule153:
    id: inputModule153
    doc: Python implementation unit
    type: File
  inputModule154:
    id: inputModule154
    doc: Python implementation unit
    type: File
  inputModule155:
    id: inputModule155
    doc: Python implementation unit
    type: File
  inputModule156:
    id: inputModule156
    doc: Python implementation unit
    type: File
  inputModule157:
    id: inputModule157
    doc: Python implementation unit
    type: File
  inputModule158:
    id: inputModule158
    doc: Python implementation unit
    type: File
  inputModule159:
    id: inputModule159
    doc: Python implementation unit
    type: File
  inputModule160:
    id: inputModule160
    doc: Python implementation unit
    type: File
  inputModule161:
    id: inputModule161
    doc: Python implementation unit
    type: File
  inputModule162:
    id: inputModule162
    doc: Python implementation unit
    type: File
  inputModule163:
    id: inputModule163
    doc: Python implementation unit
    type: File
  inputModule164:
    id: inputModule164
    doc: Python implementation unit
    type: File
  inputModule165:
    id: inputModule165
    doc: Python implementation unit
    type: File
  inputModule166:
    id: inputModule166
    doc: Python implementation unit
    type: File
  inputModule167:
    id: inputModule167
    doc: Python implementation unit
    type: File
  inputModule168:
    id: inputModule168
    doc: Python implementation unit
    type: File
  inputModule169:
    id: inputModule169
    doc: Python implementation unit
    type: File
  inputModule170:
    id: inputModule170
    doc: Python implementation unit
    type: File
  inputModule171:
    id: inputModule171
    doc: Python implementation unit
    type: File
  inputModule172:
    id: inputModule172
    doc: Python implementation unit
    type: File
  inputModule173:
    id: inputModule173
    doc: Python implementation unit
    type: File
  inputModule174:
    id: inputModule174
    doc: Python implementation unit
    type: File
  inputModule175:
    id: inputModule175
    doc: Python implementation unit
    type: File
  inputModule176:
    id: inputModule176
    doc: Python implementation unit
    type: File
  inputModule177:
    id: inputModule177
    doc: Python implementation unit
    type: File
  inputModule178:
    id: inputModule178
    doc: Python implementation unit
    type: File
  inputModule179:
    id: inputModule179
    doc: Python implementation unit
    type: File
  inputModule180:
    id: inputModule180
    doc: Python implementation unit
    type: File
  inputModule181:
    id: inputModule181
    doc: Python implementation unit
    type: File
  inputModule182:
    id: inputModule182
    doc: Python implementation unit
    type: File
  inputModule183:
    id: inputModule183
    doc: Python implementation unit
    type: File
  inputModule184:
    id: inputModule184
    doc: Python implementation unit
    type: File
  inputModule185:
    id: inputModule185
    doc: Python implementation unit
    type: File
  inputModule186:
    id: inputModule186
    doc: Python implementation unit
    type: File
  inputModule187:
    id: inputModule187
    doc: Python implementation unit
    type: File
  inputModule188:
    id: inputModule188
    doc: Python implementation unit
    type: File
  inputModule189:
    id: inputModule189
    doc: Python implementation unit
    type: File
  inputModule190:
    id: inputModule190
    doc: Python implementation unit
    type: File
  inputModule191:
    id: inputModule191
    doc: Python implementation unit
    type: File
  inputModule192:
    id: inputModule192
    doc: Python implementation unit
    type: File
  inputModule193:
    id: inputModule193
    doc: Python implementation unit
    type: File
  inputModule194:
    id: inputModule194
    doc: Python implementation unit
    type: File
  inputModule195:
    id: inputModule195
    doc: Python implementation unit
    type: File
  inputModule196:
    id: inputModule196
    doc: Python implementation unit
    type: File
  inputModule197:
    id: inputModule197
    doc: Python implementation unit
    type: File
  inputModule198:
    id: inputModule198
    doc: Python implementation unit
    type: File
  inputModule199:
    id: inputModule199
    doc: Python implementation unit
    type: File
  inputModule200:
    id: inputModule200
    doc: Python implementation unit
    type: File
  inputModule201:
    id: inputModule201
    doc: Python implementation unit
    type: File
  inputModule202:
    id: inputModule202
    doc: Python implementation unit
    type: File
  inputModule203:
    id: inputModule203
    doc: Python implementation unit
    type: File
  inputModule204:
    id: inputModule204
    doc: Python implementation unit
    type: File
  inputModule205:
    id: inputModule205
    doc: Python implementation unit
    type: File
  inputModule206:
    id: inputModule206
    doc: Python implementation unit
    type: File
  inputModule207:
    id: inputModule207
    doc: Python implementation unit
    type: File
  inputModule208:
    id: inputModule208
    doc: Python implementation unit
    type: File
  inputModule209:
    id: inputModule209
    doc: Python implementation unit
    type: File
  inputModule210:
    id: inputModule210
    doc: Python implementation unit
    type: File
  inputModule211:
    id: inputModule211
    doc: Python implementation unit
    type: File
  inputModule212:
    id: inputModule212
    doc: Python implementation unit
    type: File
  inputModule213:
    id: inputModule213
    doc: Python implementation unit
    type: File
  inputModule214:
    id: inputModule214
    doc: Python implementation unit
    type: File
  inputModule215:
    id: inputModule215
    doc: Python implementation unit
    type: File
  inputModule216:
    id: inputModule216
    doc: Python implementation unit
    type: File
  inputModule217:
    id: inputModule217
    doc: Python implementation unit
    type: File
  inputModule218:
    id: inputModule218
    doc: Python implementation unit
    type: File
  inputModule219:
    id: inputModule219
    doc: Python implementation unit
    type: File
  inputModule220:
    id: inputModule220
    doc: Python implementation unit
    type: File
  inputModule221:
    id: inputModule221
    doc: Python implementation unit
    type: File
  inputModule222:
    id: inputModule222
    doc: Python implementation unit
    type: File
  inputModule223:
    id: inputModule223
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
