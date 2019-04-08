
function create-page {
  read -r -p 'Page name: ' weeknum
}

function create-files {
  touch index.html style.css script.js
}

function show-help {
  echo  "Functions";

  echo  " - mkpg";
  echo  " - creates a directory file for a webpage with html,css and js files";

  echo  " - mkfls";
  echo  " - creates html, css and js files within the current directory";
  
  echo  " - deploy";
  echo  " - Adds commits and pushs to the remote origin";
}

function git-deploy {
    read -r -p 'Commit message: ' desc
    git -C /Users/earyzhe/dev/bash add .
    git -C /Users/earyzhe/dev/bash add -u
    git -C /Users/earyzhe/dev/bash commit -m "$desc"
    git -C /Users/earyzhe/dev/bash push origin HEAD:master
}

if [ $1 = mkpg ]
then
    create-page
elif [ $1 = mkfls ]
then
    create-files
elif [ $1 = help ]
then
    show-help
elif [ $1 = deploy ]
then
    git-deploy
else
    echo "Unknown command"
fi
