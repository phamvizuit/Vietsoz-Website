<?php
function redirect($url)
{
    if (!empty($url))
        header("Location: {$url}");
}