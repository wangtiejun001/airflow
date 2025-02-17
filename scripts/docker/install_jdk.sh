# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
# shellcheck shell=bash
set -euo pipefail

install_jdk() {
    # install jdk
    apt-get update
    apt-get install -y --no-install-recommends  openjdk-17-jre openjdk-17-jdk
    echo '==========openjdk-11-jdk installed ======='
    java -version
    echo '==========openjdk-11-jdk installed ======='
    JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/" 
    export JAVA_HOME
}
install_jdk