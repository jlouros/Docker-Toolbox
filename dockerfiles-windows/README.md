# Oracle Java on Docker

Build a Docker image containing Oracle Java (Server JRE specifically).

The Oracle Java Server JRE provides the same features as Oracle Java JDK commonly required for Server-side Applications (i.e. Java EE application servers). For more information about Server JRE, visit this [release notes](http://www.oracle.com/technetwork/java/javase/7u21-relnotes-1932873.html#serverjre).

## Wiremock for Windows Nano Server

[Download Server JRE 8](http://www.oracle.com/technetwork/java/javase/downloads/server-jre8-downloads-2133154.html) `.tar.gz` file and drop it inside this (current) folder.

Update the `./wiremock-nano/Dockerfile` to use the downloaded JRE version.

Build image:

``` powershell
PS> docker build -t wiremock:nano -f wiremock-nano/Dockerfile .
```
