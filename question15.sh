git clone https://github.com/ian-knight-uofa/git-practice-01.git
cd git-practice-01
git fetch origin
git checkout -b branch1 origin/branch1
git checkout main
git merge branch1
git add dir1/file3
git add ./file1 
git commit -m "Merge branch1 into main, resolved conflicts"
