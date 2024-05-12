extends Node

#
# allResources
#


############################
# 用于传递玩家选择的模块
var OperationNoteChatKey
# 定义下载地址
var ChioseDownloadUrl="http://www.baidu.com"
#############################



#############
#  知识点汇总 #
#############
# 知识节点
var ArrayAllKnowledgeNodeResources = [
	"Jdk","Tomcat","Mysql","Oracle","Sqlserver","Nginx","Ceph","Docker",
	"Ansible","Chrony","Elk","Hadoop","Ntpd","Kubernetes","Prometheus",
	"RabbitMQ","RocketMQ","Kafka","CentosKernelUpdate","RAID"
]


#############
#  知识点简介 #
#############
# 知识节点对应的数据
var ArrayAllKnowledgeNodeInfoResources = {
	# 闲聊 - 知识点简短介绍
	"Jdk":["HelloJdk\nJDK是JavaDevelopmentKit的缩写,它是Java语言的软件开发工具包(SDK),JDK是Java开发的核心,包含了Java的运行环境(JVM)、Java工具和Java基础的类库.它提供了构建在Java平台上发布的应用程序、applet和组件的开发环境.JDK中包括编译器(javac)、打包工具(jar)、文档生成器(javadoc)、调试器(jdb)等基本组件,以及完整的JRE(JavaRuntimeEnvironment).此外,JDK还包括了JavaAPI,这是预定义的类库,开发人员需要使用这些类来访问Java的功能.JDK的安装是开发Java程序的第一步准备,因为它包含了编译、运行、调试等关键命令,即使使用Eclipse、NetBeans等开发工具也需要JDK或JRE的支持\n\n常用的Web环境/开发环境需要Jdk支持,就好比Dota地图需要在War3游戏中运行,它在LOL中是运行不了的"],
	"Tomcat":["HelloTomcat\nTomcat是Apache软件基金会（ApacheSoftwareFoundation）的Jakarta项目中的一个核心项目,由Apache、Sun和其他一些公司及个人共同开发而成.由于有了Sun的参与和支持,最新的Servlet和JSP规范总是能在Tomcat中得到体现,Tomcat5支持最新的Servlet2.4和JSP2.0规范.因为Tomcat技术先进、性能稳定,而且免费,因而深受Java爱好者的喜爱并得到了部分软件开发商的认可,成为比较流行的Web应用服务器\n\nTomcat本身无法直接在计算机上运行,需要依赖Java虚拟机,所以一般情况下Jdk+Tomcat搭配使用,当然正常情况还会搭配一个数据库,如Mysql,被本人戏称Web三件套"],
	"Mysql":["HelloMysql\nMySQL是一个关系型数据库管理系统,关系数据库将数据保存在不同的表中,而不是将所有数据放在一个大仓库内,这样就增加了速度并提高了灵活性.MySQL软件采用了双授权政策,分为社区版和商业版,由于其体积小、速度快、总体拥有成本低,尤其是开放源码这一特点,一般中小型和大型网站的开发都选择MySQL作为网站数据库."],
	"Oracle":["HelloOracle\nOracle公司(甲骨文)是全球最大的信息管理软件及服务供应商,Oracle开发的关系数据库产品因性能卓越而闻名,Oracle数据库产品为财富排行榜上的前1000家公司所采用,许多大型网站也选用了Oracle系统,是世界最好的数据库产品\n\n收费!收费!收费!同时Jdk,Mysql需要在Oracle官网下载"],
	"Sqlserver":["HelloSQLServer\n美国Microsoft公司推出的一种关系型数据库系统.SQLServer是一个可扩展的、高性能的、为分布式客户机/服务器计算所设计的数据库管理系统,实现了与WindowsNT的有机结合,提供了基于事务的企业级信息管理系统方案"],
	"Nginx":["HelloNginx\nNginx(enginex)是一个高性能的HTTP和反向代理web服务器,同时也提供了IMAP/POP3/SMTP服务.Nginx是由伊戈尔·赛索耶夫为俄罗斯访问量第二的Rambler.ru站点（俄文：Рамблер）开发的,因它的稳定性、丰富的功能集、简单的配置文件和低系统资源的消耗而闻名.其特点是占有内存少,并发能力强,事实上nginx的并发能力在同类型的网页服务器中表现较好\n\nNginx常用于正反向代理[解决甲方网络复杂情况的同时重新定义业务系统的访问方式],负载均衡[分担业务系统的并发压力及在一定程度上解决单点故障问题]"],
	"Ceph":["HelloCeph\nCeph是一个对象(object)式的分布式存储系统,同时支持对象存储、块设备、文件系统.它把每一个待管理的数据流(文件等数据)切分为一到多个固定大小(默认4兆)的对象数据,并以其为原子单元(原子是构成元素的最小单元)完成数据的读写"],
	"Docker":["HelloDocker\nDocker是一个开源的应用容器引擎,让开发者可以打包他们的应用以及依赖包到一个可移植的镜像中,然后发布到任何流行的Linux或Windows操作系统的机器上,也可以实现虚拟化.容器是完全使用沙箱机制,相互之间不会有任何接口"],
#
	"Ansible":["HelloAnsible\nansible是新出现的自动化运维工具,基于Python开发,集合了众多运维工具(puppet、cfengine、chef、func、fabric)的优点,实现了批量系统配置、批量程序部署、批量运行命令等功能.Ansible架构相对比较简单,仅需通过SSH连接客户机执行任务即可.\nansible是基于模块工作的,本身没有批量部署的能力.真正具有批量部署的是ansible所运行的模块,ansible只是提供一种框架.主要包括:\n\t(1)连接插件connectionplugins：负责和被监控端实现通信\n\t(2)hostinventory：指定操作的主机,是一个配置文件里面定义监控的主机\n\t(3)各种模块核心模块、command模块、自定义模块\n\t(4)借助于插件完成记录日志邮件等功能\n\t(5)playbook：剧本执行多个任务时,非必需可以让节点一次性运行多个任务"],
	"Chrony":["HelloChrony\nChrony是一个开源自由的网络时间协议-NTP的客户端和服务器软软件.它能让计算机保持系统时钟与时钟服务器（NTP）同步,因此让你的计算机保持精确的时间,Chrony也可以作为服务端软件为其他计算机提供时间同步服务.Chrony由两个程序组成,分别是chronyd和chronyc\n(1)chronyd是一个后台运行的守护进程,用于调整内核中运行的系统时钟和时钟服务器同步.它确定计算机增减时间的比率,并对此进行补偿.\n(2)chronyc提供了一个用户界面,用于监控性能并进行多样化的配置.它可以在chronyd实例控制的计算机上工作,也可以在一台不同的远程计算机上工作."],
	"Elk":["HelloElk\nELK其实并不是一款软件,而是一整套解决方案,是三个软件产品的首字母缩写,Elasticsearch,Logstash 和 Kibana。这三款软件都是开源软件,通常是配合使用,而且又先后归于 Elastic.co 公司名下,故被简称为ELK协议栈"],
	"Hadoop":["HelloHadoop\nHadoop是一个由Apache基金会所开发的分布式系统基础架构.用户可以在不了解分布式底层细节的情况下,开发分布式程序.充分利用集群的威力进行高速运算和存储.Hadoop实现了一个分布式文件系统(DistributedFileSystem)\n1.高可靠性,Hadoop按位存储和处理数据的能力值得人们信赖\n2.高扩展性,Hadoop是在可用的计算机集簇间分配数据并完成计算任务的，这些集簇可以方便地扩展到数以千计的节点中\n3.高效性,Hadoop能够在节点之间动态地移动数据，并保证各个节点的动态平衡，因此处理速度非常快\n4.高容错性,Hadoop能够自动保存数据的多个副本，并且能够自动将失败的任务重新分配\n5.低成本,与一体机、商用数据仓库以及QlikView、Yonghong Z-Suite等数据集市相比，hadoop是开源的，项目的软件成本因此会大大降低"],
	"Ntpd":["HelloNtpd\nNTP（NetworkTimeProtocol,网络时间协议）是用来使网络中的各个计算机时间同步的一种协议.它的用途是把计算机的时钟同步到世界协调时UTC,其精度在局域网内可达0.1ms,在互联网上绝大多数的地方其精度可以达到1-50ms.(1s=1000ms) NTP服务器就是利用NTP协议提供时间同步服务的\nntpd 是一个时间服务.采用柔性时间调整策略,让时间的变化和调整尽量减少对业务的影响.\nntpd 不盲目相信远端时钟,服务器时间和远端时钟超过恐慌阈值（默认1000秒）,ntpd 甚至会停止时间同步.\nntpd 自己会思考.它相信本地时间可能不对,但是不会忽快忽慢甚至停滞.ntpd 通过多次收发包选择权威稳定的时间源,算出双方间的网络延迟,然后才会采信新的远端时钟进行时间同步.\nntpd 在和时间服务器的同步过程中,会把 BIOS 计时器的振荡频率偏差——或者说 Local Clock 的自然漂移 (drift) ——记录下来.这样即使网络有问题,本机仍然能维持一个相当精确的走时.\n"],
	"Kubernetes":["HelloKubernetes\nKubernetes是一个开源的容器编排平台,它提供了一种方便管理和部署容器化应用程序的方式.Kubernetes是一种用于自动部署、扩展和管理容器化应用程序的开源平台.它最初由Google开发,并在2014年开源发布,现已成为CNCF(CloudNativeComputingFoundation)的一个重要项目.Kubernetes的设计目标是让应用程序在分布式环境中运行得更加可靠、高效、灵活和可扩展.它提供了一个简单而强大的API来管理应用程序容器的生命周期,包括启动、停止、重启和自动扩展等操作.Kubernetes还支持自动负载均衡、存储卷管理、自动容器恢复、自动滚动升级、自动容器扩展等功能,使得应用程序更加稳定和可靠."],
	"Prometheus":["HelloPrometheus\nPrometheus 是一个开源的服务监控系统和时序数据库,其提供了通用的数据模型和快捷数据采集、存储和查询接口.它的核心组件Prometheus server会定期从静态配置的监控目标或者基于服务发现自动配置的自标中进行拉取数据,当新拉取到的数据大于配置的内存缓存区时,数据就会持久化到存储设备当中."],
	"RabbitMQ":["HelloRabbitMQ\nRabbitMQ是实现了高级消息队列协议（AMQP）的开源消息代理软件（亦称面向消息的中间件）.RabbitMQ服务器是用Erlang语言编写的,而集群和故障转移是构建在开放电信平台框架上的.所有主要的编程语言均有与代理接口通讯的客户端库."],
	"RocketMQ":["HelloRocketMQ\nRocketMQ是一款分布式、队列模型的消息中间件\n我们平时使用一些体育新闻软件,会订阅自己喜欢的一些球队板块,当有作者发表文章到相关的板块,我们就能收到相关的新闻推送.发布-订阅(Pub/Sub)是一种消息范式,消息的发送者(称为发布者、生产者、Producer)会将消息直接发送给特定的接收者(称为订阅者、消费者、Comsumer).而RocketMQ的基础消息模型就是一个简单的Pub/Sub模型."],
	"Kafka":["HelloKafka\nKafka是由Apache软件基金会开发的一个开源流处理平台,由Scala和Java编写.Kafka是一种高吞吐量的分布式发布订阅消息系统,它可以处理消费者在网站中的所有动作流数据.这种动作（网页浏览,搜索和其他用户的行动）是在现代网络上的许多社会功能的一个关键因素.这些数据通常是由于吞吐量的要求而通过处理日志和日志聚合来解决.对于像Hadoop一样的日志数据和离线分析系统,但又要求实时处理的限制,这是一个可行的解决方案.Kafka的目的是通过Hadoop的并行加载机制来统一线上和离线的消息处理,也是为了通过集群来提供实时的消息."],
	"CentosKernelUpdate":["CentOS升级版本及内核"],
	"RAID":["RAID"]
	}


#############
#  知识点命令 #
#############
# 知识点指令 - Instruct
var ArrayKnowledgeInstructResources = {
	"Jdk":["Jdk查询版本[常用于验证jdk是否安装]:\n\tjava -version\n后台运行SpringBoot工程jar:\n\tnohup java -jar test.jar &\n获取本机Java程序的pid:\n\tjps\n获取本机Java程序进程的详细信息:\n\tjps -mlvV\n监控指定pid的GC信息:\n\tjstat -gc pid\n查看指定进程pid的堆栈信息:\n\tjstack -F pid > jstack.log"],
	"Tomcat":["设置JVM的启动参数[catalina.sh]:\n\t[JAVA_OPTS=\"$JAVA_OPTS -Xmx3550m -Xms3550m -Xss128k -XX:NewRatio=4 -XX:SurvivorRatio=4\"]\n设置Tocmat-server.xml参数:\"\n\t<Connector\n\tport=\"8084\"\n\tprotocol=\"org.apache.coyote.http11.Http11AprProtocol\"\n\tconnectionTimeout=\"20000\"\n\tminSpareThreads=\"5\"\n\tmaxSpareThreads=\"100\"\n\tmaxThreads=\"1000\"\n\tacceptCount=\"200\"\n\tmaxHttpHeaderSize=\"8192\"\n\tURIEncoding=\"UTF-8\"\n\tdisableUploadTimeout=\"True\"\n\tenableLookups=\"false\"\n\tcompression=\"on\"\n\tcompressableMimeType=\"text/html,text/xml,text/plain,text/css,text/javascript,text/json,application/x-javascript,application/javascript,application/json\"\n\tredirectPort=\"8443\" />"],
	"Mysql":["22222"],
	"Oracle":["33333"],
	"Sqlserver":["44444"],
	"Nginx":["55555"],
	"CentosKernelUpdate":["55555"],
	"RAID":["RAID"]
}

###########
#   JDK   #
###########
# 知识节点对应的数据 - JDK|Key
var ArrayKnowledgeJDKResourcesTitle = [
	"特殊情况-情况1:使用新服务器部署环境",
	"特殊情况-情况2:非新服务器,存在公用服务器可能",
	"0、查询默认安装的Java服务并卸载不匹配的Java版本",
	"1、获取JDK安装包",
	"2、上传文件到服务器/tmp",
	"3、创建本公司专用目录",
	"4、解压安装包至自定义目录",
	"5、配置环境变量",
	"6、生效环境变量",
	"7、验证",
	"",
	""
]
# 知识节点对应的数据 - JDK|Value
var ArrayKnowledgeJDKResourcesTitleText = [
	"跳过情况2,移步至0",
	"通过java -version验证是否配置环境变量来判断存在其他厂商使用的可能[万不得已的情况下移步最后一行]",
	"rpm -qa | grep java | xargs rpm -e --nodeps",
	"请移步至下载模块",
	"通过Xftp连接服务器/tmp目录",
	"mkdir -p /Tools/jdk/",
	"tar -zxvf /tmp/jdk-*****-linux-x64.tar.gz -C /zYy1125/Tools/Jdk/",
	"export JAVA_HOME=/Tools/jdk/jdk1.8.0_40\nexport PATH=$PATH:$JAVA_HOME/bin:$JAVA_HOME/jre/bin",
	"source /etc/profile",
	"java -version",
	"{仅执行1-4,在项目启动文件中指定jdk的路径,也能够保证项目正常运行}",
	""
]
# 资源下载地址 - JDK|DownlaodKey
var ArrayKnowledgeJDKDownloadResourcesTitle = [
	"Jdk官方下载地址",
	"Jdk1.8下载地址[百度云盘]",
	"Jdk1.7下载地址[百度云盘]",
	"Jdk1.8_win下载地址[百度云盘]",
	"Jdk1.7_win下载地址[百度云盘]"
]
# 资源下载地址 - JDK|DownlaodValue
var ArrayKnowledgeJDKDownloadResourcesTitleText = [
	"https://www.oracle.com/cn/java/",
	"https://pan.baidu.com/s/1xNXeMVM5-swNakPgWgb80A?pwd=tlou",
	"https://pan.baidu.com/s/1kVUBzqHwOghc4_vv_uYkNQ?pwd=tvkx",
	"https://pan.baidu.com/s/1o-1u8nRYaEGkICghsHq4Vg?pwd=izwn",
	"https://pan.baidu.com/s/1OhXJvpHi_AKc8hnhaWUZfg?pwd=14yt"
]

##########
# Tomcat #
##########
# 知识节点对应的数据 - TOMCAT
var ArrayKnowledgeTOMCATResourcesTitle = [
	"0、确认使用的Tomcat版本并查询默认安装的Java服务版本是否支持",
	"1、获取Tomcat安装包",
	"2、上传文件到服务器/tmp",
	"3、创建本公司专用目录",
	"4、解压安装包至自定义目录",
	"5、启动Tomcat",
	"6、验证",
	"",
	""
]
var ArrayKnowledgeTOMCATResourcesTitleText = [
	"java -version",
	"wget https://www.baiduyunpan.********",
	"",
	"mkdir -p /zYy1125/Software/Tomcat",
	"tar -zxvf /tmp/tomcat8 -C /zYy1125/Software/Tomcat/",
	"sh /zYy1125/Software/Tomcat/apache*8*tomcat/bin/startup.sh",
	"curl -I 120.0.0.1:8080",
	"",
	""
]
# 资源下载地址 - TOMCAT
var ArrayKnowledgeTOMCATDownloadResourcesTitle = [
	"TOMCAT官方下载地址",
	"TOMCAT8下载地址[百度云盘]",
	"TOMCAT7下载地址[百度云盘]",
	"TOMCAT8_win下载地址[百度云盘]",
	"TOMCAT7_win下载地址[百度云盘]"
]
var ArrayKnowledgeTOMCATDownloadResourcesTitleText = [
	"https://tomcat.apache.org/",
	"https://pan.baidu.com/s/1CrAeFm8kCXZ6bCIXbPCzlQ?pwd=jlsg",
	"https://pan.baidu.com/s/1CfiOAAV_HxWcUtxe-ACD1Q?pwd=x7ym",
	"https://pan.baidu.com/s/1pF_dKeqjuAjFn35ZOKi6Zg?pwd=yfiv",
	"https://pan.baidu.com/s/1pjgNkyLUONv1b8tSt89oAw?pwd=x3jb"
]

##########
#  Nginx #
##########
# 知识节点对应的数据 - Nginx
var ArrayKnowledgeNGINXResourcesTitle = [
	"1、获取Nginx安装文件以及相关依赖包,上传文件到服务器/tmp",
	"2、创建本公司专用目录",
	"3、解压安装文件至自定义目录",
	"4、统一汇总rpm依赖包路径,然后安装",
	"5、安装pcre",
	"6、安装openssl",
	"7、安装zlib",
	"8、安装nginx",
	"9、启动nginx",
	"10、验证",
	""
]
var ArrayKnowledgeNGINXResourcesTitleText = [
	"前往'下载'模块下载对应的文件",
	"mkdir -P /zYy1125/Tools/Nginx",
	"tar -zxvf nginx1.2.1.tar.gz -C /zYy1125/Tools/Nginx/",
	"rpm -Uvh /zYy1125/Tools/Nginx/rpm/*.rpm --nodeps --force",
	"tar -zxvf pcre-8.**.tar.gz\n./configure\nmake\nmake install\n---------------------------------",
	"tar -zxvf openssl-1.0.**.tar.gz\n./configure\nmake\nmake install\n---------------------------------",
	"tar -zxvf zlib-1.2.**.tar.gz\n./configure\nmake\nmake install\n---------------------------------",
	"tar -zxvf nginx-1.15.**.tar.gz\n./configure\nmake\nmake install\n---------------------------------",
	"./usr/local/nginx/sbin/nginx",
	"curl -I http://127.0.0.1",
	""
]
# 资源下载地址 - NGINX
var ArrayKnowledgeNGINXDownloadResourcesTitle = [
	"NGINX官方下载地址",
	"NGINX依赖rpm包下载地址",
	"NGINX依赖服务下载地址",
	"NGINX下载地址[百度云盘]",
	"NGINX_win下载地址[百度云盘]",
	""
]
var ArrayKnowledgeNGINXDownloadResourcesTitleText = [
	"https://nginx.org/en/download.html",
	"https://pan.baidu.com/s/1H86lX1mkzTezU1zvVIZkiw?pwd=najc",
	"https://pan.baidu.com/s/19e46ja2GxddGs7kjzKHBkQ?pwd=p5p5",
	"https://pan.baidu.com/s/1L3hHCCxGvjA_GSlcPKCGTg?pwd=dz5a",
	"https://pan.baidu.com/s/1HAoxOaO_90lPabb_zhZBRw?pwd=pm5p",
	""
]
	

#############
#   Mysql   #
#############
# 知识节点对应的数据 - Mysql|Key
var ArrayKnowledgeMysqlResourcesTitle = [
	"",
	""
]
# 知识节点对应的数据 - Mysql|Value
var ArrayKnowledgeMysqlResourcesTitleText = [
	"",
	""
]
# 资源下载地址 - MYSQL
var ArrayKnowledgeMYSQLDownloadResourcesTitle = [
	"MYSQL官方下载地址",
	"MYSQL5.6.*下载地址[百度云盘]",
	"MYSQL5.7.*下载地址[百度云盘]"
]
var ArrayKnowledgeMYSQLDownloadResourcesTitleText = [
	"https://dev.mysql.com/downloads/mysql/",
	"https://pan.baidu.com/s/1pF_dKeqjuAjFn35ZOKi6Zg?pwd=yfiv",
	"https://pan.baidu.com/s/1pjgNkyLUONv1b8tSt89oAw?pwd=x3jb"
]

#############
#   Oracle  #
#############
# 知识节点对应的数据 - Oracle|Key
var ArrayKnowledgeOracleResourcesTitle = [
	"",
	""
]
# 知识节点对应的数据 - Oracle|Value
var ArrayKnowledgeOracleResourcesTitleText = [
	"",
	""
]
# 资源下载地址 - ORACLE
var ArrayKnowledgeORACLEDownloadResourcesTitle = [
	"ORACLE官方下载地址",
	"ORACLE11g下载地址[百度云盘]"
]
var ArrayKnowledgeORACLEDownloadResourcesTitleText = [
	"https://www.oracle.com/database/technologies/oracle-database-software-downloads.html",
	"https://pan.baidu.com/s/1pjgNkyLUONv1b8tSt89oAw?pwd=x3jb"
]

#############
# Sqlserver #
#############
# 知识节点对应的数据 - Sqlserver|Key
var ArrayKnowledgeSqlserverResourcesTitle = [
	"",
	""
]
# 知识节点对应的数据 - Sqlserver|Value
var ArrayKnowledgeSqlserverResourcesTitleText = [
	"",
	""
]
# 资源下载地址 - SQLSERVER
var ArrayKnowledgeSQLSERVERDownloadResourcesTitle = [
	"SQLSERVER官方下载地址",
	"SQLSERVER2008下载地址[百度云盘]",
	"SQLSERVER2012下载地址[百度云盘]"
]
var ArrayKnowledgeSQLSERVERDownloadResourcesTitleText = [
	"https://www.microsoft.com/zh-cn/sql-server/sql-server-downloads",
	"https://pan.baidu.com/s/1pF_dKeqjuAjFn35ZOKi6Zg?pwd=yfiv",
	"https://pan.baidu.com/s/1pjgNkyLUONv1b8tSt89oAw?pwd=x3jb"
]

#############
#    Ceph   #
#############
# 知识节点对应的数据 - Ceph|Key
var ArrayKnowledgeCephResourcesTitle = [
	"[服务器准备工作]",
	"1、基础配置[*]",
	"2、安装时间同步服务[*]",
	"3、虚拟机模拟现场环境添加硬盘/虚拟机将自动重启/物理机需手动重启[*]",
	"4、验证[*]",
	"5、安装ceph服务[*]",
	"6、创建文件系统[*]",
	"7、挂载ceph集群存储",
	""
]
# 知识节点对应的数据 - Ceph|Value
var ArrayKnowledgeCephResourcesTitleText = [
	"-------------------------------\n192.168.1.100 Cephmaster\n192.168.1.101 Ceph01\n192.168.1.102 Ceph02\n-------------------------------\n192.168.1.200 挂载测试节点\n-------------------------------",
	"#修改主机名\n[root@* ~]hostnamectl set-hostname cephmaster\n[root@* ~]hostnamectl set-hostname ceph01\n[root@* ~]hostnamectl set-hostname ceph02\n#主机名绑定ip\n[root@* ~]vim /etc/hosts\n#192.168.1.100 cephmaster\n#192.168.1.100 ceph01\n#192.168.1.100 ceph02\n#关闭防火墙和selinux策略\n[root@* ~]vim /etc/selinux/config\n#enforcing替换成disabled\n#setenforce 0\n#创建cephuser用户\n[root@* ~]useradd -d /home/cephuser -m cephuser\n[root@* ~]echo \"cephuser\"|passwd --stdin cephuser\n[root@* ~]echo \"cephuser ALL = (root) NOPASSWD:ALL\" | sudo tee /etc/sudoers.d/cephuser\n[root@* ~]chmod 0440 /etc/sudoers.d/cephuser\n[root@* ~]sed -i s'/Defaults requiretty/#Defaults requiretty'/g /etc/sudoers\n#配置源\n[root@* ~]yum clean all\n[root@* ~]mkdir /mnt/bak\n[root@* ~]mv /etc/yum.repos.d/* /mnt/bak/\n[root@* ~]wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo\n[root@* ~]wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo\n#手动添加文件\n#配置ceph.repo源：参考下层级的配置文件：ceph.repo\n#配置epel.repo源：参考下层级的配置文件：epel.repo",
	"#安装时间同步服务\n[root@* ~]yum install ntp ntpdate ntp-doc -y\n#参考ntp配置\n#配置设备免密互通服务ssh  [cephmaster]\n[root@* ~]su - cephuser\n[root@* ~]ssh-keygen -t rsa#[一路回车]\n[root@* ~]cd .ssh/\n[root@* ~]cp id_rsa.pub authorized_keys\n[root@* ~]scp -r /home/cephuser/.ssh ceph01:/home/cephuser/\n[root@* ~]scp -r /home/cephuser/.ssh ceph02:/home/cephuser/\n",
	"#格式化磁盘\n[root@* ~]parted -s /dev/sdb mklabel gpt mkpart primary xfs 0% 100%\n[root@* ~]mkfs.xfs /dev/sdb -f\n#验证格式\n[root@* ~]blkid -o value -s TYPE /dev/sdb",
	"#验证防火墙\n[root@* ~]systemctl stop firewalld.service\n[root@* ~]systemctl disable firewalld.service\n#验证selinux\n[root@* ~]setenforce 0\n#验证ssh\n[root@* ~]ssh -p22 cephuser@cephmaster\n[root@* ~]ssh -p22 cephuser@ceph01\n[root@* ~]ssh -p22 cephuser@ceph02\n#验证主机名\n[root@* ~]hostname",
	"#安装ceph*[三台设备]\n[root@* ~]sudo yum update -y\n[root@* ~]sudo yum install yum-plugin-priorities -y\n[root@* ~]yum install epel-release -y\n#将rpm包传入每台设备使用命令安装即可\n[root@* ~]yum localinstall *.rpm\n[root@* ~]sudo yum install ceph-deploy -y#[cephmaster]\n[root@* ~]ceph-deploy install no-adjust-repo ceph01 ceph02 ceph03#[加上参数即可使用deploy安装]\n#生成ceph.conf相关信息\n[root@* ~]su - cephuser\n[root@* ~]mkdir cluster\n[root@* ~]cd cluster\n[root@* ~]ceph-deploy new cephmaster#[创建集群]\n#配置ceph参数：参考下层级的配置文件：ceph.conf\n#安装ceph-monit主控节点\n[root@* ~]ceph-deploy mon create-initial#[初始化]\n[root@* ~]ceph-deploy gatherkeys cephmaster\n#开始集群 osd[rbd模式跳过]\n#检查OSD节点上所有可用的磁盘\n[root@* ~]ceph-deploy disk list ceph01 ceph02\n#使用zap选项删除所有osd节点上的分区\n[root@* ~]ceph-deploy disk zap ceph01:/dev/sdb ceph02:/dev/sdb\n#准备OSD(使用prepare命令)\n[root@* ~]ceph-deploy osd prepare ceph01:/dev/sdb ceph02:/dev/sdb\n#激活OSD(注意由于ceph对磁盘进行了分区，/dev/sdb磁盘分区为/dev/sdb1)\n[root@* ~]ceph-deploy osd activate ceph01:/dev/sdb1 ceph02:/dev/sdb1\n#验证osd集群后节点分区\n[root@* ~]lsblk\n#查看OSD[rbd模式跳过]\n[root@* ~]ceph-deploy disk list ceph01 ceph02\n#用ceph-deploy把配置文件和admin密钥拷贝到管理节点和Ceph节点，这样你每次执行Ceph命令行时就无需指定monit节点地址\n[root@* ~]ceph-deploy admin cephmaster ceph01 ceph02\n#修改密钥权限\n[root@* ~]sudo chmod 644 /etc/ceph/ceph.client.admin.keyring\n[root@* ~]ceph config set mon auth_allow_insecure_global_id_reclaim false#[禁用不安全模式]\n#检查ceph状态\n[root@* ~]sudo ceph health\n[root@* ~]sudo ceph -s\n[root@* ~]sudo ceph osd stat\n[root@* ~]sudo ceph osd tree\n",
	"#查看管理节点状态[rbd模式跳过]\n[root@* ~]ceph mds stat\n#创建节点\n#创建mds节点[rbd模式跳过][cephfs模式执行]\n[root@* ~]cd cluster/\n[root@* ~]ceph-deploy mds create ceph-master\n[root@* ~]ceph mds stat\n#创建mgr节点\n[root@* ~]ceph-deploy mgr create cephmaster\n#创建osd、pool，pool是ceph存储数据时的逻辑分区,它起到namespace的作用\n#创建osd节点[rbd模式执行]\n[root@* ~]ceph-deploy osd create cephmaster --data /dev/sdb\n[root@* ~]ceph-deploy osd create ceph01 --data /dev/sdb\n[root@* ~]ceph-deploy osd create ceph02 --data /dev/sdb\n#创建osd以及poll  [cephfs模式执行 rbd模式跳过]\n[root@* ~]ceph osd lspools[root@* ~]#查看pool状态\n[root@* ~]ceph osd pool create cephfs_data 10\n[root@* ~]ceph osd pool create cephfs_metadata 10\n[root@* ~]ceph fs new myceph cephfs_metadata cephfs_data\n[root@* ~]ceph osd lspools[root@* ~]#查看pool状态\n#检查mds管理节点状态\n[root@* ~]ceph mds stat[root@* ~]#检查mds管理节点状态\n[root@* ~]sudo ceph -s[root@* ~]#查看ceph集群状态\n[root@* ~]sudo lsof -i:6789#查看ceph集群端口\n[root@* ~][cephfs模式到此截至执行集群创建 跳转至\"挂载ceph集群存储\"]\n#创建mon、mgr集群高可用\n[root@* ~]ceph-deploy mon add ceph01 --address 192.168.1.101#[添加mon节点01]\n[root@* ~]ceph-deploy mon add ceph01 --address 192.168.1.102#[添加mon节点01]\n[root@* ~]ceph quorum_status --format json-pretty#[查看节点高可用json格式信息]\n[root@* ~]ceph mon dump#[查看mon详细信息]\n[root@* ~]ceph-deploy mgr create ceph01 ceph02#[创建mgr高可用节点]\n#创建rbd模式的资源池\n[root@* ~]ceph osd pool create ceph-demo 64 64#[创建pg64 pgp64名字叫ceph-demo的pools资源池]\n[root@* ~]ceph osd pool get ceph-demo pg_num#[查看pg个数]\n[root@* ~]ceph osd pool get ceph-demo pgp_num#[查看pgp个数]\n[root@* ~]ceph osd pool get ceph-demo size#[查看pool中osd的个数]\n[root@* ~]ceph osd pool get ceph-demo crush_rule#[查看算法 ]\n#[更改为写入2个osd副本]\n[root@* ~]ceph osd pool set ceph-demo size 2\n#[pg容量不够,扩容pg,pgp]\n[root@* ~]ceph osd pool set ceph-demo pg_num 128\n[root@* ~]ceph osd pool set ceph-demo pgp_num 128",
	"#fuse[192.168.1.200挂载集群节点][文件存储]\n#配置源#配置base/epel源\n[root@* ~]wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo\n[root@* ~]wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo\n#配置ceph.repo源：参考下层级的配置文件：ceph.repo\n#配置epel.repo源：参考下层级的配置文件：epel.repo\n#安装依赖[root@* ~]sudo yum update -y && sudo yum install ceph* -y[root@* ~]sudo yum install yum-plugin-priorities -y[root@* ~]yum install -y ceph-fuse\n#创建挂载目录[root@* ~]mkdir /cephfs\n#将主控节点复制配置文件至当前环境[root@* ~]rsync -e \"ssh -p22\" -avpgolr root@192.168.1.100:/etc/ceph/ceph.conf /etc/ceph/[root@* ~]rsync -e \"ssh -p22\" -avpgolr root@192.168.1.100:/etc/ceph/ceph.client.admin.keyring /etc/ceph/\n#查看ceph授权\n[root@* ~]ceph auth list\n#将ceph集群存储挂载至当前环境的/cephfs目录\n[root@* ~]ceph-fuse -m 192.168.1.100:6789 /cephfs\n[root@* ~]vim /etc/fstab\n[root@* ~]#conf=/etc/ceph/cluster.conf  /cephfs  fuse.ceph defaults,netdev 0 0\n#验证\n[root@* ~]df -H\n[root@* ~]mkdir -p /cephfs/Soft\n#kernel+rbd [块存储]\n#[块设备可以直接通过rbd指定pool资源池进行块存储空间的拉取 形成一个虚拟磁盘挂载]\n#[考虑到扩容问题 不建议分区,格式化即可]\n#创建rbd：\n[root@* ~]rbd create -p ceph-demo --image rbd-demo.img --size 25G#[创建rbd]/[主机扩容至上限]\n[root@* ~]rbd -p ceph-demo ls [查看rbd]\n[root@* ~]rbd info ceph-demo/rbd-demo.img#[查看rbd详细信息]\n#禁止当前环境不支持的特性\n[root@* ~]rbd feature disable ceph-demo/rbd-demo.img deep-flatten\n[root@* ~]rbd feature disable ceph-demo/rbd-demo.img fast-diff\n[root@* ~]rbd feature disable ceph-demo/rbd-demo.img object-map\n[root@* ~]rbd feature disable ceph-demo/rbd-demo.img exclusive-lock\n[root@* ~]vim /etc/ceph/ceph.conf\n[root@* ~] ->rbd_default_features =1#设置默认为layering\n[root@* ~]sudo rbd map ceph-demo/rbd-demo.img#[rbd通过map方式创建rbd][必须以root身份执行]\n[root@* ~]rbd device list#[查看块设备信息 以及 挂载]\n[root@* ~]sudo mkfs.xfs /dev/rbd0#[格式化]\n[root@* ~]mkdir /mnt/rbd-demo   [创建磁盘所在目录]\n[root@* ~]mount /dev/rbd0 /mnt/rbd-demo/#[挂载磁盘 建立目录和磁盘联系]\n[root@* ~]df -H   /\n[root@* ~]lsblk#[查看磁盘以及挂载信息][/dev/sdb磁盘并没有挂载 但是数据存储到rbd块设备所在的目录,实际还是存储在各个节点的pools池]\n#扩容 [resize] 缩容[--allow-shrink]\n[root@* ~][查看块对应的img信息]\n[root@* ~]rbd -p ceph-demo info --image rbd-demo.img\n[root@* ~][扩大rbd设备的img为30G][不是增加30G是上限为30G]\n[root@* ~][磁盘以及块设备扩容成功][文件系统挂载目录为改变]\n[root@* ~]rbd resize ceph-demo/rbd-demo.img --size 30G#[磁盘/块设备扩容]\n[root@* ~]xfs_growfs /dev/rbd0#[文件系统扩容]\n#扩展\n[root@* ~]rados -p ceph-demo ls | grep rbd_data.*****#查看object信息\n[root@* ~]rados -p ceph-demo ls | grep rbd_data.*****#查看object个数\n[root@* ~]rados -p ceph-demo ls | grep rbd_data.*****#[4M每个  查看分配空间实际量]\n#快照恢复\n#垃圾箱",
	""
]

#############
#   Docker  #
#############
# 知识节点对应的数据 - Docker|Key
var ArrayKnowledgeDockerResourcesTitle = [
	"",
	""
]
# 知识节点对应的数据 - Docker|Value
var ArrayKnowledgeDockerResourcesTitleText = [
	"",
	""
]
#############
#  Ansible  #
#############
# 知识节点对应的数据 - Ansible|Key
var ArrayKnowledgeAnsibleResourcesTitle = [
	"1、通过yum安装",
	"2、关闭防火墙和selinux策略",
	"3、配置主机分组定义库",
	"4、配置公钥验证或加入免密码模式",
	"5、远程测试ssh正常",
	"6、开始验证以及下发任务",
	"",
]
# 知识节点对应的数据 - Ansible|Value
var ArrayKnowledgeAnsibleResourcesTitleText = [
	"[root@cephmaster rbd-demo]#:yum install epel-release -y\n[root@cephmaster rbd-demo]#:yum install ansible -y",
	"[root@cephmaster rbd-demo]#:sentenforce 0\n[root@cephmaster rbd-demo]#:vi /etc/selinux/config[修改成disabled]",
	"[root@cephmaster rbd-demo]#:vi /etc/ansible/hosts\n[root@cephmaster rbd-demo]#:[webservers]\n[root@cephmaster rbd-demo]#:192.168.1.107\n[root@cephmaster rbd-demo]#:192.168.1.108",
	"[root@cephmaster rbd-demo]#:例如：[webservers] --> 192.168.1.108 ansible_ssh_pass=12345     [将密码写入配置文件]",
	"[root@cephmaster rbd-demo]#:ssh root@192.168.1.108 -p 22",
	"[root@cephmaster rbd-demo]#:ansible -i /etc/ansible/hosts webservers -m command -a 'date +\"%Y-%m%-%d %H:%M:%S\"' -k",
	""
]
#############
#   Chrony  #
#############
# 知识节点对应的数据 - Chrony|Key
var ArrayKnowledgeChronyResourcesTitle = [
	"1、安装",
	"2、修改主节点|从节点配置文件",
	"3、同步主节点|从节点",
	"4、查看同步状态",
	"5、手动立即同步",
	""
]
# 知识节点对应的数据 - Chrony|Value
var ArrayKnowledgeChronyResourcesTitleText = [
	"yum install chrony -y",
	"[root@cephmaster rbd-demo]# vim /etc/chrony.conf\n# Use public servers from the pool.ntp.org project.\n# Please consider joining the pool (http://www.pool.ntp.org/join.html).\nserver 0.202.108.22.5\nserver 1.baidu.com iburst\nserver 2.sina.com.cn iburst\nserver 3.free.aliyun.com iburst\n\n# Record the rate at which the system clock gains/losses time.\ndriftfile /var/lib/chrony/drift\n# Allow the system clock to be stepped in the first three updates\n# if its offset is larger than 1 second.\nmakestep 1.0 3\n# Enable kernel synchronization of the real-time clock (RTC).\nrtcsync\n# Enable hardware timestamping on all interfaces that support it.\n#hwtimestamp *\nallow 0.0.0.0/24\nallow 192.168.1.0/24\n\n[root@ceph02 ~]# vim /etc/chrony.conf\n# Use public servers from the pool.ntp.org project.\n# Please consider joining the pool (http://www.pool.ntp.org/join.html).\nserver 192.168.1.100 iburst\n# Record the rate at which the system clock gains/losses time.\ndriftfile /var/lib/chrony/drift\n# Allow the system clock to be stepped in the first three updates# if its offset is larger than 1 second.\nmakestep 1.0 3\n# Enable kernel synchronization of the real-time clock (RTC).\nrtcsync\n# Enable hardware timestamping on all interfaces that support it.\n#hwtimestamp *\n# Increase the minimum number of selectable sources required to adjust\n# the system clock.\n#minsources 2\nallow 192.168.1.100",
	"[root@cephmaster rbd-demo]#:systemctl restart chronyd.service\n[root@cephmaster rbd-demo]#:systemctl enable chronyd.service\n[root@ceph02 ~]#:chronyc sources -v",
	"systemctl status chronyd -l",
	"chronyc -a makestep",
	""
]

#############
#   Elk    #
#############
# 知识节点对应的数据 - Elk|Key
var ArrayKnowledgeElkResourcesTitle = [
	"1、安装 elasticsearch[所有节点均安装]",
	"2、安装插件 logstash[仅主节点安装]",
	"3、安装 kibana[仅主节点安装]"
]
# 知识节点对应的数据 - Elk|Value
var ArrayKnowledgeElkResourcesTitleText = [
	"elasticsearch安装源:\n1.1 安装源\n[root@cephmaster rbd-demo]#:rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch\n[root@cephmaster rbd-demo]#:vim /etc/yum.repos.d/elasticsearch.repo[参考repo文件]\n[root@cephmaster rbd-demo]#:yum install elasticsearch -y\n1.2 安装jdk1.8.*\n1.3 修改elasticsearch配置文件\n[root@cephmaster rbd-demo]#:vim /etc/elasticsearch/elasticsearch.yml\n1.4 授权\n[root@cephmaster rbd-demo]#:mkdir -p /data/es-data\n[root@cephmaster rbd-demo]#:chown -R elasticsearch:elasticsearch /data/es-data/\n1.5 验证\n[root@cephmaster rbd-demo]#:systemctl start elasticsearch.service\n[root@cephmaster rbd-demo]#:systemctl status elasticsearch.service\n[root@cephmaster rbd-demo]#:netstat -natp | grep 9200\n1.6 扩展\n[root@cephmaster rbd-demo]#:vim /etc/security/limits.conf\n[root@cephmaster rbd-demo]#:elasticsearch soft memlock unlimited\n[root@cephmaster rbd-demo]#:elasticsearch hard memlock unlimited\n1.7 测试 打印节点信息访问http://192.168.1.100:9200\n3.1 [root@cephmaster rbd-demo]#:head\n3.2 [root@cephmaster rbd-demo]#:kopf",
	"logstash安装源:\n2.1 安装源\n[root@cephmaster rbd-demo]#:rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch\n[root@cephmaster rbd-demo]#:vim /etc/yum.repos.d/logstash.repo[参考源]\n[root@cephmaster rbd-demo]#:yum install logstash -y\n2.2 测试logstash\n[root@cephmaster rbd-demo]#:/opt/logstash/bin/logstash -e 'input { stdin{} } output { stdout{} }'",
	"kibana下载安装文件:\n3.1 下载kibana\n[root@cephmaster rbd-demo]#:wget https://download.elastic.co/kibana/kibana/kibana-4.3.1-linux-x64.tar.gz\n3.2 解压\n[root@cephmaster rbd-demo]#:tar -zxvf kibana-4.3.1-linux-x64.tar.gz -C /opt/\n[root@cephmaster rbd-demo]#:mv /opt/kibana-4.3.1-linux-x64/ /opt/kibana/\n3.3 配置\n[root@cephmaster rbd-demo]#:vim /opt/kibana/config/kibana.yml\n3.4 启动\n[root@cephmaster rbd-demo]#:/opt/kibana/bin/kibana\n3.5 访问\n[root@cephmaster rbd-demo]#:http://192.168.1.100:5601"
]



#############
#   Ntpd    #
#############
# 知识节点对应的数据 - Ntpd|Key
var ArrayKnowledgeNtpdResourcesTitle = [
	"",
	""
]
# 知识节点对应的数据 - Ntpd|Value
var ArrayKnowledgeNtpdResourcesTitleText = [
	"",
	""
]
#############
# Kubernetes#
#############
# 知识节点对应的数据 - Kubernetes|Key
var ArrayKnowledgeKubernetesResourcesTitle = [
	"[服务器准备工作]",
	"[前置步骤]",
	"[正式部署]",
	"1、配置设备解析地址[*]",
	"2、配置主机名[*]",
	"3、部署时间同步服务chrony[harbor为中心]",
	"4、关闭防火墙以及selinux规则[*]",
	"5、关闭swap分区[*]",
	"6、安装docker[*]",
	"7、Harbor部署[harbor]",
	"8.1、k8s集群部署-依赖文件[mn]",
	"8.2、k8s集群部署-ipvs内核模块配置[mn]",
	"8.3、k8s集群部署-安装cri[mn]",
	"8.4、k8s集群部署-安装组件并加入集群[mn]",
	"8.5、k8s集群部署-部署网络组件:calico[mn]",
	"9、安装Kuboard可视化界面",
	"10、安装Keboard-metrics资源统计模块",
	"11、安装nfs/ceph[*]",
	"12、安装ingress",
	"",
	"参考文档:",
	""
]
# 知识节点对应的数据 - Kubernetes|Value
var ArrayKnowledgeKubernetesResourcesTitleText = [
	"网络:能够访问公网\n服务器：\n        master服务器:1\n        node服务器:2\n        harbor服务器:1\n        数据库服务器:1[可以合并至harbor服务器]\nPc机：\n		Xshell远程工具+Xftp传输工具\nPs:\n        *:所有节点执行\n        m:master节点执行\n        n:node节点执行\n        h:harbor节点执行\n--------------------------------------------------\n  前往下载模块下载k8s集群相关资源文件上传至集群节点服务器\n--------------------------------------------------",
	"1、打开虚拟机,进入命令行模式,查看当前设备ip、内核版本并新建txt文本记录信息[*]\n        [root@master ~]#ifconfig\n        [root@master ~]#uname -ra\n2、配置每台设备的静态ip,并验证[*]\n        [root@master ~]#vi /etc/sysconfig/network-scripts/ifcfg-ens33\n        [root@master ~]#dhcp 修改成 static\n                        IPADDR=192.168.2.5#修改至合适的ip地址[5/6/7/8分别对应4个服务器IP]\n                        NETMASK=255.255.255.0\n                        DNS1=\"8.8.8.8\"\nDNS2=\"114.114.114.114\"\n                        GATEWAY=192.168.2.1\n    3、通过Xshell远程工具连接每台设备[*]\n        如果连接不上,可以尝试关闭防火墙\n        [root@master ~]systemctl stop firewalld.service\n        [root@master ~]service network restart        [root@master ~]systemctl disable firewalld.service\n    4、升级内核至5*+版本后验证[m/n]\n        查阅文档自行升级 / 跳转Centos7.*升级内核模块\n        参考资料https://blog.csdn.net/weixin_49001740/article/details/131843106\n        [root@master ~]#uname -ar\n",
	"---------------------------------- 分界线 ---------------------------------",
	"[root@master ~]cat >> /etc/hosts <<EOF\n192.168.2.6 k8smaster\n192.168.2.7 k8snode1\n192.168.2.8 k8snode2\n192.168.2.10 harbor\nEOF",
	"#配置主机名\n[root@master ~]hostnamectl set-hostname k8smaster\n[root@node1 ~]hostnamectl set-hostname k8snode1\n[root@node2 ~]hostnamectl set-hostname k8snode2\n[root@harbor ~]hostnamectl set-hostname harbor\n#刷新\n[root@* ~]su -",
	"# 所有节点执行安装时间同步服务\n[root@harbor ~]yum install chrony -y\n# harbor节点配置时间同步作为中心\n[root@harbor ~]cat > /etc/chrony.conf << EOF \npool ntp.aliyun.com iburst\ndriftfile /var/lib/chrony/drift\nmakestep 1.0 3\nrtcsync\nallow 192.168.2.0/24\nlocal stratum 10\nkeyfile /etc/chrony.keys\nleapsectz right/UTC\nlogdir /var/log/chrony\nEOF\n# 其他节点配置时间同步\n[root@* ~]cat > /etc/chrony.conf << EOF\npool 192.168.2.10 iburst\ndriftfile /var/lib/chrony/drift\nmakestep 1.0 3\nrtcsync\nkeyfile /etc/chrony.keys\nleapsectz right/UTC\nlogdir /var/log/chrony\nEOF\n#验证\n[root@* ~]systemctl restart chronyd ; systemctl enable chronyd\n[root@* ~]chronyc sources -v\n",
	"[root@* ~]systemctl stop firewalld  && systemctl disable firewalld\n[root@* ~]setenforce 0 &&  sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config",
	"#关闭swap\n[root@* ~]swapoff -a\n#注释swap[sed -i /<匹配内容>/{s/查找/替换内容/g;s/查找/替换内容/g} <文件路径>]\n[root@* ~]cp -R /etc/fstab /etc/fstabBak\n[root@* ~]sed -i /swap/{s/^/#/g} /etc/fstab\n#验证swap行内容等于0\n[root@* ~]free -mh",
	"# 方法1:科学上网\n# 方法2:用阿里云的加速器{卵用没有,只能说聊胜于无}{配置方法自行跳转阿里云加速方式模块配置}\n# 方法3:离线安装\n6、安装docker[*]\n#配置yum源\n[root@* ~]yum install -y yum-utils device-mapper-persistent-data lvm2 git\n[root@* ~]yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo\n#安装docker-ce\n[root@* ~]yum install docker-ce -y\n#验证版本\n[root@* ~]yum list docker-ce --showduplicates\n#运行docker\n[root@* ~]systemctl enable docker ; systemctl start docker\n#配置docker\n[root@* ~]mkdir -p /etc/docker\n[root@* ~]tee /etc/docker/daemon.json <<-'EOF'\n{\n\"registry-mirrors\": [\"https://pilvpemn.mirror.aliyuncs.com\"],\n\"exec-opts\": [\"native.cgroupdriver=systemd\"],\n\"log-driver\": \"json-file\",\n\"log-opts\": {\n\"max-size\": \"100m\"\n},\n\"storage-driver\": \"overlay2\"\n}\nEOF\n[root@* ~]systemctl daemon-reload ; systemctl restart docker",
	"#安装docker-compose\n#上传docker-compose-linux-x86_64文件至/tmp\n[root@Harbor ~]rm -f /usr/local/bin/docker-compose\n[root@Harbor ~]mv docker-compose-linux-x86_64 docker-compose\n[root@Harbor ~]mv docker-compose /usr/local/bin/\n[root@Harbor ~]chmod +x /usr/local/bin/docker-compose\n[root@Harbor ~]docker-compose --version\n#生成密钥\n[root@Harbor ~]mkdir -p /harbor/certs/\n[root@Harbor ~]cd /harbor/certs/\n[root@Harbor ~]openssl genrsa -out ca.key 4096\n[root@Harbor ~]openssl req -x509 -new -nodes -sha512 -days 3650 -subj \"/C=CN/ST=Beijing/L=Beijing/O=example/OU=Personal/CN=192.168.2.10\" -key ca.key -out ca.crt\n# 解压并安装\n[root@Harbor ~]mv /tmp/harbor-offline-installer-v2.10.0.tgz /harbor\n[root@Harbor ~]mkdir -p /opt/harbor\n[root@Harbor ~]tar -zxvf /harbor/harbor-offline-installer-v2.10.0.tgz -C /opt/harbor/\n[root@Harbor ~]cd /opt/harbor\n# 修改habor配置文件\n[root@Harbor ~]cp -R harbor.yml.tmpl harbor.yml\n[root@Harbor ~]vim harbor.yml #修改ip、端口、密钥路径即可\n[root@Harbor ~]./install.sh\n#等待完成 - 访问\n[root@Harbor ~]docker ps | grep harbor\n#https://192.168.2.10:443 admin/Harbor12345\n[root@Harbor ~]find -name docker-compose.yml\n# 登录网页提示核心模块问题时,前往yml文件所在路径执行\n[root@Harbor ~]docker-compose up -d",
	"#配置k8s阿里云源\n[root@* ~]cat <<EOF > /etc/yum.repos.d/kubernetes.repo\n[kubernetes]\nname=Kubernetes\nbaseurl=https://mirrors.aliyun.com/kubernetes/yum/repos/kubernetes-el7-x86_64/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://mirrors.aliyun.com/kubernetes/yum/doc/yum-key.gpg https://mirrors.aliyun.com/kubernetes/yum/doc/rpm-package-key.gpg\nEOF\n#安装依赖包\n[root@* ~]yum install -y conntrack ntpdate ntp ipvsadm ipset jq iptables curl sysstat libseccomp wget vim net-tools git iproute lrzsz bash-completion tree bridge-utils unzip bind-utils gcc",
	"[root@* ~]cat <<EOF > /etc/modules-load.d/ipvs.conf\nip_vs\nip_vs_lc\nip_vs_wlc\nip_vs_rr\nip_vs_wrr\nip_vs_lblc\nip_vs_lblcr\nip_vs_dh\nip_vs_sh\nip_vs_nq\nip_vs_sed\nip_vs_ftp\nip_vs_sh\nnf_conntrack_ipv4\nip_tables\nip_set\nxt_set\nipt_set\nipt_rpfilter\nipt_REJECT\nipip\nEOF\n#配置转发参数\n[root@* ~]cat <<EOF >  /etc/sysctl.d/k8s.conf\nnet.bridge.bridge-nf-call-iptables=1\nnet.bridge.bridge-nf-call-ip6tables=1\nnet.ipv4.ip_forward=1\nnet.ipv4.tcp_tw_recycle=0\nvm.swappiness=0\nvm.overcommit_memory=1\nvm.panic_on_oom=0\nfs.inotify.max_user_instances=8192\nfs.inotify.max_user_watches=1048576\nfs.file-max=52706963\nfs.nr_open=52706963\nnet.ipv6.conf.all.disable_ipv6=1\nnet.netfilter.nf_conntrack_max=2310720\nEOF\n#配置生效\n[root@* ~]sysctl --system\n#如果提示报错 - 则执行下一步\n# modprobe br_netfilter\n# modprobe ip_conntrack\n# sysctl -p /etc/sysctl.d/k8s.conf\n#验证\n[root@* ~]sysctl -p ; modprobe ip_vs\n[root@* ~]lsmod | grep ip_vs\n[root@* ~]cat >/etc/sysconfig/kubelet<<EOF\nKUBELET_EXTRA_ARGS=\nEOF\n[root@* ~]systemctl daemon-reload",
	"#手动传输文件cri-dockerd-0.3.*至/tmp或者执行wget下载\n[root@* ~]cd /tmp\n[root@* ~]wget https://github.com/Mirantis/cri-dockerd/releases/download/v0.3.1/cri-dockerd-0.3.1-3.el7.x86_64.rpm\n[root@* ~]rpm -ivh cri-dockerd-0.3.1-3.el7.x86_64.rpm\n[root@* ~]mv /usr/lib/systemd/system/cri-docker.service{,.default}\n# 配置docker-cri参数\n[root@* ~]vim /usr/lib/systemd/system/cri-docker.service\n[Unit]\nDescription=CRI Interface for Docker Application Container Engine\nDocumentation=https://docs.mirantis.com\nAfter=network-online.target firewalld.service docker.service\nWants=network-online.target\nRequires=cri-docker.socket\n[Service]\nType=notify\nExecStart=/usr/bin/cri-dockerd --network-plugin=cni --pod-infra-container-image=registry.aliyuncs.com/google_containers/pause:3.7\nExecReload=/bin/kill -s HUP $MAINPID\nTimeoutSec=0\nRestartSec=2\nRestart=always\nStartLimitBurst=3\nStartLimitInterval=60s\nLimitNOFILE=infinity\nLimitNPROC=infinity\nLimitCORE=infinity\nTasksMax=infinity\nDelegate=yes\nKillMode=process\n[Install]\nWantedBy=multi-user.target\n# 刷新docker配置\n[root@* ~]systemctl daemon-reload\n[root@* ~]systemctl start cri-docker.service ; systemctl enable cri-docker.service\n",
	"# 安装组件\n[root@* ~]yum install -y kubelet-1.27.0 kubeadm-1.27.0 kubectl-1.27.0\n[root@* ~]systemctl enable kubelet.service --now\n# 修改其配置\n[root@* ~]vim /etc/containerd/config.toml\n#将这行用#注释或者将\"cri\"删除\n#disabled_plugins : [\"cri\"]\n#重启容器运行时\n[root@* ~]systemctl restart containerd\n# 查看kubeadm config需要的依赖镜像\n[root@* ~]kubeadm config images list --image-repository registry.aliyuncs.com/google_containers\n# 手动导入镜像\n[root@* ~]cd /root/k8sTAR/\n[root@* ~]sh imp.sh\n# Master节点初始化\n[root@* ~]kubeadm init --config=kubeadm.yaml --ignore-preflight-errors=SystemVerification\n# 报错重装:kubeadm reset --cri-socket unix:///var/run/cri-dockerd.sock\n[root@* ~]mkdir -p $HOME/.kube\n[root@* ~]cp -i /etc/kubernetes/admin.conf $HOME/.kube/config\n[root@* ~]chown $(id -u):$(id -g) $HOME/.kube/config\n# node节点加入集群\n# 如果报错开启ip转发:\n# sysctl -w net.ipv4.ip_forward=1\n# 在所有node节点操作，此命令为初始化master成功后返回的结果\n[root@* ~]kubeadm join 192.168.2.6:6443 --token ieo0ur.ndm0gxv7yiye8r9x --discovery-token-ca-cert-hash sha256:688e456a93fa8f4bd16761a69f39b07c6b7406d1326ade9d4d1ee996ece7b9cb --cri-socket=unix:///var/run/cri-dockerd.sock",
	"# 由于未安装calico，节点状态均为NotReady，接下来安装calico网络组件，安装后变成ready\n# 将calico.tar镜像文件导入每个节点\n[root@* ~]docker load < calicocni.tar\n[root@* ~]docker load < caliconode.tar\n# 部署calico[coredns会根据calico成功部署后修改Running状态]\n[root@* ~]kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml	#{apply修改为delete即可远程删除资源}\n#[root@* ~]kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml -dry-run -o yaml > calico.yaml\n# 修改其配置文件参数[选择镜像版本为导入的v3.25.0]{默认无需修改}\n#[root@* ~]- name: CALICO_IPV4POOL_CIDR\n#			value: \"192.168.2.0/16\"\n#		  - name: IP_AUTODETECTION_METHOD\n#		    value: \"interface=ens33\"\n#[root@* ~]kubectl apply -f calico.yaml\n",
	"#拉取镜像时连接失败 - 将报错提示的地址源dig\n#dig @114.114.114.114 registry-1.docker.io\n#将;; ANSWER SECTION:下方任意ip配置到/etc/hosts中即可\n#xxx.xxx.xxx.xxx registry-1.docker.io\n#从源地址下载文件存到内存中,然后执行部署\n[root@* ~]wget https://addons.kuboard.cn/kuboard/kuboard-v3.yaml\n[root@* ~]vim kuboard-v3.yaml\n#修改配置\n			KUBOARD_ENDPOINT: http://192.168.2.6:30080	#KUBOARD_ENDPOINT一般情况下对应master节点ip+30080\n[root@* ~]kubectl apply -f kuboard-v3.yaml\n# 账号密码:admin/Kuboard123\n# 安装kuboard-client执行相关命令即可",
	"# 安装metrics [需要区分版本,一般用5.0版本]\n# 导入镜像\n# docker pull eipwork/metrics-server:v0.5.0\n# 下载yaml文件\n[root@* ~]wget https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.5.0/components.yaml\n#修改components.yaml配置文件\n				image: 填写私有仓库地址[没有部署前可以手动在每个docker节点安装镜像]\n				// 新增参数\n				- --kubelet-insecure-tls\n# 生成pod\n[root@* ~]kubectl apply -f components.yaml\n# 验证\n[root@* ~]kubectl top node",
	"# 部署nfs\n[root@master ~]# yum install -y nfs-utils\n#以下都是在master节点操作\n[root@master ~]# echo \"/nfs/data/ *(insecure,rw,sync,no_root_squash)\" > /etc/exports\n[root@master ~]# mkdir -p /nfs/data\n#设置开机启动且立即启动\n[root@master ~]# systemctl enable rpcbind --now\n[root@master ~]# systemctl enable nfs-server --now\n#使配置生效\n[root@master ~]# exportfs -r\n#检查配置是否生效\n[root@master ~]# exportfs\n#拷贝default-storage.yaml\n[root@master ~]# kubectl apply -f default-storage.yaml\n#可能k8s.gcr.io/sig-storage/nfs-subdir-external-provisioner:v4.0.2下载不了，使用这个离线镜像\n#手动将镜像导入到每个节点后执行\n[root@node1/2 ~]# docker load -i nfs-subdir-external-provisioner-v4.0.2.tar\n[root@master ~]# mkdir -p /nfs/data/01 /nfs/data/02 /nfs/data/03\n[root@master ~]# ll /nfs/data/\n#拷贝pv.yaml\n[root@master ~]# kubectl create -f pv.yaml\n[root@master ~]# kubectl get pv\n#拷贝pvc.yaml\n[root@master ~]# kubectl apply -f pvc.yaml\n[root@master ~]# kubectl get pv,pvc\n#测试pod挂载\n[root@master ~]# kubectl apply -f nginx-pvc.yaml\n[root@master ~]# kubectl get pod -A -owide\n[root@master ~]# curl 192.168.2.6\n# 将字符串插入页面 “/nfs/data/02/” 从配置的pvc名称与kubectl get pv,pvc中对比可得\n[root@master ~]# echo ”HELLOWORLD“ >> /nfs/data/02/index.html\n#部署nfs服务后,pvc提交申领单可从pv中获得分发的挂载点[pvc从配置的Name在pod中配置即可挂载至pod中]{pvc规则就是杜绝浪费} / pv是集群中一块存储,可配置多个存储块进行分发",
	"12、安装Ingress",
	"---------------------------------- 分界线 ---------------------------------",
	"kuboard部署:\nhttps://blog.csdn.net/weixin_69654831/article/details/134958056\nkubeadm部署k8s:\nhttps://blog.csdn.net/dzcro/article/details/131555593\nK8S部署Harbor:\nhttps://blog.csdn.net/mo_sss/article/details/135961189\nTerminating状态:\nhttps://www.cnblogs.com/cheyunhua/p/17811075\nmetrics-server：\nhttps://blog.csdn.net/qq_45097352/article/details/121509213\nnfs部署:\nhttps://blog.csdn.net/qq_44150902/article/details/125537756\n",
	""
]

var ArrayKnowledgeKubernetesDownloadResourcesTitle = [
	"k8s部署资源文件",
	""
]
var ArrayKnowledgeKubernetesDownloadResourcesTitleText = [
	"https://pan.baidu.com/s/1b-RUAGDtNIfH2Bj-CJXWBw?pwd=jio7",
	""
]
#############
# Prometheus#
#############
# 知识节点对应的数据 - Prometheus|Key
var ArrayKnowledgePrometheusResourcesTitle = [
	"",
	""
]
# 知识节点对应的数据 - Prometheus|Value
var ArrayKnowledgePrometheusResourcesTitleText = [
	"",
	""
]
#############
#  RabbitMQ #
#############
# 知识节点对应的数据 - RabbitMQ|Key
var ArrayKnowledgeRabbitMQResourcesTitle = [
	"",
	""
]
# 知识节点对应的数据 - RabbitMQ|Value
var ArrayKnowledgeRabbitMQResourcesTitleText = [
	"",
	""
]
#############
#  RocketMQ #
#############
# 知识节点对应的数据 - RocketMQ|Key
var ArrayKnowledgeRocketMQResourcesTitle = [
	"",
	""
]
# 知识节点对应的数据 - RocketMQ|Value
var ArrayKnowledgeRocketMQResourcesTitleText = [
	"",
	""
]
#############
#  Kafka #
#############
# 知识节点对应的数据 - Kafka|Key
var ArrayKnowledgeKafkaResourcesTitle = [
	"1、下载部署文件",
	"2、部署zookeeper",
	"3、解压压缩包文件",
	"4、配置zookeeper/kafka参数:",
	"5、启动zookeeper:",
	"6、启动kafka:",
	"7、创建Topic:",
	"8、验证:",
	""
]
# 知识节点对应的数据 - Kafka|Value
var ArrayKnowledgeKafkaResourcesTitleText = [
	"请转至kafka下载详情页面",
	"请转至zookeeper模块部署详情页面",
	"kafka.tgz：tar -zxvf kafka.tgz -C /usr/local/",
	"[root@cephmaster rbd-demo]#:vim ../config/server.properties\n:\nbroker.id=0\nlisteners=PLAINTEXT://192.168.0.29:9092\nnum.network.threads=3\nnum.io.threads=8\nsocket.send.buffer.bytes=102400\nsocket.receive.buffer.bytes=102400\nsocket.request.max.bytes=104857600\nlog.dirs=/data/kafka/logs\nnum.partitions=3\nnum.recovery.threads.per.data.dir=1\noffsets.topic.replication.factor=1\ntransaction.state.log.replication.factor=1\ntransaction.state.log.min.isr=1\nlog.retention.hours=168\nlog.segment.bytes=1073741824\nlog.retention.check.interval.ms=300000\nzookeeper.connect=192.168.0.29:2181,192.168.0.195:2181,192.168.0.27:2181\nzookeeper.connection.timeout.ms=6000\ngroup.initial.rebalance.delay.ms=0\nauto.create.topics.enable=true\ndelete.topics.enable=true",
	"./zookeeper-server-start.sh ../config/zookeeper.properties 1>/dev/null 2>&1 &",
	"./kafka-server-start.sh ../config/server.properties 1>/dev/null 2>&1 &",
	"./kafka-topics.sh --create --zookeeper localhost:2181 --config max.message.bytes=12800000 --config flush.messages=1 --replication-factor 1 --partitions 1 --topic test",
	"./kafka-topics.sh --list --zookeeper localhost:2181",
	""
]

# 资源下载地址 - CentosKernel|Value
var ArrayKnowledgeCentosKernelResourcesTitle = [
	"1.查看当前系统版本",
	"2.升级系统版本",
	"3.重启系统",
	"4.查看现有内核版本",
	"5.导入elrepo仓库公钥及yum源",
	"6. 查看可用的内核",
	"7.安装内核{ml 稳定主线版本 lt 长期支持版本}",
	"8.查看系统上的所有可用内核",
	"9.设置默认引导项",
	"10.重启",
	"参考：",
	""
]
var ArrayKnowledgeCentosKernelResourcesTitleText = [
	"[root@* ~]# cat /etc/redhat-release",
	"[root@* ~]# yum update",
	"[root@* ~]# reboot",
	"[root@* ~]# uname -rs",
	"[root@* ~]# rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org\n#下载并导入ElRepo的公钥,导入成功可以使用yum来安装来自ElRepo的软件包\n#并验证其签名以确保软件包的安全性和完整性\n[root@* ~]# rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm\n# -U 升级软件包,-v 输出详细信息,-h 安装时显示进度条",
	"[root@* ~]# yum --disablerepo=\"*\" --enablerepo=\"elrepo-kernel\" list available",
	"[root@* ~]# yum --enablerepo=elrepo-kernel install kernel-lt-devel kernel-lt -y",
	"[root@* ~]# awk -F\' '$1==\"menuentry \" { print n++ \" \" $2}' /etc/grub2.cfg",
	"[root@* ~]# grub2-set-default 0\n#使用 grub2-set-default 0 命令可以将默认引导项设置为第一个(也是默认的)操作系统\n#可以更改命令中的数字参数,设置默认引导项为其他操作系统",
	"[root@* ~]# reboot",
	"https://blog.csdn.net/weixin_49001740/article/details/131843106",
	""
]



# 定义每个知识点部署文档的下载路径[保存文件到固定位置]
var ArrayAllKnowledgeDocumentDownloadUrlResources = []





# rocketmq
# https://rocketmq.apache.org/zh/download/
# https://rocketmq.apache.org/zh/


# rabbitmq
# https://www.rabbitmq.com/

#

##########
#  XXXXX #
##########
# 资源下载地址 - XXXXX
var ArrayKnowledgeXXXXXDownloadResourcesTitle = [
	"MYSQL官方下载地址",
	"MYSQL5.6.*下载地址[百度云盘]",
	"MYSQL5.7.*下载地址[百度云盘]"
]
var ArrayKnowledgeXXXXXDownloadResourcesTitleText = [
	"https://dev.mysql.com/downloads/mysql/",
	"https://pan.baidu.com/s/1pF_dKeqjuAjFn35ZOKi6Zg?pwd=yfiv",
	"https://pan.baidu.com/s/1pjgNkyLUONv1b8tSt89oAw?pwd=x3jb"
]
