echo "------------Git Add---------------";

git add -A;

echo "---------Git Commit----------------";

git commit -m "$1";

echo "------------Git pull---------------";

git pull origin $2;

echo "----------Git push-----------------";

git push origin $2;
