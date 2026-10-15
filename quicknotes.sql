/* ============================================================
                     MYSQL QUICK NOTES
===============================================================

CONSTRAINTS
---------------------------------------------------------------
PRIMARY KEY    → Unique + Not NULL + One per table
NOT NULL       → Value is mandatory
UNIQUE         → No duplicate values
DEFAULT        → Uses default value if omitted
CHECK          → Validates a condition
AUTO_INCREMENT → Generates IDs automatically
UNSIGNED       → No negative numbers

---------------------------------------------------------------
NUMERIC DATA TYPES
---------------------------------------------------------------

TINYINT  → 1 Byte → -128 to 127
         → UNSIGNED: 0 to 255
         → Use for: Age, Status, Rating

SMALLINT → 2 Bytes
         → Use for: Small numeric values

INT      → 4 Bytes
         → Use for: Employee IDs, Product IDs, Quantity

BIGINT   → 8 Bytes
         → Use for: Very large IDs, Population

---------------------------------------------------------------
DECIMAL vs FLOAT
---------------------------------------------------------------

DECIMAL  → Exact values
         → Best for: Salary, Price, Money

FLOAT    → Approximate values
         → Best for: Temperature, Scientific calculations

Remember:
Money  → DECIMAL 
Marks/Temperature → FLOAT 

---------------------------------------------------------------
CHAR vs VARCHAR
---------------------------------------------------------------

CHAR(n)     → Fixed length
            → Faster for fixed-size values
            → Example: Gender, Country Code

VARCHAR(n)  → Variable length
            → Saves storage
            → Example: Name, Email, Address

---------------------------------------------------------------
DATE & TIME
---------------------------------------------------------------

DATE       → YYYY-MM-DD
TIME       → HH:MM:SS
DATETIME   → Date + Time
TIMESTAMP  → Current Date & Time (often used for logs)

---------------------------------------------------------------
BOOLEAN
---------------------------------------------------------------

BOOLEAN → TRUE(1) or FALSE(0)
(MySQL stores BOOLEAN as TINYINT(1))

===============================================================
*/
