cd git-practice-03
touch dir3/bar_copy
git add .
git commit

git checkout -b branch1
mv dir1/dir2/foo dir1
rmdir dir1/dir2
rm dir3/bar_copy
touch newfile1
git add .
git commit

git checkout main
git checkout -b branch2
mv dir1/dir2/foo dir1/dir2/foo_modified
mv dir3 dir1
rm -f dir1/dir3/*
touch dir1/dir3/newfile2
git add .
git commit