export CORE_CONF_fs_defaultFS=${CORE_CONF_fs_defaultFS:-hdfs://`hostname -f`:9000}
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=/usr/local/hadoop/bin:$PATH
export COMPOSE_HTTP_TIMEOUT=30000