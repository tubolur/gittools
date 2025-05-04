
CURRENT_DIR="$(pwd)"

echo "Please provide the directory of the local repo :"
read BASE_DIR

echo "Please provide the repo git user name : "
read GIT_USER

echo "Please provide the repo name : "
read GIT_NAME

GIT_URL="https://github.com/${GIT_USER}/${GIT_NAME}"


git_init() {
        echo "/////// INIT PROJECT DIR ${BASE_DIR}"
        git init
        echo "/////// LINK TO REMOTE REPO"
        git remote add "${GIT_NAME}" "${GIT_URL}"
        echo "/////// PUSH TO MASTER BRANCH"
        git push --set-upstream "${GIT_NAME}" master
    }

git_update() {

    if [ -n "$1" ]
    then
        COMMIT_MSG="$1"

        echo "/////// MOVING TO PROJECT DIR ${BASE_DIR}"
        cd "${BASE_DIR}"

        
        if test -d .git/; then
            echo "/////// .git folder exists, no need to init"
        else
            git_init
        fi
        

        echo "/////// ADDING ALL FILES"
        git add --all

        echo "/////// COMMITTING ..."
        git commit -am "${COMMIT_MSG}"

        #echo "/////// PUSHING ..."
        #git push
        echo "/////// pushing the current branch and set the remote as upstream"
        git push --set-upstream "$GIT_NAME" master


        echo "/////// coming back to ${CURRENT_DIR}"
        cd "${CURRENT_DIR}"
    else
        echo "Error : no git commit text supplied as argument"
    fi

}

git_config() {

    echo "Please provide the git user email :"
    read GIT_EMAIL

    echo "Please provide the git user name : "
    read GIT_USERNAME

    git config --global user.email "$EMAIL"
    git config --global user.name "$GIT_USERNAME"

}

