#!/bin/bash
for i in {1..43}
do
  export filelist="diff-file-$i"
  echo $filelist
  pmd-bin-***/bin/run.sh pmd -rulesets /Users/runner/work/_actions/ncino/powermode-scan/v1/pmd-rulesets/apexAndVisualForceRuleset.xml  \
    -format xml -encoding UTF-8 -failOnViolation ***  -minimumpriority 5  -suppressmarker NOPMD \
    -threads 1 -cache pmd-cache -debug -filelist $filelist -reportfile ./report.xml
done 