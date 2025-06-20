<?php 
namespace NewsApi\Controller;

use NewsApi\Config\Database;
use PDO;

class NewsController {
    public function getNewsList() {
        try {
            $pdo = Database::getInstance()->getConn();
            $sql = "SELECT * FROM news ORDER BY created_at DESC";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

            header('Content-Type: application/json');
            echo json_encode(
                [
                    'status' => 'success',
                    'data' => $result
                ]
            );
        } catch (\PDOException $e) {
            http_response_code(500);
            echo json_encode([
                'status'=> 'error',
                'message'=> $e->getMessage()
            ]);
        }
    }

    public function getCategoryNewsList($categoryId) {
        $categoryId= (int)$categoryId;
        try {
            $pdo = Database::getInstance()->getConn();
            $sql = "SELECT * FROM news WHERE category_id = :categoryId";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':categoryId', $categoryId, PDO::PARAM_INT);
            $stmt->execute();
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

            header('Content-Type: application/json');
            echo json_encode(
                [
                    'status' => 'success',
                    'data' => $result
                ]
            );
        } catch (\PDOException $e) {
            http_response_code(500);
            echo json_encode([
                'status'=> 'error',
                'message'=> $e->getMessage()
            ]);
        }
    }

    public function getCategories() {
        try {
            $pdo = Database::getInstance()->getConn();
            $sql = "SELECT * FROM categories ORDER BY sort ASC";
            // 使用ORDER BY order ASC來確保分類按照順序排列
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

            header('Content-Type: application/json');
            echo json_encode(
                [
                    'status' => 'success',
                    'data' => $result
                ]
            );
        } catch (\PDOException $e) {
            http_response_code(500);
            echo json_encode([
                'status'=> 'error',
                'message'=> $e->getMessage()
            ]);
        }
    }
}
?>