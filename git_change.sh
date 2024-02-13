git filter-branch --commit-filter '
        if [ "$GIT_COMMITTER_NAME" = "Soumyajit Behera" ];
        then
                GIT_COMMITTER_NAME="Michelle";
                GIT_AUTHOR_NAME="Michelle";
                GIT_COMMITTER_EMAIL="keysven0@gmail.com";
                GIT_AUTHOR_EMAIL="keysven0@gmail.com";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD