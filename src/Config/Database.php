<?php 
namespace NewsApi\Config;
class Database {
    // 防止額外建立連線
    private static $instance = null;
    private $pdo;

    private function __construct() {
        // 資料庫設定，需修改以符合環境
        $host = 'localhost';
        $dbname = 'news_db';
        $user = 'news3';
        $password = '123456';

        try {
            //建立PDO連線
            $this->pdo = new \PDO("mysql:host=$host;dbname=$dbname", $user, $password);
            $this->pdo->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
        } catch (\PDOException $e) {
            echo "連線失敗: " . $e->getMessage();
        }
    }

    //如果instance不存在則建立連線
    public static function getInstance() {
        if (self::$instance === null) {
            self::$instance = new Database();
        }
        return self::$instance;
    }

    // 使用PDO連線入口
    public function getConn() {
        return $this->pdo;
    }

    // 關閉PDO連線入口
    public function closeConn() {
        // 公開方法關閉PDO連線
        $this->pdo = null;
    }
}