```
Java-Book结构：
	files：静态文件，包括图片等
	sql：数据库文件，包含表结构，运行可以自动生成表，并插入其中设置的数据
	src/main：后端代码
		java/com/example/springboot：核心代码
			controller：控制层，其中每个类都代表一个功能
			service：服务层，负责具体业务逻辑实现（有些简单的逻辑可能在controller层实现了）
			mapper：数据层（操作数据库），使用mybatis-plus，更方便和高效的操作数据库
			common：标准类定义
				Constants：定义常量（定义返回的数据中的不同code）
				Result：规范返回的数据格式（code、msg、data）
			config：配置
				interceptor：拦截器（拦截某些需要权限的资源请求，进行JWT校验）
			entity：实体，其中每个类对应数据库每个表及其字段
			utils：工具类
			SpringbootApplication：项目启动入口
		resources：包含和target/classses中一样的配置文件
	target/classes：后端配置文件
	vue：前端代码
```





```
个人知识管理系统：
	Backend：后端代码
		app/app.py：项目启动入口
		constants：项目常量定义（定义返回的code等内容）
		controller
		service
		mapper
		middleware：定义拦截器，进行鉴权、接口日志打印等操作
		pojo：标准类定义
			models.py：其中每个类都对应数据库的表及字段（使用flask-sqlAlchemy库进行orm映射，方便操作数据库）
			Result.py：规范数据返回格式
		utils：工具函数（项目中实现功能时需要的工具或可复用的函数，方便维护功能或增加功）
	Fronted：前端代码
```

