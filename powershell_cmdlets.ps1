get-alias
get-help -noun service
$MyVariable = 09
$my_var = 6
$MyVariable + $my_var
$MyVariable - $my_var
$MyVariable * $my_var
$MyVariable / $my_var
$MyVariable % $my_var  # to get remainder

# Boolean variables
$MyBooleanVariable = $true
$MyBooleanVariable.GetType() # to get the type of variable

#comparision operators
2 -eq 4   #equals to 
2 -ne 4   #not equal to
2 -lt 4   #less than
2 -le 4   # less than equals to
2 -gt 4   #greater than
2 -ge 4   # greater than equals to

#Arrays
$x = 1,5,7,8
$x.GetType()
$x.Count # to get the number of items listed in Array x
$x[0] #print the output which is in 1st position
$x[3] #print the output which is in 4th position
$x[0 .. 2] #print the output from 1st to 3 rd position
$x[-3 .. -1] # print the output example 5 7 8
$x[-1 .. -3]  #print the output example 8 7 5

#foreach loop
#example 1 printing numbers 1 to 10
$a = 1 .. 10
foreach($i in $a)
{
    $i
}
#example 2  printing numbers multiplying with 2
$y = 1 .. 5
foreach($b in $y)
{
    $b*2
}

#hashtable - hashtable means dictionary which contains keys and values
$aws = @{
    "vpcinbound" = "10.10.10.1"
    "s3bucket" = "king"
    "instance" = "raji"
}
$aws.Count # displays number of keys present
$aws["instance"] #print output raji
$aws["vpcinbound","s3bucket"] # print output as 10.10.10.1 and king
$aws["vpcinbound"]=20.20.20.1 
$aws["vpcinbound"]   #the value of the key is changed
#foreach loop with hashtable
#example 1
foreach($i in $aws){
    $i                           #it prints keys and values in a table format
}
#example2
foreach($i in $aws){
    $i.keys                         #it prints keys 
}
# example3
foreach($i in $aws.keys){
    $i                         #it prints keys 
}
#
$aws.ContainsKey("vpcinbound")    # to check whether keys are present or not
######################################
#custom object
#example
$use = [PSCustomObject]@{
    firstname = "rajya"
    secondname = "lakshmi"
    age = 30
    occupation = "housewife"
}
$use.firstname  # prints the output rajya
"Full_Name = $($use.firstname) $($use.secondname)"     # prints output rajya lakshmi