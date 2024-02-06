<?php
function format_date(String $date)
{   
    $the_date = date_create($date);
    return date_format($the_date, "m/d/Y H:i:s");
}
