<?php
function currency_format($number, $unit = 'đ')
{
    return number_format($number).$unit;
}