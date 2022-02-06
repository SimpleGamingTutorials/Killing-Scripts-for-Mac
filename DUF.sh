# Create a script that will erase all unnecessary folders and files from the current directory.
# from the current directory.

# ask for sudo privileges
sudo -v

# list all files in current directory
ls -a

# Ask the user for the files or folders to delete
echo "Enter the names of the files or folders to delete, separated by spaces:"
read files

# delete the files or folders
rm -rf $files


# list all files in current directory
ls -a

# cd into the .zsh_sessions folder
cd ~/.zsh_sessions

# ask the user if they want to delete all the files in the current directory
echo "Do you want to delete all the files in the .zsh_sessions folder? (y/n)"
read answer

# if the answer is yes, delete all the files in the current directory
if [ "$answer" = "y" ]; then
    echo "Deleting all the files in the .zsh_sessions folder..."
    rm -rf *
    echo "Done!"
fi

# if Ctrl + C is pressed, exit the script
trap ctrl_c INT


# tell the user the script has finished
echo "Script finished."
exit
