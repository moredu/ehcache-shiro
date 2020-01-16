#!/bin/bash
cd ..
echo ' Example1: '
mvn release:prepare-with-pom -DdryRun=true release:update-versions -DautoVersionSubmodules=true -DdryRun=true

echo ' Example2: mvn --batch-mode release:prepare-with-pom -DdryRun=true release:update-versions -DautoVersionSubmodules=true -DdryRun=true'
echo ' Example2: mvn --batch-mode release:branch -DbranchName=my-branch-1.2  release:prepare-with-pom -DdryRun=true release:update-versions -DautoVersionSubmodules=true -DdryRun=true'

cd bin