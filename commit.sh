#!/bin/zsh
#
#
function yn() {
        local message="$1"
        local response

        # Prompt the user with the provided message
        read "response?$message (y/n): "

        # Convert response to lowercase to handle case-insensitive input
        response="${response:l}"
        echo "response is $response"

        # Check the response
        if [[ $response != "y" ]]; then
            exit 1
        fi
}

function commitMessage() {
        local response

        # Prompt the user with the provided message
        read "response?Commit message: "

        # Convert response to lowercase to handle case-insensitive input
        git commit -m "${response}"
}

yn "Do you want to login?"
gh auth login

yn "Do you want to add, commit, and push?"
git add .

commitMessage="$1"
if [[ -z $commitMessage ]]; then
    commitMessage
fi

git push origin main
