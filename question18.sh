git fetch --all
git branch -a

for remote_branch in $(git branch -r --list 'origin/ready*'); do
    local_branch=${remote_branch#origin/}
    git checkout -b $local_branch $remote_branch
done

for remote_branch in $(git branch -r --list 'origin/update*'); do
    local_branch=${remote_branch#origin/}
    git checkout -b $local_branch $remote_branch
done

git checkout main

for branch in $(git branch --list 'ready*'); do
    git merge $branch -m "Merging $branch into main" -X theirs
    git branch -d $branch
done

for branch in $(git branch --list 'update*'); do
    git checkout $branch
    git merge main -m "Merging main into $branch" -X theirs
done

git checkout main
