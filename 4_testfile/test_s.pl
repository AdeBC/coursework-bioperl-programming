#!/usr/bin/perl

use Switch;

$var = 10;
@array = (10, 20, 30);
%hash = ('key1' => 10, 'key2' => 20);

switch($var){
	case 10           { print "数字 10\n" }
	case "a"          { print "字符串 a" }
	case [1..10,42]   { print "数字在列表中" }
	case (\@array)    { print "数字在数组中" }
	case (\%hash)     { print "在哈希中" }
		else              { print "没有匹配的条件" }
}
