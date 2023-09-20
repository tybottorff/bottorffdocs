sample_names=(
  "GSM6668925_P1_T" "GSM6668926_P1_TN" "GSM6668927_P2_T" "GSM6668928_P2_TN"
    "GSM6668929_P4_T" "GSM6668930_P4_TN" "GSM6668931_P5_T" "GSM6668932_P5_TN"
      "GSM6668933_P7_T" "GSM6668934_P7_TN" "GSM6668935_P17_T" "GSM6668936_P17_TN"
        "GSM6668937_P3_T" "GSM6668938_P3_TN" "GSM6668939_P8_T" "GSM6668940_P8_TN"
	  "GSM6668941_P9_T" "GSM6668942_P9_TN" "GSM6668943_P10_T" "GSM6668944_P10_TN"
	    "GSM6668945_P11_T" "GSM6668946_P11_TN" "GSM6668947_P18_T" "GSM6668948_P18_TN"
	      "GSM6668949_P19_T" "GSM6668950_P19_TN" "GSM6668952_P6_TN" "GSM6668951_P6_T"
	        "GSM6668953_P12_T" "GSM6668954_P12_TN" "GSM6668955_P13_T" "GSM6668956_P13_TN"
		  "GSM6668957_P14_T" "GSM6668958_P14_TN" "GSM6668959_P15_T" "GSM6668960_P15_TN"
		    "GSM6668961_P16_T" "GSM6668962_P16_TN" "GSM6668963_P20_T" "GSM6668964_P20_TN"
		      "GSM6668965_P21_T" "GSM6668966_P21_TN" "GSM6668967_P22_T" "GSM6668968_P22_TN"
		        "GSM6668969_P23_T" "GSM6668970_P23_TN" "GSM6668971_P24_T" "GSM6668972_P24_TN"
		)

		# Directory containing data files
		data_dir="./"

		# Loop through the files, create subfolders with sample name, and rename the files
		for sample_name in "${sample_names[@]}"; do
			  # Define file paths
			    counts_file="${data_dir}/${sample_name}.matrix.mtx.gz"
			      barcodes_file="${data_dir}/${sample_name}.barcodes.tsv.gz"
			        genes_file="${data_dir}/${sample_name}.genes.tsv.gz"
				  
				  # Create a subfolder with the sample name if it doesn't exist
				    mkdir -p "$sample_name"
				      
				      # Copy and rename the files to the subfolder with just their suffix
				        cp "$counts_file" "${sample_name}/matrix.mtx.gz"
					  cp "$barcodes_file" "${sample_name}/barcodes.tsv.gz"
					    cp "$genes_file" "${sample_name}/genes.tsv.gz"
				    done

