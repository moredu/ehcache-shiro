= Ehcache 3 integration in Apache Shiro

This project will provide https://github.com/ehcache/ehcache3[Ehcache 3] support in https://github.com/apache/shiro[Apache Shiro]

Build status: image:https://ehcache.ci.cloudbees.com/buildStatus/icon?job=ehcache-shiro[Ehcache@Cloudbees, link="https://ehcache.ci.cloudbees.com/job/ehcache-shiro/"]

= Sample Configurations

To enable it in Shiro application use the following configuration:

```
[main]
 cacheManager = org.ehcache.integrations.shiro.EhcacheShiroManager
 securityManager.cacheManager = $cacheManager
```

To set custom Ehcache configuration file use the following configuration:

```
[main]
 cacheManager = org.ehcache.integrations.shiro.EhcacheShiroManager
 cacheManager.cacheManagerConfigFile = /path/to/custom/configuration.xml
 securityManager.cacheManager = $cacheManager
```
== Cache Configuration Considerations

By default the `CacheManager` uses default Shiro specific EhCache configuration.
If you wish to change the cache settings, or configure your own `ehcache.xml` or `org.ehcache.CacheManager` instance, you will need to configure the cache region to ensure that Sessions are handled correctly.
You have to ensure that you have defined cache named `shiro-activeSessionCache` for Shiro's needs.

Please have a look at the default configuration file before creating your own.

= Maven Dependency

```xml
<dependency>
  <groupId>org.ehcache.integrations.shiro</groupId>
  <artifactId>shiro-ehcache3</artifactId>
  <version>1.1.0</version>
  <scope>system</scope>
  <systemPath>${project.basedir}/lib/shiro-ehcache3-1.1.0.jar</systemPath>
</dependency>
```

= Shiro Support

This project works with Shiro `1.2.0` and above and requires Ehcache `3.1.3` and above.

= Resources

Official Shiro documentation for:

* http://shiro.apache.org/configuration.html[Configuration]
* http://shiro.apache.org/session-management.html[Session Management]
* http://shiro.apache.org/caching.html[Caching]

= Releases

== Latest release

The latest release is 1.1.0.

== Changelog
=== 1.1.0
* 升级maven-bundle-plugin版本到4.2.1
* 升级maven-toolchains-plugin版本到3.0.0
* 升级jdk要求版本最低到1.8
* 升级ehcache版本到3.8.1
* 升级shiro-core版本到1.4.2
* 升级slf4j版本到1.7.28
* 增加版本控制插件maven-release-plugin
* 增加发布到SCM插件maven-scm-publish-plugin

=== 1.0.0

* The first version was released on October 10th, 2016.