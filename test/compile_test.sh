#!/usr/bin/env bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh


#### Tests

test_compile() {
  export CLOJURE_BUILD_CMD="clojure -h"
  compile
  assertCapturedSuccess
  assertCaptured "Installing OpenJDK 1.8"
  assertCaptured "Download complete"
  assertCaptured "Done installing"
  assertCaptured "Using CLOJURE_BUILD_CMD 'clojure -h'"
  assertCaptured "The clojure script is a runner for Clojuuure"
}

