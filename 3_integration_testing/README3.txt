Integration Testing for this program is achieved through the use of the MySQL ODBC Connector Driver that can be downloaded from-                                        https://dev.mysql.com/downloads/connector/odbc/

Your operating system should be whichever one you are attempting to recreate the program on, and for mem was the 64-bit Microsoft Window's version, due to me also utilizing the 64-bit Microsoft Window's version of MySQL Workbench that can be downloaded from-
                                https://dev.mysql.com/downloads/workbench/

If you do not already have a capable MySQL server downloaded, then you can download it from-
                                https://dev.mysql.com/downloads/mysql/
It should be the "MySQL Community Server".

Microsoft Access will need to be downloaded and installed prior to establishing a connection to it.

Setting up the DNS to be identified by Microsoft Access can be accomplished by following directions provided here-
                           https://dev.mysql.com/doc/connector-odbc/en/connector-odbc-examples-tools-with-access-linked-tables.html

For help with appropriately configuring your DNS to be recognized by MS Access you can find help here-
                                https://dev.mysql.com/doc/connector-odbc/en/connector-odbc-configuration-dsn-windows.html

Warning!!! I myself ran into the issue of establishing ODBC connection being impossible if attempting to run Microsoft Access on a virtual machine utilizing MacOS due to a lack of administrator privelages. It's very simple if done on a Microsoft desktop while following these directions. 
