MongoDB
Lấy 5 danh sách 5 tài khoản:
db.accounts.find().pretty().limit(5)
Lấy danh sách 5 tk có limit là 10000
db.accounts.find({“limit: 10000}).limit(5)
Lấy tài khoản có account_id là 38377
db.accounts.findOne({“account_id:38377”})
Hiển thị danh sách sản phẩm của các account, chỉ lấy 5 accounts 
db.accounts.find({},{"products":1}).limit(5)
Hiển thị danh sách sản phẩm của 383777
db.accounts.findOne({},{"products":1,"account_id":383777})
Hiển thị 5 tk có sản phẩm là InvestmentStock
db.accounts.find({"products":{$in:["InvestmentStock"]}}).limit(5)
Hiển thị 5 account mà có 4 sản phẩm
db.accounts.find({"products":{$size:4}}).limit(5)
Hiển thị 5 account có ít nhất 4 sản phẩm
db.accounts.find({"products":{$exists:true},$where:"this.products.length>=4"}).limit(5)
Lấy danh sách 5 tk có limit >=10000
db.accounts.find({"limit":{"$gte":10000}}).limit(5)
Lấy danh sách 5 tài khoản có limit >=10000và product có InvesmentStock và Commodity
db.accounts.find({"limit":{"$gte":10000},"products":{$in:["InvestmentStock","Commodity"]}}).limit(5)
Lấy danh sách tài khoản có limit >=10000và product có InvesmentStock và Commodity hoặc có ít nhất 5 sản phẩm
Lấy danh sách username, name, address, email, và active của 5 kh
Lấy danh sách 5 khách hàng ở Plaza
Lấy danh sách 5 khách hàng có tháng sinh là 5









