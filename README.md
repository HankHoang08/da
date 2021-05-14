# CITS4407 Assignment 2 – Semester 1, 2021

## Details

Version: 0.1  
Date: 2021-05-13  
Changelog:   
- 2021-05-13 – initial version

Please check the CITS4407 website or the Git repository
at <https://github.com/cits4407/assignment2> to ensure that you have the latest
version.

The goal of this assignment is to assess your understanding of concepts
covered in lectures and practised in lab/workshops.

-   The assignment contributes **20%** towards your final mark this
    semester, and is to be completed as individual work. It is marked
    out of 20.
-   The deadline for this assignment is <span class="inserted"
    style="color: red;">**23:59 pm, Sunday 23th May**</span>.
-   The assignment is to be done individually.
-   The submission procedure is given below under the heading
    "[Submission](#submission)".
-   You are expected to have read and understood the University
    [Guidelines on Academic
    Conduct](http://www.governance.uwa.edu.au/procedures/policies/policies-and-procedures?policy=UP07%2F21).
    In accordance with this policy, you may discuss with other students
    the general principles required to understand this assignment, but
    the work you submit must be the result of your own effort.
-   You must submit your assignment before the submission deadline
    above. There are [Penalties for Late
    Submission](https://ipoint.uwa.edu.au/app/answers/detail/a_id/2711/~/consequences-for-late-assignment-submission)
    (click the link for details).

## Background

As an intern for Aperture Science, you have been asked to
create an HTML document summarizing the results of recent experiments
carried out by your supervisor, Caroline.

You are provided with a text file, `holes.csv`, containing
data on the size and lifetime of micro-black holes
constructed in the lab.

Each row of the file contains the diameter (in nanometres)
and lifetime (in nanoseconds) of a black hole, separated by
a comma.

## Tasks

A repository containing an empty Makefile and the `holes.csv`
file is provided.
You will need to add rules to the Makefile
and scripts to the repository to satisfy the
following requirements:

- When a user runs the command `make prerequisites`,
  a copy of Pandoc should be downloaded
  and placed in the directory `~/.local/bin`.
  (You may also install any other software you wish,
  but bear in mind your scripts will not have `sudo`
  access). 
 
- When a user runs the command `make report.md`,
  a Markdown report will be created in the top
  directory of the repository, called `report.md`.

- When a user runs the command `make report.html`,
  Pandoc will be invoked to create an HTML version
  of the report.

The HTML report should include, at a minimum:

- An appropriate title
- Level 1 headings
- A presentation or summary of the experimental data --
  you may decide how you wish to present it.

## Challenge tasks

Up to 2 marks are available for *challenge tasks*, which are awarded at
the discretion of the marker. If you lose marks on some tasks, these
marks can increase your total (up to a maximum of 20). In general, 1
mark is awarded for an interesting and/or useful task, and 2 marks for
an excellently implemented and very challenging task.

If you would like to attempt an extension task, make sure you

-   check with a facilitator or the unit coordinator that it is
    appropriate
-   add a script called `demo.sh`, if needed, which shows how to 
    exercise the code you wrote for the task, as well as a
    README file describing what it does.

## Environment

A standard **test environment** is published at
<https://hub.docker.com/r/adstewart/cits4407-2021-env>.

This is the environment we will run and test your code in.
Your submitted programs should assume the packages they have access to
are exactly the ones installed in that environment.

From Ubuntu, you can access the test environment by installing
the package `docker.io` (see the CITS4407 MS Teams channels
for details), and running:

```
$ docker run --rm -it -v $PWD:/work adstewart/cits4407-2021-env
```

You can also access it from any repository cloned from this one by
visiting the URL
`https://gitpod.io/#https://github.com/YOUR_GITHUB_USERID/YOUR_ASSIGNMENT1_REPOSITORY`
in your browser (replacing "`YOUR_GITHUB_USERID`" with your GitHub user ID, and
"`YOUR_ASSIGNMENT1_REPOSITORY`" with the name of your assignment 1
repository).

See the CITS4407 MS Teams channels for more detailed instructions.

## Assessment

Marks are awarded for the following:

- Contains a target so that `make prerequisites` installs Pandoc
  in the appropriate location – 4 marks.
- Contains a target so that `make report.md` creates a Markdown
  report, using the `holes.csv` file – 4 marks.
- Contains a target so that `make report.html` creates a Markdown
  report, using the `holes.csv` file – 4 marks.
- The Git repository contains commits made by you – 2 marks.
- The Git repository is successfully submitted to the CITS4407
  Git server – 2 marks.

In addition to the 16 marks awarded above, 4 marks are awarded
for how readable and well-organised your code and Makefiles are.

## Submission

You can submit your code by pushing it to the Git marking server
at <https://assignment2.cits4407.arranstewart.info>.

The first time you push your code, you'll need to
[add the Git marking server as a remote][add-remote] to your
local repository:

[add-remote]: https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes#_adding_remote_repositories

```
$ git remote add marking https://assignment2.cits4407.arranstewart.info/base/YOUR_STUDENT_NUMBER
$ git remote push -u marking master
```

(replacing "`YOUR_STUDENT_NUMBER`" with your UWA student number).
When you `push` your code, you will be prompted for your login details;
enter your UWA student number and your Pheme password.

After this first push, your local repository keeps a record of the URL
of the marking server, so that to push your code, you can just type:

```
$ git push marking
```

You can also easily see at any time what files you have
submitted to the marking server:

```
$ git clone https://assignment2.cits4407.arranstewart.info/base/YOUR_STUDENT_NUMBER some-directory-name
```

If you run into issues submitting your code, however, it's
still possible to submit using [`cssubmit`][cssubmit] –
zip up your whole repository (no RAR files, please)
and submit it as a file.

[cssubmit]: https://secure.csse.uwa.edu.au/run/cssubmit

## Automated tests

You do not have to make use of them, but if you want to see
what sort of tests we might run on your code, you can
`cd` into the directory `tests` of the repository and execute
`./run_tests.sh`.

The script should run on any Ubuntu 20.04 environment that has
the expected
tools installed. It runs the tests and shows how many pass or
fail (as well as how long the tests took to run).

After assignments are submitted, we will run these as well
as other, more stringent, tests.

If your code passes all the tests, that is *necessary* for
getting a good mark in this assignment, but not *sufficient*.
It is up to you to satisfy yourself that your code is correct.


## Tips

Make sure you do ***not*** store your code in a *public* GitHub repository –
that breaches the University's rules on Academic Conduct.

Good luck!

<!--
  vim: ts=2 sw=2 et tw=72
-->
