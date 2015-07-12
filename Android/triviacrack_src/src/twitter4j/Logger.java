// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import twitter4j.conf.Configuration;
import twitter4j.conf.ConfigurationContext;

// Referenced classes of package twitter4j:
//            StdOutLoggerFactory, LoggerFactory

public abstract class Logger
{

    private static final LoggerFactory LOGGER_FACTORY;
    private static final String LOGGER_FACTORY_IMPLEMENTATION = "twitter4j.loggerFactory";

    public Logger()
    {
    }

    public static Logger getLogger(Class class1)
    {
        return LOGGER_FACTORY.getLogger(class1);
    }

    private static LoggerFactory getLoggerFactoryIfAvailable(String s, String s1)
    {
        LoggerFactory loggerfactory;
        Class.forName(s);
        loggerfactory = (LoggerFactory)Class.forName(s1).newInstance();
        return loggerfactory;
        InstantiationException instantiationexception;
        instantiationexception;
        throw new AssertionError(instantiationexception);
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        throw new AssertionError(illegalaccessexception);
        SecurityException securityexception;
        securityexception;
_L2:
        return null;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public abstract void debug(String s);

    public abstract void debug(String s, String s1);

    public abstract void error(String s);

    public abstract void error(String s, Throwable throwable);

    public abstract void info(String s);

    public abstract void info(String s, String s1);

    public abstract boolean isDebugEnabled();

    public abstract boolean isErrorEnabled();

    public abstract boolean isInfoEnabled();

    public abstract boolean isWarnEnabled();

    public abstract void warn(String s);

    public abstract void warn(String s, String s1);

    static 
    {
        String s = System.getProperty("twitter4j.loggerFactory");
        Object obj = null;
        if (s != null)
        {
            obj = getLoggerFactoryIfAvailable(s, s);
        }
        Configuration configuration = ConfigurationContext.getInstance();
        String s1 = configuration.getLoggerFactory();
        if (s1 != null)
        {
            obj = getLoggerFactoryIfAvailable(s1, s1);
        }
        if (obj == null)
        {
            obj = getLoggerFactoryIfAvailable("org.slf4j.impl.StaticLoggerBinder", "twitter4j.SLF4JLoggerFactory");
        }
        if (obj == null)
        {
            obj = getLoggerFactoryIfAvailable("org.apache.commons.logging.Log", "twitter4j.CommonsLoggingLoggerFactory");
        }
        if (obj == null)
        {
            obj = getLoggerFactoryIfAvailable("org.apache.log4j.Logger", "twitter4j.Log4JLoggerFactory");
        }
        if (obj == null)
        {
            obj = getLoggerFactoryIfAvailable("com.google.appengine.api.urlfetch.URLFetchService", "twitter4j.JULLoggerFactory");
        }
        if (obj == null)
        {
            obj = new StdOutLoggerFactory();
        }
        LOGGER_FACTORY = ((LoggerFactory) (obj));
        try
        {
            Method method = configuration.getClass().getMethod("dumpConfiguration", new Class[0]);
            method.setAccessible(true);
            method.invoke(configuration, new Object[0]);
        }
        catch (IllegalAccessException illegalaccessexception) { }
        catch (InvocationTargetException invocationtargetexception) { }
        catch (NoSuchMethodException nosuchmethodexception) { }
    }
}
