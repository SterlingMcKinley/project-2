#!/bin/bash
#!/bin/bash

#Creating dummy files to produce data
echo "In an effort to produce files & data. 3 files will be created..."
echo "file1.txt, file2.txt, file3.txt"

sudo touch f1.txt;chmod 755 f1.txt

echo -e "Full Name []: Linus Torvald  \n Room Number []:  \n Work Phone []: 111-111-1111 \n Home Phone []: 333-333-333 \n Other []: " >> f1.txt
echo -e "Full Name []: Brian Fox \n  Room Number []:  \n Work Phone []: 222-222-222 \n Home Phone []: 155-956-0177 \n Other []: " >> f1.txt

sudo touch f2.txt;chmod 755 f2.txt
echo -e "Full Name []: Guido van Rossum \n Room Number []:  \n Work Phone []: 333-333-3333 \n Home Phone []: \n Other []: " >> f2.txt

sudo touch f3.txt;chmod 755 f3.txt
echo -e "Full Name []: James Gosling \n Room Number []:  \n Work Phone []: \n Home Phone []: \n Other []: " >> f3.txt

sleep 2s

ls -ltr

echo " "
read -p "Would you like to COMMIT the files in this directory to the .git repository? >>>>" input

input=$(echo "$input" | cut -c 1 | tr [A-Z] [a-z])

if [[ $input == 'y' ]];
then
    git add . # add [ALL files] working area to staging area
    git commit -m "committing files.txt files2.txt files3.txt" #Commit [ALL files] from the staging area to repo w/ a msg
    git status #Check to see what was committed
    echo "---------------------------------------------------"
    echo "Files c"
else
    echo "No files will be committed to the repository" 1>&2
    exit 1
fi

echo "Would you like to PUSH to a remote GitHub repository? YES or NO?"
read -p input

input=$(echo "$input" | cut -c 1 | tr [A-Z] [a-z])

if [[ $input == 'y' ]];
then
    sleep 1s
    echo " WAIT! I must scan files for sensitve data/content"
    echo "---------------------------------------------------"
    echo "Files c"
else
    echo "The local repo will not be pushed to the remote Github repository." 1>&2
    exit 1
fi
