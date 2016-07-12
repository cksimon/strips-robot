# strips

The planner is invoked through the file ".src/pyperplan.py" and accepts two arguments: a PDDL domain file and a PDDL problem file. Example:python pyperplan.py -s gbf task4.pddl.

the program makes use of the domain file of the same numerical value as in the PDDL problem file "task4.pddl" in the current situation the value is "4" meaning "domain4.pddl" which implys that the domain4.pddl file must be in the same folder as the problem file.

 problem file (example "task4.pddl")  - where the initial state and the goal of the task is situated.
 
 domain file - where the rules of which make the final pddl file is situated.

"-s gbf" makes use of the searching algorithm gbf, which is available with the pyperplan.py. To view all the search algorithms use the command "python pyperplan.py -h" to show the help menu or "python pyperplan.py -s".

#steps to run program

1)open command prompt
 
2) navigate to "./src

3) type "python pyperplan.py -s gbf task4.pddl"

4)after running the program a "xxxx.pddl.soln" file will be created with the same naming scheme as the problem file used to run the program

#for the full original code written by authors please see  the following
Contact
=======

pyperplan is hosted on bitbucket: https://bitbucket.org/malte/pyperplan

The original authors of pyperplan are, in alphabetical order:

* Yusra Alkhazraji
* Matthias Frorath
* Markus GrÃ¼tzner
* Thomas Liebetraut
* Manuela Ortlieb
* Jendrik Seipp
* Tobias Springenberg
* Philip Stahl
* Jan WÃ¼lfing

The instructors of the course in which pyperplan was created were
Malte Helmert and Robert MattmÃ¼ller.

If you want to get in touch with them, please contact Robert MattmÃ¼ller or
Jendrik Seipp. Their email addresses can easily be found on the web.

