<?php
if(!function_exists('getYoutubeId')){
    function getYoutubeId($link){
        $youtubeId = substr($link, strrpos($link, '=') + 1);
        return $youtubeId;
    }
}

if(!function_exists('priceFormat')){
    function priceFormat($price){
        return number_format($price, 0, ',', '.');
    }
}

if(!function_exists('buildTree')){
    function buildTree(array $elements, $parentId = null) {
        $branch = array();
        foreach ($elements as $key1=>$element) {
            if ($element['parent_id'] == $parentId) {
                $children = buildTree($elements, $element['id']);
                if ($children) {
                    $element['children'] = $children;
                }
                $branch[] = $element;
            }
        }

        return $branch;
    }
}
function cut_words($str, $count = 150) {
	$words = explode(' ', $str);
	if($count < count($words)) {
		$result = '';
		for($i = 0; $i < $count; $i++) {
			$result .= $words[$i] . ' ';
		}
		$result.= '...';
		return $result;
	} else {
		return $str;
	}
}
