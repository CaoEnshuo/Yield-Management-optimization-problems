// Objective Function
max: rev1_first + rev1_business + rev1_economy + rev2_first + rev2_business + rev2_economy + rev3_first + rev3_business + rev3_economy - 50000 * n;


// Planes Constraint
n <= 6;

// Ticket Sales Constraints
sold1_first = 25;
sold1_business = 45;
sold1_economy = 50;
sold2_first = 50;
sold2_business = 45;
sold2_economy = 50;
sold3_first = 40;
sold3_business = 25;
sold3_economy = 36;

// Capacity Constraints
sold1_first + sold2_first + sold3_first + u_first - v_first - 37 * n <= 0;
sold1_business + sold2_business + sold3_business + u_business - v_business - 38 * n <= 0;
sold1_economy + sold2_economy + sold3_economy + u_economy - v_economy - 47 * n <= 0;
u_first - v_first + u_business - v_business + u_economy - v_economy = 0;

// Adjustment Constraints
u_first <= 4;
u_business <= 4;
u_economy <= 5;
v_first <= 4;
v_business <= 4;
v_economy <= 5;

// Revenue Constraints
rev1_first - 1200 * sold1_first <= 0;
rev1_business - 900 * sold1_business <= 0;
rev1_economy - 500 * sold1_economy <= 0;
rev2_first - 1150 * sold2_first <= 0;
rev2_business - 1100 * sold2_business <= 0;
rev2_economy - 700 * sold2_economy <= 0;
rev3_first - 1500 * sold3_first <= 0;
rev3_business - 800 * sold3_business <= 0;
rev3_economy - 480 * sold3_economy <= 0;

1200 * sold1_first - rev1_first + 30000 <= 30000;
900 * sold1_business - rev1_business + 40500 <= 40500;
500 * sold1_economy - rev1_economy + 25000 <= 25000;
1150 * sold2_first - rev2_first + 57500 <= 57500;
1100 * sold2_business - rev2_business + 49500 <= 49500;
700 * sold2_economy - rev2_economy + 35000 <= 35000;
1500 * sold3_first - rev3_first + 67500 <= 67500;
800 * sold3_business - rev3_business + 32000 <= 32000;
480 * sold3_economy - rev3_economy + 26400 <= 26400;

// Variable Declarations
int n;