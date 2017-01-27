
DEVELOPING DATA PRODUCTS COURSE PROJECT
========================================================
author: Habibu Atib
date: 27 January 2017
autosize: true

Introduction: Fuel Management Application
========================================================
Fuel Management Application (FMA) is a computerised system that
support Fuel Attendant to process daily fuel purchase transactions.
FMA has two features:
- SET Fuel Prices: <small> At the start of business day the fuel attendant sets fuel
unit prices using this feature.</small>
- Purchase Fuel: <small> The fuel attendant uses this feature to process customer fuel
transactions. The fuel attendant has option to select the fuel type and number of litres
purchased then the application automatically provides the total amount. 
(No need of calculator) </small>

FMA: Set Fuel Interface Feature
========================================================
<small> The Fuel Attendant set fuel unit uses this interface.
(See diagram below). </small>

![alt text](set_fuel.png)

FMA: Purchase Fuel Interface Feature
========================================================
<small> The Fuel Attendant uses run the daily customer purchases: </small>
![alt text](purchase_fuel_with_fueltype.png)
![alt text](purchase_fuel.png)

FMA Sample computation using R.
========================================================
Fuel Unit Price
<small>

```
  unleaded Petrol Diesel LPG Gas
1             138    115      92
```


```
[1] "10 litres of Unleaded Petrol will cost: 1380"
```

```
[1] "20 litres of Diesel will cost: 2300"
```

```
[1] "30 litres of LPG Gas will cost: 2760"
```
</small>
<small>Try out FMA Application: https://bisima.shinyapps.io/fuelApp/ </small>
<small>FMA ui.R and server.R files: https://github.com/bisima/DDPShinyfuelproject </small>
<small>FMA Presentation: https://github.com/bisima/DDPShinyfuelproject </small>
