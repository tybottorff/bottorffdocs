data_dir="./"

# Loop through subfolders and delete files starting with "GSM"
for subfolder in "$data_dir"/*/; do
	  # Use the find command to locate and delete files
	    find "$subfolder" -type f -name "GSM*" -delete
    done

