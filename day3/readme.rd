// - Lấy dữ liệu
db.tblNhanVien.find()

// - lay voi dinh dang 
db.tblNhanVien.find().pretty()

// - Tim kiem nhan vien
db.tblNhanVien.findOne(
    {
        maso: "nv02"
    }
)
//  Tim kiem nhieu dieu kien
db.tblNhanVien.find(
    {
        $and:[
            {
                tuoi: 32
            },
            {
                luong: 350,2
            }
        ]
    }
).pretty()

db.tblNhanVien.find(
    {
        $or:[
            {
                tuoi: 27
            },
            {
                luong: 3000
            }
        ]
    }
).pretty()

// Phep so sanh
    + $lt
    + $lte
    + $gt
    + $gte
    + $ne (ko bang)
    + $in
    + $nin

// Gioi tinh la nam va hoac tuoi > 26 , luong > 200
db.tblNhanVien.find({
    $and: [
        {
            gioitinh: true
        },
        {
            $or: [
                {
                    tuoi: {$gt: 26}
                },
                {
                    luong: {$gt: 200}
                }
            ]
        }
        
    ]
})

//- 
db.tblNhanVien.find({
    $nor:[
        {tuoi: 32},
        {luong: 750}
    ]
})

/*****UPDATE******/

db.tblNhanVien.update(
    {
        "_id" : ObjectId("630e03b7ae1bf02150f5adfd"),
    },
    {
        $set: { tuoi: 45 }
    }
)

//kiem tra lai thong tin cap nhat
db.tblNhanVien.find({
    "_id" : ObjectId("630e03b7ae1bf02150f5adfd")
}).pretty()

// db.tblNhanVien.save() -> ver 4.2 ko dung nua thay vao do dung insertone hay replaceone

db.tblNhanVien.updateMany(
    {
        tuoi: {
            $gt: 44
        }
    },
    {
        $set: {
            luong: 5000
        }
    }
)

db.tblNhanVien.findOne({
    tuoi: {
        $gt: 44
    }
})

// #####REMOVE########
// db.tblNhanVien.remove({
//     tuoi: {
//         $lte : 35
//     }
// })

db.tblNhanVien.deleteMany({
    "tuoi": {
        $lt : "35"
    }
})

// #LIMIT

db.tblNhanVien.find().limit(2).pretty()

// SKIP
db.tblNhanVien.find().limit(1).skip(2).pretty()

// #SORT
// 1 -> ASC,
// 0 -> No,
// -1 -> DESC

db.tblNhanVien.find().sort(
    { luong : 1}
)

db.tblNhanVien.find().sort(
    {tuoi: -1},
    { luong : 1}
)
// INDEXING
// 1: ASC
// -1: DESC

db.tblNhanVien.createIndex({
    ten: 1
})

db.tblNhanVien.createIndex({
    luong: 1,
    tuoi: -1
})

// AGGREGATION
db.tblNhanVien.aggregate(
    [
        { 
            $group: {
                _id: "$gioitinh", 
                soluong: {$sum: 1}
            }
        }
    ]
)
