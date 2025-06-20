## 這是面試答題的PHP後端
需要修改 Src/Config/Database 內的資料庫設定來符合環境

完整資料庫的sql檔案位於根目錄，檔案名叫"news_db.sql"

專案結構
news_API/
├── public/
│   └── index.php          # API 入口檔案
├── src/
│   ├── Config/
│   │   └── Database.php   # 資料庫連線
│   ├── Controller/
│   │   └── NewsController.php # 控制器
│   └── Router/
│       └── Router.php     # 路由處理
└── README.md
