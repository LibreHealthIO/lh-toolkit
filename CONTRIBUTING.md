# Contributing to LibreHealth Toolkit

LibreHealth Toolkit (lh-toolkit) is one among many projects under the LibreHealth umbrella. Each project has its own needs. So please match your skills to a project's need, by looking at http://librehealth.io.

## Resources for Getting Started

Your contributions are what make lh-toolkit an awesome set of tools that can be used by doctors, clinicians, nurses, technicians, administrators and patients to improve the health of people from around the world. We want to make it as easy and fun as possible for you to contribute to LibreHealth Toolkit and interact with the community. Before you get started with your contributions, we encourage you to read our [LibreHealth Toolkit Developers Manual](https://toolkit.librehealth.io/devmanual).

## Reporting Bugs

1. Please check to see if you are running the latest version of lh-toolkit; the bug may already be resolved. If you are running an old version, it may no longer be supported. Check out our long-term support (LTS) versions [LTS releases](http://toolkit.librehealth.io) page for details.
2. Search for similar problems using the [LibreHealth Search](https://search.librehealth.io); it may already be an identified problem.
3. Make sure you can reproduce your problem on our demo site at [toolkit.librehealth.io/master](https://toolkit.librehealth.io/master).
4. If you know the problem is related to the function or performance of a specific add-on module you're running, please consult the [Module Repository](http://modules.openmrs.org) and that module's documentation about how to get support.
5. If you believe the problem is with lh-toolkit itself, or if you're honestly not sure, you can [file the bug report under Issues](https://gitlab.com/librehealth/lh-toolkit/issues). You should also try to search under our issues, if someone else has already reported the problem.

### Bug report contents

Regardless of whether you're reporting the bug to the lh-toolkit or to a module developer, to help those developers understand the problem, please include as much information as possible:

1. A clear description of how to recreate the error, including any error messages shown.
2. The version of lh-toolkit you are using. This can be seen at the bottom left corner of the page.
3. The type and version of the database you are using, if known. e.g. MySQL 5.7/MariaDB 5.5/PostgreSQL 9.4 etc.
4. The version of Java, tomcat/jetty or another servlet container that you are using to deploy lh-toolkit.
4. If you are using any additional modules, custom templates, stylesheets, or messages, please list them.
5. If applicable, please copy and paste the full Java stack trace that you will find under catalina.log or in the console/terminal.
6. If you have already communicated with a developer about this issue, please provide their name.


## Requesting New Features

1. We encourage you to discuss your feature ideas with our community at the [LibreHealth Forums](https://forums.librehealth.io/c/projects/lh-toolkit) before creating a New Feature issue in our issue tracker. [Search our forums](https://forums.librehealth.io/search) first, to see if someone else has discussed the issue before.
2. Provide a clear and detailed explanation of the feature you want and why it's important to add. You may also want to provide us with some advance documentation on the feature, which will help the community to better understand where it will fit.
3. If you are a programmer, you may be able to work with others to build the feature yourself (refer to the "Contributing (Step-by-step)" section below).

## Contributing (Step-by-step)

1. After finding a [issue in the backlog](https://gitlab.com/librehealth/lh-toolkit/board), a bug or a feature on which you'd like to work, click on "Assign Issue" button. This will assign the issue to you. A developer from the project should monitor assignments and move it to Development in the Issue Board.

2. [Fork the lh-toolkit repo](https://docs.gitlab.com/ce/workflow/forking_workflow.html), depending on the branch you're working on, clone your forked repo to your local computer, and set up the upstream remote:

        git clone https://gitlab.com/YourGitHubUserName/lh-toolkit.git
        git remote add upstream https://gitlab.com/librehealth/lh-toolkit.git

3. Checkout out a new local branch based on the branch you want to work on and update it to the latest. The convention is to name the branch after the current ticket, e.g. Issue-xxx:

        git checkout -b Issue-xxx master
        git clean -df
        git pull --rebase upstream master

 > Please keep your code clean by staying current with the branch where code will be merged. Squash your commits into bite-sized chunks. Name your branch after the issue or easy to distinguish description of the work being done. If you find another bug, you want to fix while being in a new branch, please fix it in a separated branch instead.


4. Push the branch to your fork. Treat it as a backup.

        git push origin TRUNK-123

5. Code
  * Adhere to common conventions you see in the existing code
  * Include tests, and ensure they pass
  * Search to see if your new functionality has been discussed at our [Forums](https://forums.librehealth.io) or in [Gitlab Issues](https://gitlab.com/librehealth/lh-toolkit/issues), and include updates as appropriate

6. Follow the [Coding Conventions described in our developer manual](https://docs.librehealth.io/docs/projects/toolkit/guides/development).

  > However, please note that **merge requests consisting entirely of style changes are not welcome**. Style changes in the context of pull requests that also refactor code, fix bugs, improve functionality *are* welcome.

7. Commit

  For every commit please write a short (max 72 characters) summary in the first line followed with a blank line and then more detailed descriptions of the change. Use markdown syntax for simple styling. Please include any Issue #xxx in your summary.
  
        git commit -m "Issue #123: Put change summary here (can be a issue title)"

  **NEVER leave the commit message blank!** Provide a detailed, clear, and complete description of your commit!

8. Issue a Merge Request

  Before submitting a [merge request](https://docs.gitlab.com/ce/workflow/forking_workflow.html#merging-upstream), update your branch to the latest code.
  
        git pull --rebase upstream master

  If you have made many commits, we ask you to squash them into atomic units of work. Most issues should have one commit only, especially bug fixes, which makes them easier to back port.

        git checkout master
        git pull --rebase upstream master
        git checkout Issue-xxx
        git rebase -i master

  Make sure all unit tests still pass:

        mvn clean package

  Push changes to your fork:

        git push -f

  In order to make a merge request,
  * Navigate to the lh-toolkit fork where you just pushed to (e.g. https://gitlab.com/YourGitHubUserName/lh-toolkit)
  * Click "Merge Request".
  * Write your branch name in the branch field (this is filled with "master" by default)
  * Click "Update Commit Range".
  * Ensure the changesets you introduced are included in the "Commits" tab.
  * Ensure that the "Files Changed" incorporate all of your changes.
  * Fill in some details about your potential patch including a meaningful title.
  * Click "New merge request".
  * In GitLab Issues, comment on your issue by linking to the URL of the pull request. A developer from the project should move to Testing on the Issue Board.


  Thanks for that -- we'll get your merge request reviewed. You should also review other merge requests, just like other developers will review yours and comment on them. Based on the comments, you should address them. Once the reviewers approve, the maintainer will merge the code and move the Issue to Production and close on the Issue Board. 

## Responding to Feedback

  The lh-toolkit developers may recommend adjustments to your code. Part of interacting with a healthy open source community requires you to be open to learning new techniques and strategies; *don't get discouraged!* Remember: if the developers suggest changes to your code, **they care enough about your work that they want to include it**, and hope that you can assist by implementing those revisions on your own.

  > Though we ask you to clean your history and squash commit before submitting a pull-request, please do not change any commits you've submitted already (as other work might be build on top).

## Other Resources

* If you haven't already registered and introduced yourself, do so at the [LibreHealth Forums](https://forums.librehealth.io)
* Make sure you have a [GitLab account](https://gitlab.com/users/sign_in)
* Submit or select an [Issue in lh-toolkit](https://gitlab.com/librehealth/lh-toolkit/issues) or choose from the [introductory issues](https://gitlab.com/librehealth/lh-toolkit/issues?label_name%5B%5D=Intro).
* Fork [lh-toolkit](https://gitlab.com/librehealth/lh-toolkit.git) or the repository for the module you are working on

### Interact with the community

* Chat live with developers on [LibreHealth Chat #dev channel](https://chat.librehealth.io/channel/dev)
* Join our [LibreHealth Forums](https://forums.librehealth.io))

### Additional Resources

* [LibreHealth Toolkit User Manual](https://toolkit.librehealth.io/usermanual)
* [About LibreHealth](https://librehealth.io)
* [General GitLab documentation](https://docs.gitlab.com/ce/)
* [GitLab workflow documentation](https://docs.gitlab.com/ce/workflow/README.html)
