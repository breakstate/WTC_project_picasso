while true; do
    read -p "Do you wish to clean the created file structure? named and unnamed will be lost! (y/n)" yn
    case $yn in
        [Yy]* ) rm -r named; rm -r unnamed; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
