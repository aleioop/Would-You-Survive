Sinatra
=============

Brought to you by Lighthouse Labs

## Getting Started

1. `bundle install`
2. `shotgun -p 3000 -o 0.0.0.0`
3. Visit `http://localhost:3000/` in your browser

rake db:create_migration NAME=add_<table>

#### GIT FLOW ############

git checkout development    # Change your branch to the development branch 

git checkout -b myNewBranch development    # Add a new branch from which we work on our features. JUST USE CHECKOUT WITHOUT IF BRANCH EXISTS

<do work, right now youre in the myNewBranch>

git commit -am "Hey guys I added this new feature"   # Commit, adding detailed comments on what was done

git checkout development    ## CHANGED TO THE DEVELOPMENT BRANCH######

git merge --no-ff myNewBranch   ## Merge your features in your other branch with the development branch which you're in ###

OPTIONAL

git branch -d myNewBranch 
## Delete the branch, changes are still recorded, just no longer active. For after you're completely done with a features ###

