// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import twitter4j.auth.AccessToken;
import twitter4j.auth.Authorization;
import twitter4j.auth.AuthorizationFactory;
import twitter4j.auth.OAuthAuthorization;
import twitter4j.conf.Configuration;
import twitter4j.conf.ConfigurationContext;

// Referenced classes of package twitter4j:
//            Twitter

public final class TwitterFactory
    implements Serializable
{

    static final Authorization DEFAULT_AUTHORIZATION;
    private static final Twitter SINGLETON;
    private static final Constructor TWITTER_CONSTRUCTOR;
    private static final long serialVersionUID = 0xf82c53f612ba129aL;
    private final Configuration conf;

    public TwitterFactory()
    {
        this(ConfigurationContext.getInstance());
    }

    public TwitterFactory(String s)
    {
        this(ConfigurationContext.getInstance(s));
    }

    public TwitterFactory(Configuration configuration)
    {
        if (configuration == null)
        {
            throw new NullPointerException("configuration cannot be null");
        } else
        {
            conf = configuration;
            return;
        }
    }

    public static Twitter getSingleton()
    {
        return SINGLETON;
    }

    public Twitter getInstance()
    {
        return getInstance(AuthorizationFactory.getInstance(conf));
    }

    public Twitter getInstance(AccessToken accesstoken)
    {
        String s = conf.getOAuthConsumerKey();
        String s1 = conf.getOAuthConsumerSecret();
        if (s == null && s1 == null)
        {
            throw new IllegalStateException("Consumer key and Consumer secret not supplied.");
        } else
        {
            OAuthAuthorization oauthauthorization = new OAuthAuthorization(conf);
            oauthauthorization.setOAuthAccessToken(accesstoken);
            return getInstance(((Authorization) (oauthauthorization)));
        }
    }

    public Twitter getInstance(Authorization authorization)
    {
        Twitter twitter;
        try
        {
            Constructor constructor = TWITTER_CONSTRUCTOR;
            Object aobj[] = new Object[2];
            aobj[0] = conf;
            aobj[1] = authorization;
            twitter = (Twitter)constructor.newInstance(aobj);
        }
        catch (InstantiationException instantiationexception)
        {
            throw new AssertionError(instantiationexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new AssertionError(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new AssertionError(invocationtargetexception);
        }
        return twitter;
    }

    static 
    {
        DEFAULT_AUTHORIZATION = AuthorizationFactory.getInstance(ConfigurationContext.getInstance());
        Class.forName("com.google.appengine.api.urlfetch.URLFetchService");
        boolean flag = true;
_L4:
        String s;
        s = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        Class.forName("twitter4j.AppEngineTwitterImpl");
        s = "twitter4j.AppEngineTwitterImpl";
_L2:
        if (s == null)
        {
            s = "twitter4j.TwitterImpl";
        }
        Constructor constructor;
        try
        {
            constructor = Class.forName(s).getDeclaredConstructor(new Class[] {
                twitter4j/conf/Configuration, twitter4j/auth/Authorization
            });
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            throw new AssertionError(nosuchmethodexception);
        }
        catch (ClassNotFoundException classnotfoundexception1)
        {
            throw new AssertionError(classnotfoundexception1);
        }
        TWITTER_CONSTRUCTOR = constructor;
        try
        {
            Constructor constructor1 = TWITTER_CONSTRUCTOR;
            Object aobj[] = new Object[2];
            aobj[0] = ConfigurationContext.getInstance();
            aobj[1] = DEFAULT_AUTHORIZATION;
            SINGLETON = (Twitter)constructor1.newInstance(aobj);
            return;
        }
        catch (InstantiationException instantiationexception)
        {
            throw new AssertionError(instantiationexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new AssertionError(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new AssertionError(invocationtargetexception);
        }
        ClassNotFoundException classnotfoundexception2;
        classnotfoundexception2;
        s = null;
        if (true) goto _L2; else goto _L1
_L1:
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
    }
}
