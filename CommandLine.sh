#!bin/bash
prof=$(awk -F '\t' 'BEGIN {
	FS = OFS} 
	{if (length($8) > 100) print $4}' instagram_posts.csv | head -n 10)



                          						
FILES = instagram_profiles.csv                          						    
for i in $FILES;
do :
	if ($i in prof)
	then echo $2; 
done

