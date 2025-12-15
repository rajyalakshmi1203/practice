$use = [PSCustomObject]@{
    firstname = "rajya"
    secondname = "lakshmi"
    age = 30
    occupation = "housewife"
}
$use.firstname
"Full_Name = $($use.firstname) $($use.secondname)"