
function create-page {
  read -r -p 'Page name: ' weeknum
}

function create-files {
  touch index.html style.css script.js
}

function show-help {
  echo  "Functions";

  echo  " - create-page";
  echo  " - creates a directory file for a webpage with html,css and js files";

  echo  " - create-files";
  echo  " - creates html, css and js files within the current directory";
  
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
else
    echo "Unknown command"
fi
