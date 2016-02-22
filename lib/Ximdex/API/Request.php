<?php
/**
 * Created by PhpStorm.
 * User: jvargas
 * Date: 22/02/16
 * Time: 8:59
 */

namespace Ximdex\API;


class Request
{
    private $path;
    private $query;

    public function __construct()
    {
        $url = $_SERVER['REQUEST_URI'];


        $pathStr = parse_url($url, PHP_URL_PATH);
        $queryStr = parse_url($url, PHP_URL_QUERY);

        $path = $this->splitPath($pathStr);
        parse_str($queryStr, $query);

        while($path[0] != 'wservices'){
            array_shift($path);
        }
        array_shift($path);
        $this->path = $path;
        $this->query = $query;
    }

    /**
     * @param string $path
     * @return bool
     */
    public function MatchPath($path){
        return $this->path == $this->splitPath($path);
    }

    /**
     * @param $key
     * @param bool $optional
     * @param null $default
     * @return null
     * @throws \Exception
     */
    public function Get($key, $optional = false, $default = null){
        if(!$optional && !isset($this->query[$key])){
            throw new \Exception("Key $key not found in params");
        }
        if(!isset($this->query[$key])){
            return $default;
        }
        return $this->query[$key];
    }

    /**
     * @param string $pathStr
     * @return array
     */
    private function splitPath($pathStr){
        return preg_split('/\//', $pathStr, -1, PREG_SPLIT_NO_EMPTY);
    }
}