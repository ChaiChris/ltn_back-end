<?php
namespace NewsApi\Router;

use NewsApi\Controller\NewsController;

class Router
{
    private $controller;

    // 初始化 controller
    public function __construct()
    {
        $this->controller = new NewsController();
    }

    // 錯誤處理
    private function callbackError($code, $message)
    {
        http_response_code($code);
        header('Content-Type: application/json');
        echo json_encode([
            'status' => 'error',
            'message' => $message,
            'code' => $code
        ]);
    }

    // 入口函式
    public function handleUrl($url,$method)
    { 
        try {
            if ($method !== 'GET') {
                $this->callbackError(405, '不支援的操作');
                return;
            }
            $url = parse_url($url, PHP_URL_PATH);
            //拆解url成陣列以方便後面分析
            $exploded_Url = explode('/', trim($url, '/'));
            $this->handleRoute($exploded_Url);

        } catch (\Exception $e) {
            $this->callbackError(500, '後端錯誤: ' . $e->getMessage());
        }
    }

    // 分派路由函式
    private function handleRoute($exploded_Url) {
        if (!empty($exploded_Url) && $exploded_Url[0] === 'index.php') {
            array_shift($exploded_Url); // 移除網址中的index.php來方便後面判斷
        }
        if (count($exploded_Url) === 1 && $exploded_Url[0] === 'news') {
            // /news
            $this->controller->getNewsList();
        } elseif(count($exploded_Url) === 1 && $exploded_Url[0] === 'category') {
            // /category
            $this->controller->getCategories();
        } elseif (
            count($exploded_Url) === 3 && 
            $exploded_Url[1] === 'category' && 
            is_numeric($exploded_Url[2])
        ) {
            // /news/category/{id}
            $categoryId = (int)$exploded_Url[2];
            $this->controller->getCategoryNewsList($categoryId);

        } else {
            $this->callbackError(404, '路徑不存在');
        }
    }
}