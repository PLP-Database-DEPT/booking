/* ------------------------------------------------------------------
   Table: booking_status
   Purpose: Lookup table for predefined booking statuses such as 
            'Active', 'Cancelled', or 'Pending'.
   Notes:
   - This table helps standardize and track the state of bookings.
   - Values in this table should be managed carefully since they 
     represent system-wide status definitions.
------------------------------------------------------------------- */

CREATE TABLE booking_status (
    id INT PRIMARY KEY,           -- Unique identifier for each status
    name VARCHAR(50) NOT NULL     -- Descriptive status name (e.g., Active, Cancelled, Pending)
);
