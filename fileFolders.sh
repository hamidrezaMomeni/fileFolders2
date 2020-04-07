#/bin/bash
read -p "Enter folder name: " folderName
read -p "How many files do you have: " countFile
sleep  2
mkdir -pv $folderName
int=3
for((i=1;i<=$countFile;i++));do
	#echo "$i" : "HelloWorld"
	read -p "Enter path of file $i: " filePath
	if [ -f "$filePath" ];then
		mv "$filePath" "./$folderName/"
		echo "$i" : $filePath Cpied.
	else
		echo "ERROR to copy!!"
	fi
done

