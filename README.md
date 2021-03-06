# 5RUBY_工程師訓練教材: 後端

## 任務功能
* 可新增自己的任務
* 使用者登入後，只能看見自己建立的任務
* 可設定任務的開始及結束時間
* 可設定任務的優先順序（高、中、低）
* 可設定任務目前的狀態（待處理、進行中、已完成）
* 可依狀態篩選任務
* 可以任務的標題、內容進行搜尋
* 可為任務加上分類標籤
* 任務列表，並可依優先順序、開始時間及結束時間等進行排序

## 24步驟
步驟1: 建立 Rails 的開發環境(done)

步驟2: 步驟2: 在 GitHub 建立 repository(done)

步驟3: 建立 Rails 專案(done)

步驟4: 想像網站成品會是什麼樣子(done)

步驟5: 資料庫連接等週邊設定(done)

步驟6: 建立任務 model(done)

步驟7: 新增、修改、刪除任務(done)

步驟8: 寫 E2E 測試
setup travis IC

步驟9: 將網站中的中文部分共用化

步驟10: 設定 Rails 的時區(done)

步驟11: 任務列表以建立時間排序(done)

步驟12: 資料驗證

步驟13: 網站佈署
https://fiveruby.herokuapp.com/
條件:已有Heroku帳密，已安裝Heroku Cli，已Git版控，初期已選定pgSQL。
部署分支:main
```ruby
$ heroku login
# $ heroku create project_name 或 Heroku 上 Create new app
$ heroku git:remote -a fiveruby
$ git push heroku main
$ heroku run rails db:migrate
```
如果有錯誤
```ruby
$ heroku run rails console
```