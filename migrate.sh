#!/bin/bash 
cd $1
git mv src old
mkdir -p src/main/java
mkdir -p src/main/resources
cd old

find . -type f ! -name \*.java -printf '%h\n' | sort | uniq | xargs -n 1 -d '\n' -I '{}' echo mkdir -vp "../src/main/resources/{}"
find . -type f ! -name \*.java -printf '%h\n' | sort | uniq | xargs -n 1 -d '\n' -I '{}' mkdir -vp "../src/main/resources/{}"
find . -type f ! -name \*.java -exec echo git mv {} ../src/main/resources/{} \;
find . -type f ! -name \*.java -exec git mv {} ../src/main/resources/{} \;

find . -type f -name \*.java -printf '%h\n' | sort | uniq | xargs -n 1 -d '\n' -I '{}' echo mkdir -vp "../src/main/java/{}"
find . -type f -name \*.java -printf '%h\n' | sort | uniq | xargs -n 1 -d '\n' -I '{}' mkdir -vp "../src/main/java/{}"
find . -type f -name \*.java -exec echo git mv {} ../src/main/java/{} \;
find . -type f -name \*.java -exec git mv {} ../src/main/java/{} \;

cd ..
rm -rf old 

git mv tst old 
mkdir -p src/test/java
mkdir -p src/test/resources

cd old
find . -type f -name \*.java -printf '%h\n' | sort | uniq | xargs -n 1 -d '\n' -I '{}' echo mkdir -vp "../src/test/java/{}"
find . -type f -name \*.java -printf '%h\n' | sort | uniq | xargs -n 1 -d '\n' -I '{}' mkdir -vp "../src/test/java/{}"
find . -type f -name \*.java -exec echo git mv {} ../src/test/java/{} \;
find . -type f -name \*.java -exec git mv {} ../src/test/java/{} \;
find . -type f ! -name \*.java -printf '%h\n' | sort | uniq | xargs -n 1 -d '\n' -I '{}' echo mkdir -vp "../src/test/resources/{}"
find . -type f ! -name \*.java -printf '%h\n' | sort | uniq | xargs -n 1 -d '\n' -I '{}' mkdir -vp "../src/test/resources/{}"
find . -type f ! -name \*.java -exec echo git mv {} ../src/test/resources/{} \;
find . -type f ! -name \*.java -exec git mv {} ../src/test/resources/{} \;

cd ..
rm -rf old 