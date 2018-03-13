while true; do
    read -p "Created folders will be deleted and all files contained will be lost. Continue?" yn
    case $yn in
        [Yy]* ) rm -r pics_*; rm -r named; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
