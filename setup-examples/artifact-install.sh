#!/usr/bin/env bash

# Location where the Bean Validation TCK dist has been extracted
TCK_DIST=/mnt/c/Users/luise/git/tck/beanvalidation-tck-dist-3.0.0

# Parent pom
mvn org.apache.maven.plugins:maven-install-plugin:3.0.0-M1:install-file \
-Dfile=${TCK_DIST}/src/pom.xml -DgroupId=jakarta.validation \
-DartifactId=beanvalidation-tck-parent -Dversion=3.0.0 -Dpackaging=pom

# Install the tests jar
mvn org.apache.maven.plugins:maven-install-plugin:3.0.0-M1:install-file \
-Dfile=${TCK_DIST}/artifacts/beanvalidation-tck-tests-3.0.0.jar -DgroupId=jakarta.validation \
-DartifactId=beanvalidation-tck-tests -Dversion=3.0.0 -Dpackaging=jar

# Install the test-suite.xml
mvn org.apache.maven.plugins:maven-install-plugin:3.0.0-M1:install-file \
-Dfile=${TCK_DIST}/artifacts/tck-tests.xml -DgroupId=jakarta.validation \
-DartifactId=beanvalidation-tck-tests -Dversion=3.0.0 -Dpackaging=xml -Dclassifier=suite

