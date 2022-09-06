-Mongodb truy xuất ánh xạ từ ram vào ổ cứng
- Cơ chế MapReduce

* Cài đặt Mongodb
https://www.mongodb.com/try/download/community
-> nhớ tích vào tool compasMongoDB

Table -> collection
row -> document

#kết nối với compas
# Lenh command
Xem danh sach cac db
show dbs

#Tạo DB
use dbQLNV

#Tao collection
db.createCollection('tblNhanVien')

#chen 1 document vao collection
db.tblNhanVien.insertOne(
    {
        "maso": "nv01",
        "ten": "An",
        "tuoi": 27,
        "gioitinh": true,
        "luong": 250.5
    }
)

#insert nhieu dong
db.tblNhanVien.insertMany(
    [
        {
            "maso": "nv02",
            "ten": "Lan",
            "tuoi": 32,
            "gioitinh": false,
            "luong": 350.5
        },
        {
            "maso": "nv03",
            "ten": "Tung",
            "tuoi": 28,
            "gioitinh": true,
            "luong": 400
        }
    ]
)


#vi du them mot field moi
db.tblNhanVien.insertOne(
    {
        "maso": "nv05",
        "ten": "Long",
        "tuoi": 27,
        "gioitinh": true,
        "luong": 250.5,
        "chucvu": "quanly"
    }
)

db.tblNhanVien.insertOne(
    {
        "maso": "nv06",
        "ten": "Hue",
        "tuoi": 27,
        "gioitinh": false,
        "luong": 250.5,
        "chucvu": "Sale",
        "giadinh": {
            "chong": "Cuong",
            "con": "Minh"
        }
    }
)

db.tblNhanVien.insertOne(
    {
        "maso": "nv07",
        "ten": "Tan",
        "tuoi": 27,
        "gioitinh": true,
        "luong": 3000,
        "chucvu": "DEV",
        "job": [
            {
                "nam": "2019",
                "lamviec": "FPT"
            },
            {
                "nam": "2020",
                "lamviec": "VNGAME"
            }
        ]
    }
)