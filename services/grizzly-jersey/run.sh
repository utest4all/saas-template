#!/bin/bash -e
export $(cat ./../../.env | grep -v ^# | xargs)
export SERVICES_GJ_ARTIFACT=$(mvn -q -Dexec.executable='echo' -Dexec.args='${project.groupId}.${project.artifactId}-${project.version}-jar-with-dependencies.${project.packaging}' --non-recursive org.codehaus.mojo:exec-maven-plugin:1.3.1:exec)
java -jar target/${SERVICES_GJ_ARTIFACT}
