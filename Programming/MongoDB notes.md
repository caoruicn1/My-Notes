# MongoDB

## What is MongoDB
- Json
	- like dict in python
- **Schemaless**

## MongoDB Relative to Relational
- To retain scalability
	- no Joins
	- no Transactions across multiple collections

## Introduction to JSON
```
db.things.save()
db.things.find()
db.things.find().pretty()
```

## Hello World, Mongo Style
``` 
var j = db.names.findOne()
db.names.save(j)
```


``` python
db.shutdownSever() # 退出
show databases
show collections

use tutorial

db.createCollection('author')
db.author.drop()
db.createCollection('movie')
db.movie.insert() # 括号内添加jason格式，批量需[]

db.movie.find().pretty()

####### 查询 #######

db.movie.find({'directed_by':'David Fincher'}).pretty() # 默认and
db.movie.find(
{
  $or: 
     [  {'stars':'Robin Wright'}, 
        {'stars':'Morgan Freeman'}
     ]
}).pretty()

# $gt： 大于  
# $lt: 小于
# $let: 小于或等于；
# $get: 大于或等于；
# $ne: 不等于。
db.movie.find({'likes':{$gt:500000}}).pretty()  


db.movies.findOne({'title':'Forrect Gump'})  # 返回第一个

####### 局部查询 #######

#表示要返回，而0则表示不返回。默认值是0
db.movie.find({'tags':'drama'},{'debut':1,'title':1}).pretty()



####### 更新 #######
db.movie.update({title:'Seven'}, {$set:{likes:134371}})
db.movie.update({title:'Seven'}, {$inc:{likes:2}})

# 若有多部符合要求的电影。默认只更新第一个。如果要多个同时更新，要设置{multi:true}
db.movie.update({}, {$inc:{likes:10}},{multi:true})


####### 删除 #######
db.movie.remove({'tags':'romance'})
db.movie.remove({'tags':'romance'}，1) 只删除第一个

####### 索引 #######
db.movie.ensureIndex({directed_by:1})
db.movie.find().sort({'title':1}).pretty() # 1是升序，-1是降序。默认是1。

db.movie.getIndexes()
db.movie.dropIndex('index_name')



####### 聚合 #######
# 这里按照导演名字进行聚合：
db.movie.aggregate([{$group:{_id:'$directed_by'}}])

# 接着我们要找出，每个导演的电影数分别有多少：
db.movie.aggregate([{$group:{_id:'$directed_by',num_movie:{$sum:1}}}])

# 注意$sum后面的1表示只是把电影数加起来，但我们也可以统计别的数据，比如两位导演谁的赞比较多
db.movie.aggregate([{$group:{_id:'$directed_by',num_likes:{$sum:'$likes'}}}])
db.movie.aggregate([{$group:{_id:'$directed_by',num_movie:{$avg:'$likes'}}}])


```