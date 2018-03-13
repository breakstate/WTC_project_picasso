#short script to rename single images, and move them to a destination folder
#by Brenton Moodley

#HOW IT WORKS:

import os
import os.path
import rename_to_username_config as cfg

username = cfg.username
source_dir = cfg.source_dir
destination_dir = cfg.destination_dir
file_extension = cfg.file_extension

print "Usage: Enter username in all lower case."

while username != "n":
	username = raw_input("\n(n to cancel)\nUsername: ")
	if username == "n" : break
	if not os.path.exists(destination_dir + username + file_extension):
		for filename in os.listdir(source_dir):
			if filename.endswith(file_extension):
				os.rename(source_dir + filename, destination_dir + username + file_extension)
				if os.path.exists(destination_dir + username + file_extension):
					print ">SUCCESS: " + filename + " renamed to \"" + username + file_extension + "\" in " + destination_dir
				else:
					print ">FAILURE: no file renamed" 
	else:
		print ">ERROR filename already exists.\nskipping to avoid overwrite"
exit()

#Test cases:
#file available, name available
#file unavailable, name available
#file unavailable, name unavailable
#file available, name unavailable

