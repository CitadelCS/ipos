# IPOS

IPOS is a way for grad students to submit a plan of study from a list of offered courses. The program director then can accept or deny the request.
Advisors can also see their advises plan of studies. The goal of IPOS is to centralize the acceptance of plan of studies for CS majors in grad school.

## The following are instructions for setting up a new enviroment in AWS to edit IPOS

1. Create a C9 tiny AWS ubuntu enviroment
2. git clone (github link to IPOS)
3. cd ipos
4. bundle install
5. run resize.sh 14 to have enough space in enviroment
5. git branch (name of your branch)
6. git checkout (name of your branch)
7. rvm get stable
2. rvm reload
3. rvm gemset create ipos
4. rvm 2.6.6@ipos
5. bundle
6. rvm --ruby-version use 2.6.6@ipos
7. rvm install 2.6.6
8. rvm use 2.6.6
9. rvm gemset create ipos
10. rvm 2.6.6@ipos
11. gem install bundle
12. bundle
13. rvm --ruby-version use 2.6.6@ipos
14. bin/rails s
15. preview running application (to ensure everything downloaded correctly)
16. control + C (will stop the server)

## The following instructions are for getting the lastest main of IPOS

1. Delete ipos folder in your enviroment (Push all changes made prior to another branch to not loose any work)
2. git clone (github link to IPOS)
3. cd ipos
4. bundle install
5. git branch (name of your branch)
6. git checkout (name of your branch)
7. bin/rais s
8. preview running application (to ensure everything downloaded correctly)
9. control + C (will stop the server)

## How to push changes to github

1. git add .
2. git commit -m "Add comments about branch here"
3. git push origin (name of your branch)
4. go create a pull request in github if done with branch



## Walk Through

### Login Page

![IPOS Login Page](images/iposLogin.jpg?raw=true)

### Signup Page

![IPOS Signup Page](images/iposSignup.jpg?raw=true)

### Landing Page

After Signing in, you are shown this page. We do not have role based routing so you are able to select the different pages
from here.

![IPOS Landing Page](images/iposLandingPage.jpg?raw=true)

### Student

You are able to see all the students if you click the Student Tab.

![IPOS Student View](images/iposStudentsView.jpg?raw=true)

### Specific Student

This is where you can see all the students information and also were you view plan of studies and submit new ones.

![IPOS New Student View](images/iposStudentPOS.jpg?raw=true)

### New Student

![IPOS New Student View](images/iposStudentNew.jpg?raw=true)

### Edit Student

![IPOS Edit Student View](images/iposStudentEdit.jpg?raw=true)

### Student POS

![IPOS POS View](images/iposStudentPosView.jpg?raw=true)

### Professor/Advisor

This is where you are able to view all the professors. If you click show, then you will see all the advises.

![IPOS Professor/Advisor View](images/iposProfessorView.jpg?raw=true)

### Advisee

This is where you can see all the students assigned to a specific professor.

![IPOS Advisee View](images/iposProfessorAdvisee.jpg?raw=true)

### New Professor

![IPOS New Professor View](images/iposProfessorNew.jpg?raw=true)

### Program Director

There can only be one program director and it is hard coded into the application. To change it. The seed file must
be changed. In this view, you can see all the students, professors/advisors, and courses listed.

![IPOS Program Director View](images/iposProgramDirector.jpg?raw=true)

### Courses

This is where all the courses are listed.

![IPOS Courses View](images/iposCourses.jpg?raw=true)

### New Courses

![IPOS New Courses View](images/iposCoursesNew.jpg?raw=true)



## Important Notes

1. The Program Director is hard coded into the application. To change it, you must edit the seed file.
2. There is no role based routing. The link below is to another code base we made but did not finish that tries to acomplish what we failed to do in this one.
3. The routs are a mess and we apploggize. We started this code from scratch and did not see the importance of fixing it compared to more features.
4. Cucumber does not work too well because of Clearence. We used that for our user athentication. I sujest useing the other code repo as a new base.
5. We have a lot of extra MVCs for features we did not get too like comments. It was too messy to remove them.
6. Heroku Link https://git.heroku.com/sleepy-thicket-65048.git
7. Pivitol Tracker Link https://www.pivotaltracker.com/n/projects/2488588
8. Additional Github Repo Link https://github.com/RexNihilo/sopi