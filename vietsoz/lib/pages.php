<?php
function get_page_by_id($id)
{
    global $list_page;
    if (array_key_exists($id,$list_page))
        return $list_page[$id];
    return FALSE;
}