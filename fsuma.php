<?PHP 
    function suma($a,$b){
        $c = $a + $b;
        return $c;
    }
    function compararCadenas($cadena,$valorComparar){
        if(strcasecmp(trim($cadena),$valorComparar) === 0){
            return true;
        }else{
            return false;
        }
    }
?>