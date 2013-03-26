goals:
  * generate password
  * verify password integrity
  * get the password
  
directory structure:
 bin - where binaries would reside (e.g. abre)
 lib - libraries (e.g.) common.sh.lib
 etc - password and config files would be here
 tests - tests on functions would be here


==============================
** TODO
==============================
 * duplicate user: delete only after new password ready to be written
 * db validation first before checking for duplicate user
 * refactor set_password()
