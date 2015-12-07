print('Now connecting to Spark for you.') 
 
spark_link <- system('cat /root/spark-ec2/cluster-url', intern=TRUE)

.libPaths(c(.libPaths(), '/mnt/yggdrasil/R/lib'))
Sys.setenv(SPARK_HOME = '/mnt/yggdrasil')
Sys.setenv(PATH = paste(Sys.getenv(c('PATH')), '/mnt/yggdrasil/bin', sep=':'))
library(SparkR) 

sc <- sparkR.init(spark_link) 
sqlContext <- sparkRSQL.init(sc) 

print('Spark Context available as \"sc\". \\n')
print('Spark SQL Context available as \"sqlContext\". \\n')