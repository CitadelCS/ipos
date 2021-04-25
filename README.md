# IPOS

IPOS is a way for grad students to submit a plan of study from a list of offered courses. The program director then can accept or deny the request.
Advisors can also see their advises plan of studies. The goal of IPOS is to centralize the acceptance of plan of studies for CS majors in grad school.

## The following are instructions for setting up a new enviroment in AWS to edit IPOS

1. Create a C9 tiny AWS ubuntu enviroment
2. git clone (github link to IPOS)
3. cd ipos
4. bundle install
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