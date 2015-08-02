package com.xuguruogu.lingxi.test;

import org.junit.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.helpers.MessageFormatter;
import org.springframework.core.io.Resource;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.util.StringUtils;

import com.xuguruogu.lingxi.constants.ProfilesConstants;
import com.xuguruogu.lingxi.filter.LoginFilter;

/**
 * Junit测试基类
 * 
 * @author benli.lbl
 * @version $Id: TestBase.java, v 0.1 Jul 28, 2015 8:04:27 PM benli.lbl Exp $
 */
@ContextConfiguration(locations = { "classpath:/beans.xml" })
@ActiveProfiles(ProfilesConstants.DEVELOPMENT)
public abstract class TestBase extends AbstractTransactionalJUnit4SpringContextTests {

    /** sql目录 */

    /** 日志 */
    private static Logger log = LoggerFactory.getLogger(LoginFilter.class);

    /**
     * 准备数据库内容
     */
    @Before
    public void before() {

        // 包名最后一个字符串,作为sql目录
        String defaultSqlParent = "sql/"
                                  + StringUtils.getFilenameExtension(getClass().getPackage()
                                      .getName()) + "/";

        String sqlResourcePath = defaultSqlParent + getClass().getSimpleName() + ".sql";

        Resource resource = this.applicationContext.getResource(sqlResourcePath);

        if (!resource.exists()) {
            log.error(MessageFormatter.format("没有找到sql文件:{}.", resource.getFilename()).getMessage());
            return;
        }

        try {
            this.executeSqlScript(sqlResourcePath, false);
        } catch (Exception e) {
            log.error("", e);
            throw e;
        }
    }
}
