// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import twitter4j.conf.Configuration;
import twitter4j.conf.ConfigurationContext;

// Referenced classes of package twitter4j:
//            HttpClientConfiguration, HttpClient

public final class HttpClientFactory
{

    private static final Constructor HTTP_CLIENT_CONSTRUCTOR;
    private static final String HTTP_CLIENT_IMPLEMENTATION = "twitter4j.http.httpClient";
    private static final HashMap confClientMap;

    public HttpClientFactory()
    {
    }

    public static HttpClient getInstance()
    {
        return getInstance(ConfigurationContext.getInstance().getHttpClientConfiguration());
    }

    public static HttpClient getInstance(HttpClientConfiguration httpclientconfiguration)
    {
        HttpClient httpclient = (HttpClient)confClientMap.get(httpclientconfiguration);
        if (httpclient == null)
        {
            try
            {
                httpclient = (HttpClient)HTTP_CLIENT_CONSTRUCTOR.newInstance(new Object[] {
                    httpclientconfiguration
                });
                confClientMap.put(httpclientconfiguration, httpclient);
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
        }
        return httpclient;
    }

    static 
    {
        String s;
        Class class1;
        s = System.getProperty("twitter4j.http.httpClient");
        class1 = null;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        Class class4 = Class.forName(s);
        class1 = class4;
_L1:
        if (class1 != null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        Class class3 = Class.forName("twitter4j.AlternativeHttpClientImpl");
        class1 = class3;
_L2:
        if (class1 == null)
        {
            Class class2;
            try
            {
                class2 = Class.forName("twitter4j.HttpClientImpl");
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                throw new AssertionError(classnotfoundexception);
            }
            class1 = class2;
        }
        try
        {
            HTTP_CLIENT_CONSTRUCTOR = class1.getConstructor(new Class[] {
                twitter4j/HttpClientConfiguration
            });
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            throw new AssertionError(nosuchmethodexception);
        }
        confClientMap = new HashMap();
        return;
        ClassNotFoundException classnotfoundexception2;
        classnotfoundexception2;
        class1 = null;
          goto _L1
        ClassNotFoundException classnotfoundexception1;
        classnotfoundexception1;
          goto _L2
    }
}
