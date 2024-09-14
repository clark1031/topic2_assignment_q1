git checkout -b branch2
touch file4 && git add file4 && git commit file4 -m "add file4"
echo "this is file4" > file4
git stash
git checkout main