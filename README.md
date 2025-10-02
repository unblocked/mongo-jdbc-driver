# MongoDB JDBC Driver

[![Apache licensed](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](./license.txt)
[![Latest Release](https://img.shields.io/github/v/release/datagrip/mongo-jdbc-driver?label=latest)](https://github.com/DataGrip/mongo-jdbc-driver/releases/tag/v1.20)

Type 4 JDBC driver that allows Java programs to connect to a MongoDB database.

This driver is embedded into [DataGrip](https://www.jetbrains.com/datagrip/features/mongodb/).

### Download

You can download the precompiled driver (jar) on the [releases page](https://github.com/DataGrip/mongo-jdbc-driver/releases).

### Build

```
# Linux, MacOs
./gradlew shadowJar

# Windows
gradlew.bat shadowJar
```

You will find driver (jar) in ```build/libs```.

### Publish to Local Maven Repository

You can publish the driver to a local Maven repository in the `.maven` directory within the repository:

```bash
# Using Make (recommended)
make publish

# Or using Gradle directly
./gradlew clean shadowJar publishToMavenLocal -Dmaven.repo.local=.maven
```

The artifact will be published to `.maven/com/dbschema/mongo-jdbc-driver/1.20/`.

To use the published artifact in another project, add the local repository to your build configuration:

**Gradle:**
```gradle
repositories {
    maven {
        url = uri("path/to/mongo-jdbc-driver/.maven")
    }
}

dependencies {
    implementation 'com.dbschema:mongo-jdbc-driver:1.20'
}
```

**Maven:**
```xml
<repositories>
    <repository>
        <id>local-maven</id>
        <url>file://path/to/mongo-jdbc-driver/.maven</url>
    </repository>
</repositories>

<dependencies>
    <dependency>
        <groupId>com.dbschema</groupId>
        <artifactId>mongo-jdbc-driver</artifactId>
        <version>1.20</version>
    </dependency>
</dependencies>
```
