while true; do
    read -p "Copying ../00_rename/named to current directory. Continue?" yn
    case $yn in
        [Yy]* ) cp -r ../00_rename/named .; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
