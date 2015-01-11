if [ "x$ISINCLUDED" != "x1" ];
then
  echo "This scripts needs to be included!"
  exit 1;
fi;
FILES="$(cat flash.cfg|grep -Z filename|cut -d= -f2|xargs -0 -n 1)"
for file in $FILES;
do
  if [ ! -f "$file" ];
  then
    echo "File $file is missing!";
	HASMISSING=true
  fi 
done

if [ "x$HASMISSING" != "x" ];
then
  echo "One or more files are missing. Read documentation and provide the necessary files to continue!";
  exit 1;
fi
#else
#  return 0;
# fi
