

cd modules

ls *.coffee  | while read files
do
    ../jsdb.exe ../ccoffee.js -c $files 
done