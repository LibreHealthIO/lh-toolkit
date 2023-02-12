Project Title: LibreHealthIO/lh-toolkit

About LibreHealth:

According to the librehealth.io website about us section, 
"LibreHealth is a collaborative community for free & open source software projects in Health IT, 
and is a member project of Software Freedom Conservancy."

According to librehealth.io, LibreHealth can be described with the following terms: 
Meritocracy, Openness, Outcome-Driven, Transparency, Umbrella Organization, and  User-Driven.

About Docker

Docker is required to use the following toolkit as suggested by the installation steps below. 
Docker is a software that was first released in 2013, that provides for the storage of other forms of software in "containers". 
The containers are hosted on a cloud based docker engine. Docker provides for increased automation and efficiency when it comes to the development of software applications.

Table of Contents
Title of Project
Installation Steps
Credits
Contributing
Project Description
Project Tree

Installation Steps:

The following installation instructions are utilizing an advanced installation setting and are intended primarily for software developers.

1. Complete the "Running the project" guide.
https://docs.librehealth.io/projects/toolkit/guides/development/index.html#running-the-project

2. Go to the URL where the project is and select your language.
localhost:8080/openmrs

3. You need MySQL database to install LH Toolkit.

4. It is recommended to use a Docker container.

5. In the terminal, type this: docker-compose -f docker-compose.dev.yml up -d db

6. Continue to install MySQL database selecting the "Advanced option".

7. Enter "toolkit" as the database name and click next.

8. On the next screen answer "no" and use the following credentials:

name: toolkit
password: password

9. When asked on whether to upload modules from the web interface and enable automatic updates, answer "yes".

10. On the summary screen, make sure all information is correct, before clicking next, to finish installation.



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
