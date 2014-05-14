printf:"THIS PROGRAM IS USED TO CLEAR ALL THE LOGS. LISCENCED UNDER GPL V2. REFERRING GITHUB. AUTHOR: ALEX FANG
CONTACT:FRJALEX@GMAIL.COM TWITTER:@AFANG01"
if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "Must be root to run this script."
  exit $E_NOTROOT
fi  

if [ -n "$1" ]
# Test whether command-line argument is present (non-empty).
then
  lines=$1
else  
  lines=$LINES # Default, if not specified on command-line.
fi  

cd $LOG_DIR

cat /dev/null > messages
cat /dev/null > wtmp


echo "Logs cleaned up."

exit #  The right and proper method of "exiting" from a script.
     #  A bare "exit" (no parameter) returns the exit status
     #+ of the preceding command. 
