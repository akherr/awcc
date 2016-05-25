#Development notes

###RE: Development directory
* holder for various files that will NOT be part of final solution
* maybe/maybe-not this dir. will be at test server (wuddaythink?)
* might be good to include a file of some kind (markdown, text, ??) to keep track of issues/questions/etc


##Questions
<!--* Do we need separate tables for STAFF and USERS? (And: an ADMIN, for those who could configure the database. E.g.: default values for things like who gets notifications; add facilitators (if we will have a table for 'em)).-->
* Should we have a entry/default value of "NEW" for **StatusTypeId** for new records in **Program_Requests** table?
* RE: program date: Seems we are going to need another COL in **Program_Requests** table, since the **ProposedDate** COL must allow for fuzzy dates, and the actual program date needs to be a proper DATE datatype so as to allow searching/sorting/filtering by DATE.
* Do we need anything like session variables or cookies to store user input (before Submit)?
* How to change default engine to InnoDB (for foreign keys)
* Do foreign keys operate -- on delete -- as CASCADE, RESTRICT, or what?
* 








-------------

######Extraneous (perhap) issues
* best protocol for forward development: MySQLi vs PDF : ??


######Note re: MySQL
* [Official php.org note RE: MySQL deprecation](http://news.php.net/php.internals/53799)

* [Reasons to NOT use PHP's mysql engine](http://stackoverflow.com/questions/13944956/the-mysql-extension-is-deprecated-and-will-be-removed-in-the-future-use-mysqli)
