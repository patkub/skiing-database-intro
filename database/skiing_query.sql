/* 
	Skiing Database Queries
    Patrick Kubiak
    4-16-2016
    
    There is no intersect operator in MySQL. In, WHERE EXISTS or INNER JOIN can be used to simulate intersect.
    http://www.techonthenet.com/mysql/intersect.php
    https://faculty.utpa.edu/lianx/CSCI6315_2016spring/MySQL-set-operators.pdf
*/

/* Get all skis over $350 with a height of 60 or greater. */
SELECT DISTINCT name FROM (skiing.`sale-items` JOIN skiing.`skis`) WHERE height >= 60 AND price > 350;

/* Get all tickets cheaper than $40 or expiring before or on 2016-04-18 */
SELECT * FROM skiing.`sale-items`, skiing.`tickets` WHERE skiing.`sale-items`.SaleItemId = skiing.`tickets`.SaleItemId AND (price < 40 OR skiing.`tickets`.ExpirationDate <= "2016-04-18");

/* Rename a column in the display to show well paid employees */
SELECT EmployeeName AS WellPaid, Salary FROM skiing.employee WHERE salary > 14;

/* Get all rental items containing the word ski */
SELECT * FROM skiing.`rental-items` WHERE TYPE LIKE "%ski%";

/* Get all tickets that expire on or after ticket #20348 */
SELECT * FROM tickets WHERE ExpirationDate >= (SELECT ExpirationDate FROM tickets WHERE SaleItemId = 20348);

/* Get all lifts at Burke Mountain Ski Area and Camelback Mountain */
SELECT * FROM skiing.`lifts` WHERE ResortName IN ('Burke Mountain Ski Area', 'Camelback Mountain');

/* Get all gondolas with a rack capacity greater than 4 */
SELECT ChairNumber, RackCapacity FROM skiing.`gondola` WHERE RackCapacity > 4;

/* Get all chair lifts with safetybars and a capacity greater than or equal to 3 */
SELECT `lifts`.ChairNumber, SafetyBar, Capacity FROM (skiing.`lifts` JOIN skiing.`chairlift`) WHERE (`lifts`.ChairNumber = `chairlift`.ChairNumber AND SafetyBar = 1 AND Capacity >= 3); 

/* Get all chair lifts with safetybars and a capacity greater than or equal to 3 and all gondolas with a rack capacity greater than 4 */
(SELECT ChairNumber As BigAndSafe FROM skiing.`gondola` WHERE RackCapacity > 4)
UNION
(SELECT `lifts`.ChairNumber As BigAndSafe FROM (skiing.`lifts` JOIN skiing.`chairlift`) WHERE (`lifts`.ChairNumber = `chairlift`.ChairNumber AND SafetyBar = 1 AND Capacity >= 3)); 

/* Get ski resorts that rent skis */
SELECT DISTINCT ResortName FROM (skiing.`rental-items` JOIN skiing.`rents`) WHERE `rental-items`.`Rental-ItemID` = `rents`.`Rental-ItemID` AND type = "skis";

/* Get ski resorts that sell skis */
SELECT DISTINCT ResortName FROM (skiing.`sale-items` JOIN skiing.`skis` JOIN skiing.sells) WHERE `sale-items`.SaleItemId = `skis`.SaleItemId;

/* List employees from oldest to newest */
SELECT DISTINCT EmployeeName, Since FROM (skiing.`employee` JOIN skiing.`worksfor`) WHERE skiing.`employee`.EmployeeID = skiing.`worksfor`.EmployeeID GROUP BY since;

/* Get all items for sale over $150 in order from least to greatest price */
SELECT * FROM skiing.`sale-items` GROUP BY Price HAVING Price > 150 ORDER BY Price;

/* Arithmetic to show minimum, maximum, and range of prices */
SELECT MIN(price) AS MinimumPrice, MAX(price) AS MaximumPrice, MAX(price) - MIN(price) AS PriceRange FROM skiing.`sale-items`;

/* Get maximum employee salary */
SELECT MAX(Salary) FROM `skiing`.employee;

/* Get average employee salary */
SELECT AVG(Salary) FROM skiing.`employee`;

/* Get total capacity of all lifts */
SELECT SUM(Capacity) AS NumberOfLifts FROM skiing.`lifts`;

/* Get all employees whose salary is either $12.50, $11.50, or $8.00 an hour. Sort the table by salary in descending order. */
SELECT * FROM skiing.`employee` WHERE Salary IN (12.50, 11.50, 8.00) ORDER BY Salary DESC;

/* Get all employees who are also skiers */
SELECT * FROM `skiing`.employee AS worker WHERE EXISTS (SELECT * FROM skiing.`skier` AS skier WHERE worker.EmployeeName = skier.SkierName);

/* Get all sale item ids that are greater than all the sale item ids of skis */
SELECT * FROM `skiing`.`sale-items` WHERE SaleItemId > ALL (SELECT SaleItemId FROM `skiing`.`skis`);

/* Get all lifts with a capacity greater than the rack capacity of any gondola that are not gondolas */
SELECT * FROM `skiing`.lifts WHERE (Capacity > ANY (SELECT RackCapacity FROM `skiing`.gondola)) AND (ChairNumber NOT IN (SELECT ChairNumber FROM `skiing`.gondola));

/* Get all information about employees */
SELECT * FROM `skiing`.`employee` NATURAL JOIN `skiing`.`worksfor`;

/* Total pay if each employee was paid their salary by each resort */
SELECT SUM(Salary) AS TotalPay FROM `skiing`.`employee` INNER JOIN `skiing`.`skiresort`;

/* Total profit if each resort sold all sale-items */
SELECT SUM(Price) AS TotalProfit FROM `skiing`.`sale-items` INNER JOIN `skiing`.`skiresort`;

/* Get all common ski heights and skier ages. Three methods to simulate intersect. */

/* METHOD 1 */
SELECT height AS CommonSkiHeightsAndSkierAges FROM `skiing`.skis WHERE height IN (SELECT age FROM `skiing`.skier);

/* METHOD 2 */
SELECT height AS CommonSkiHeightsAndSkierAges FROM `skiing`.skis WHERE EXISTS (SELECT age FROM `skiing`.skier WHERE age = height);

/* METHOD 3 - most efficient */
SELECT DISTINCT height AS CommonSkiHeightsAndSkierAges FROM `skiing`.skis INNER JOIN `skiing`.skier WHERE height = age;
