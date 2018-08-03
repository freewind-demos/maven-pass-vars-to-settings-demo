#!/bin/bash

rm -rf ~/.m2/repository/org/apache/commons/commons-lang3/3.7

mvn --settings ./user-settings.xml \
    -Dcenter-mirror-url=http://maven.aliyun.com/nexus/content/repositories/jcenter \
    clean compile \
    | grep aliyun

