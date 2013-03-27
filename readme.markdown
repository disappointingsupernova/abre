OVERVIEW

What is 'abre'

A simple tool that uses readily available (open-source) tools to encrypt/decrypt passwords.
I had this need to store my script's passwords into a single file (in a secure way) and 
searching for alternatives, I don't see one that's simple enough for me to use hence, I 
created my own.


How to Use 'abre'

 1. git clone https://github.com/icasimpan/abre.git abre
 2. rm abre/etc/pwd.db
 3. For now, key file used is your ssh rsa private key file in $HOME/.ssh/id_rsa.
    If you don't have the said file, change to any file the value of $KEY_FILE in 
    lib/common.sh.lib. For instance, if you use /etc/passwd, it would be 
         KEY_FILE='/etc/passwd'
 4. To set password, use:
      ~$ ~/abre/bin/abre -u <username> -s
 
 5. To get password, use:
      ~$ ~/abre/bin/abre -u <username>

How to use 'abre' in your scripts

  Mostly, you will be using 'abre' only to get the password. In bash, you can do

      PATH_TO_ABRE=/home/abre/bin
      USENAME='root'
      password=`$PATH_TO_ABRE/abre -u $USERNAME`
  
  Take note that of the following output:

    * ERR_CORRUPT_PWD_FILE --> $KEY_FILE has been changed since creating pwd.db
                               or is inaccessible to you 
    * __USER_NOT_FOUND__   --> invalid/unrecorded usernames

  So take those into consideration in your script
  

Why 'abre'?

Abre is the Spanish word for 'open' and is the same word in my Philippine dialect in the
Leyte-Samar Area called 'Waray'. When brainstorming for a word to use for this project, 
I remember my little sister always watching 'Dora The Explorer' which always says 
"what's the magic word?...Abre". And so I used that word to help me remember (and hope 
that's easy for the users of this script as well).
 

BUG/IMPROVEMENT REQUESTS:

Send me an email (ismael.angelo@casimpan.com) or fork this project and send me a merge 
request

-------------------------------------------------------

GOALS OF ABRE:
  * generate password
  * verify password integrity
  * get the password
  * simplicity
  
directory structure:
 bin - where binaries would reside (e.g. abre)
 lib - libraries (e.g.) common.sh.lib
 etc - password and config files would be here
 tests - tests on functions would be here


==============================
** TODO (see also the issues section in github)
==============================
 * duplicate user: delete only after new password ready to be written
 * db validation first before checking for duplicate user
 * refactor set_password()
