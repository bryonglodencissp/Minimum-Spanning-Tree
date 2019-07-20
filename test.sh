#!/bin/bash
javac *.java
java Main $1 > output
diff -u --ignore-space-change --strip-trailing-cr --ignore-blank-lines output $2 && echo '### SUCCESS: Files Are Identical! passed ###' || echo '### WARNING: Files Are Different! did not pass ###'
