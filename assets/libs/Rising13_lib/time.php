<?
class Time {
	var $time_str;
	function this_unix_time(){
		$this_time_u = time();
		return($this_time_u);
	}
	function str_to_time($time_str){
		$unix_time_rez=strtotime($time_str);
		return($unix_time_rez);
	}
}
?>