[![build status](https://gitlab.com/librehealth/lh-toolkit/badges/master/build.svg)](https://gitlab.com/librehealth/lh-toolkit/commits/master)

Looking to contribute? See [CONTRIBUTING.md](CONTRIBUTING.md) for how to get started. 

LibreHealth Toolkit is a software API and user interface components that can be used to create electronic health record systems.
Read more about the project & find documentation at: http://toolkit.librehealth.io

The project tree is set up as follows:

<table>
    <tr>
        <td>api/</td>
        <td>java and resource files for building the java api jar file.</td>
    </tr>
    <tr>
        <td>puppet</td>
        <td>Puppet scripts for local development and deployment.</td>
    </tr>
	<tr>
        <td>release-test</td>
        <td>Cucumber/selenium integration tests. Run daily against a running web application.</td>
    </tr>
    <tr>
        <td>test</td>
        <td>Maven project to share tools that are used for testing.</td>
    </tr>
    <tr>
        <td>tools</td>
        <td>Meta code used during compiling and testing. Does not go into any released binary (like doclets).</td>
    </tr>
    <tr>
        <td>web/</td>
        <td>java and resource files that are used in the web application.</td>
    </tr>
    <tr>
        <td>webapp/</td>
        <td>jsp files used in building the war file.</td>
    </tr>
    <tr> 
        <td>.gitlab-ci.yml</td>
        <td>Used to configure Gitlab CI. Each branch can have its own configuration.</td>
    </tr>
    <tr>
        <td>license-header.txt</td>
        <td>Used by license-maven-plugin to check license on all source code headers.</td>
    </tr>
    <tr>
        <td>pom.xml</td>
        <td>The main maven file used to build and package OpenMRS.</td>
    </tr>  
</table>