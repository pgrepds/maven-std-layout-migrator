# maven-std-structure-migrator

A simple bash script for migrating a set of directories to the standard maven directory layout as described [here](https://maven.apache.org/guides/introduction/introduction-to-the-standard-directory-layout.html).\
<br/>All java files with full package path in /src and /tst are moved to /src/main/java and /src/test/java, respectively.
<br/>All non-java file are moved to the corresponding resource folders.
<br/>Both operations will maintain history (via git mv).

## Usage
The script expects the following structure 

/src<br/>
/tst

migrate.sh pathToRootDirectory

## License
### Apache 2.0 License
[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)  