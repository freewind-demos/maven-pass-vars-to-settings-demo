Maven Pass Vars To settings.xml Demo
====================================

Maven的用户配置文件`~/.m2/settings.xml`中可以包含一些变量，当我们调用maven的时候，可以传入实际的值。

为了方便演示，我们在这里提供了一个`user-settings.xml`，里面有需要外界传入的变量。在我们调用maven的时候，可以指定使用它来代替`~/.m2/settings.xml`：

```xml
<?xml version="1.0" encoding="UTF-8"?>
<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd">

    <mirrors>
        <mirror>
            <id>central-mirror</id>
            <name>central-mirror</name>
            <url>${center-mirror-url}</url>
            <mirrorOf>central</mirrorOf>
        </mirror>
    </mirrors>
</settings>
```

可以看到，里面有一个`center-mirror-url`需要外界传入，否则肯定失败。

我们可以使用下面的命令来传入参数：

```
mvn --settings ./user-settings.xml \
    -Dcenter-mirror-url=http://maven.aliyun.com/nexus/content/repositories/jcenter \
    clean
```

run.sh
------

可以运行`./run.sh`来查看效果。