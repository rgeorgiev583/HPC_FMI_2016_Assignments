# HPC @ FMI 2016 Assignments repository

This repository will hold all submitted solutions to the assignments in the HPC
course at FMI 2016.

To avoid being able to see other solutions, all the solutions **MUST** be stored
in an encrypted form. Only the course teachers will be able to decrypt the
solutions (in order to mark them).

## Getting Started

0. Clone the repo
1. Install the GNU Privacy Guard from https://www.gnupg.org/download/index.html
   (There are binaries at the bottom of the page).
2. Make sure `gpg2` is in your *PATH*
3. Import the [assignments.pub_key][key]
    
        gpg2 --import assignments.pub_key

[key]: https://raw.githubusercontent.com/dtrendafilov/HPC_FMI_2016_Assignments/master/assignments.pub_key

4. Trust the key

        gpg2 --edit-key trendafilov.dn+hpc2016@gmail.com

    At the command prompt enter `trust` and when prompted enter `5`. Detailed
    instructions are available [here][t]
    
    
[t]: http://blog.pangyanhan.com/posts/2014-03-04-gpg-how-to-trust-imported-key.html


## Submitting a solution

**NEVER** submit a clear source solution!

To prevent you from accidentally submitting a clear source solution, all C/C++
source files are *git-ignored* in the repo.

1. Create a folder named *data/<Assignment-Number>/Faculty-Number-or-Name*
    * *Assignment-Number* is 0, 1, 2, ...
    * *Faculty-Number* is your faculty number if you are an student enrolled in
      FMI course
    * *Name* is your {{FirstName}}{{LastName}} if you are not a student.

    See the *data/sample_assignment/DimitarTrendafilov* sample folder

2. Create your solution

        gvim data/0/SampleStudent/solution.cpp

3. Encrypt your solution

        gpg2 -a -r trendafilov.dn+hpc2016@gmail.com data/0/SampleStudent/solution.cpp

    You can use the `encrypt.sh` and `encrypt.bat` files.

4. Commit and push your **encrypted** solution

        git add data/0/SampleStudent/solution.cpp.asc
        git commit -m "SampleStudent's solution of assignement 0"
        git push

