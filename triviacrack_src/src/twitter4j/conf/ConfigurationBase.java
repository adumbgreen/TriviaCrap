// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j.conf;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import twitter4j.HttpClientConfiguration;
import twitter4j.Logger;

// Referenced classes of package twitter4j.conf:
//            Configuration

class ConfigurationBase
    implements Serializable, Configuration
{

    private static final List instances = new ArrayList();
    private static final long serialVersionUID = 0x55b3f2b9f8085720L;
    private boolean applicationOnlyAuthEnabled;
    private int asyncNumThreads;
    private long contributingTo;
    private boolean daemonEnabled;
    private boolean debug;
    private String dispatcherImpl;
    private HttpClientConfiguration httpConf;
    private int httpRetryCount;
    private int httpRetryIntervalSeconds;
    private int httpStreamingReadTimeout;
    private boolean includeEntitiesEnabled;
    private boolean includeMyRetweetEnabled;
    private boolean jsonStoreEnabled;
    private String loggerFactory;
    private boolean mbeanEnabled;
    private String mediaProvider;
    private String mediaProviderAPIKey;
    private Properties mediaProviderParameters;
    private String oAuth2AccessToken;
    private String oAuth2InvalidateTokenURL;
    private String oAuth2TokenType;
    private String oAuth2TokenURL;
    private String oAuthAccessToken;
    private String oAuthAccessTokenSecret;
    private String oAuthAccessTokenURL;
    private String oAuthAuthenticationURL;
    private String oAuthAuthorizationURL;
    private String oAuthConsumerKey;
    private String oAuthConsumerSecret;
    private String oAuthRequestTokenURL;
    private String password;
    private String restBaseURL;
    private String siteStreamBaseURL;
    private boolean stallWarningsEnabled;
    private String streamBaseURL;
    private boolean trimUserEnabled;
    private String user;
    private String userStreamBaseURL;
    private boolean userStreamRepliesAllEnabled;
    private boolean userStreamWithFollowingsEnabled;

    protected ConfigurationBase()
    {
        debug = false;
        user = null;
        password = null;
        httpStreamingReadTimeout = 40000;
        httpRetryCount = 0;
        httpRetryIntervalSeconds = 5;
        oAuthConsumerKey = null;
        oAuthConsumerSecret = null;
        oAuthAccessToken = null;
        oAuthAccessTokenSecret = null;
        oAuthRequestTokenURL = "https://api.twitter.com/oauth/request_token";
        oAuthAuthorizationURL = "https://api.twitter.com/oauth/authorize";
        oAuthAccessTokenURL = "https://api.twitter.com/oauth/access_token";
        oAuthAuthenticationURL = "https://api.twitter.com/oauth/authenticate";
        oAuth2TokenURL = "https://api.twitter.com/oauth2/token";
        oAuth2InvalidateTokenURL = "https://api.twitter.com/oauth2/invalidate_token";
        restBaseURL = "https://api.twitter.com/1.1/";
        streamBaseURL = "https://stream.twitter.com/1.1/";
        userStreamBaseURL = "https://userstream.twitter.com/1.1/";
        siteStreamBaseURL = "https://sitestream.twitter.com/1.1/";
        dispatcherImpl = "twitter4j.DispatcherImpl";
        asyncNumThreads = 1;
        loggerFactory = null;
        contributingTo = -1L;
        includeMyRetweetEnabled = true;
        includeEntitiesEnabled = true;
        trimUserEnabled = false;
        jsonStoreEnabled = false;
        mbeanEnabled = false;
        userStreamRepliesAllEnabled = false;
        userStreamWithFollowingsEnabled = true;
        stallWarningsEnabled = true;
        applicationOnlyAuthEnabled = false;
        mediaProvider = "TWITTER";
        mediaProviderAPIKey = null;
        mediaProviderParameters = null;
        daemonEnabled = true;
        httpConf = new MyHttpClientConfiguration(null, null, null, -1, 20000, 0x1d4c0, false, true);
    }

    private static void cacheInstance(ConfigurationBase configurationbase)
    {
        if (!instances.contains(configurationbase))
        {
            instances.add(configurationbase);
        }
    }

    static String fixURL(boolean flag, String s)
    {
        if (s == null)
        {
            return null;
        }
        int i = s.indexOf("://");
        if (-1 == i)
        {
            throw new IllegalArgumentException("url should contain '://'");
        }
        String s1 = s.substring(i + 3);
        if (flag)
        {
            return (new StringBuilder()).append("https://").append(s1).toString();
        } else
        {
            return (new StringBuilder()).append("http://").append(s1).toString();
        }
    }

    private static ConfigurationBase getInstance(ConfigurationBase configurationbase)
    {
        int i = instances.indexOf(configurationbase);
        if (i == -1)
        {
            instances.add(configurationbase);
            return configurationbase;
        } else
        {
            return (ConfigurationBase)instances.get(i);
        }
    }

    protected void cacheInstance()
    {
        cacheInstance(this);
    }

    public void dumpConfiguration()
    {
        Logger logger = Logger.getLogger(twitter4j/conf/ConfigurationBase);
        if (!debug) goto _L2; else goto _L1
_L1:
        Field afield[];
        int i;
        int j;
        afield = twitter4j/conf/ConfigurationBase.getDeclaredFields();
        i = afield.length;
        j = 0;
_L3:
        Field field;
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        field = afield[j];
        Object obj;
        String s;
        obj = field.get(this);
        s = String.valueOf(obj);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        if (field.getName().matches("oAuthConsumerSecret|oAuthAccessTokenSecret|password"))
        {
            s = String.valueOf(obj).replaceAll(".", "*");
        }
        logger.debug((new StringBuilder()).append(field.getName()).append(": ").append(s).toString());
_L4:
        j++;
        if (true) goto _L3; else goto _L2
_L2:
        return;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
          goto _L4
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            ConfigurationBase configurationbase = (ConfigurationBase)obj;
            if (applicationOnlyAuthEnabled != configurationbase.applicationOnlyAuthEnabled)
            {
                return false;
            }
            if (asyncNumThreads != configurationbase.asyncNumThreads)
            {
                return false;
            }
            if (contributingTo != configurationbase.contributingTo)
            {
                return false;
            }
            if (daemonEnabled != configurationbase.daemonEnabled)
            {
                return false;
            }
            if (debug != configurationbase.debug)
            {
                return false;
            }
            if (httpRetryCount != configurationbase.httpRetryCount)
            {
                return false;
            }
            if (httpRetryIntervalSeconds != configurationbase.httpRetryIntervalSeconds)
            {
                return false;
            }
            if (httpStreamingReadTimeout != configurationbase.httpStreamingReadTimeout)
            {
                return false;
            }
            if (includeEntitiesEnabled != configurationbase.includeEntitiesEnabled)
            {
                return false;
            }
            if (includeMyRetweetEnabled != configurationbase.includeMyRetweetEnabled)
            {
                return false;
            }
            if (jsonStoreEnabled != configurationbase.jsonStoreEnabled)
            {
                return false;
            }
            if (mbeanEnabled != configurationbase.mbeanEnabled)
            {
                return false;
            }
            if (stallWarningsEnabled != configurationbase.stallWarningsEnabled)
            {
                return false;
            }
            if (trimUserEnabled != configurationbase.trimUserEnabled)
            {
                return false;
            }
            if (userStreamRepliesAllEnabled != configurationbase.userStreamRepliesAllEnabled)
            {
                return false;
            }
            if (userStreamWithFollowingsEnabled != configurationbase.userStreamWithFollowingsEnabled)
            {
                return false;
            }
            if (dispatcherImpl == null ? configurationbase.dispatcherImpl != null : !dispatcherImpl.equals(configurationbase.dispatcherImpl))
            {
                return false;
            }
            if (httpConf == null ? configurationbase.httpConf != null : !httpConf.equals(configurationbase.httpConf))
            {
                return false;
            }
            if (loggerFactory == null ? configurationbase.loggerFactory != null : !loggerFactory.equals(configurationbase.loggerFactory))
            {
                return false;
            }
            if (mediaProvider == null ? configurationbase.mediaProvider != null : !mediaProvider.equals(configurationbase.mediaProvider))
            {
                return false;
            }
            if (mediaProviderAPIKey == null ? configurationbase.mediaProviderAPIKey != null : !mediaProviderAPIKey.equals(configurationbase.mediaProviderAPIKey))
            {
                return false;
            }
            if (mediaProviderParameters == null ? configurationbase.mediaProviderParameters != null : !mediaProviderParameters.equals(configurationbase.mediaProviderParameters))
            {
                return false;
            }
            if (oAuth2AccessToken == null ? configurationbase.oAuth2AccessToken != null : !oAuth2AccessToken.equals(configurationbase.oAuth2AccessToken))
            {
                return false;
            }
            if (oAuth2InvalidateTokenURL == null ? configurationbase.oAuth2InvalidateTokenURL != null : !oAuth2InvalidateTokenURL.equals(configurationbase.oAuth2InvalidateTokenURL))
            {
                return false;
            }
            if (oAuth2TokenType == null ? configurationbase.oAuth2TokenType != null : !oAuth2TokenType.equals(configurationbase.oAuth2TokenType))
            {
                return false;
            }
            if (oAuth2TokenURL == null ? configurationbase.oAuth2TokenURL != null : !oAuth2TokenURL.equals(configurationbase.oAuth2TokenURL))
            {
                return false;
            }
            if (oAuthAccessToken == null ? configurationbase.oAuthAccessToken != null : !oAuthAccessToken.equals(configurationbase.oAuthAccessToken))
            {
                return false;
            }
            if (oAuthAccessTokenSecret == null ? configurationbase.oAuthAccessTokenSecret != null : !oAuthAccessTokenSecret.equals(configurationbase.oAuthAccessTokenSecret))
            {
                return false;
            }
            if (oAuthAccessTokenURL == null ? configurationbase.oAuthAccessTokenURL != null : !oAuthAccessTokenURL.equals(configurationbase.oAuthAccessTokenURL))
            {
                return false;
            }
            if (oAuthAuthenticationURL == null ? configurationbase.oAuthAuthenticationURL != null : !oAuthAuthenticationURL.equals(configurationbase.oAuthAuthenticationURL))
            {
                return false;
            }
            if (oAuthAuthorizationURL == null ? configurationbase.oAuthAuthorizationURL != null : !oAuthAuthorizationURL.equals(configurationbase.oAuthAuthorizationURL))
            {
                return false;
            }
            if (oAuthConsumerKey == null ? configurationbase.oAuthConsumerKey != null : !oAuthConsumerKey.equals(configurationbase.oAuthConsumerKey))
            {
                return false;
            }
            if (oAuthConsumerSecret == null ? configurationbase.oAuthConsumerSecret != null : !oAuthConsumerSecret.equals(configurationbase.oAuthConsumerSecret))
            {
                return false;
            }
            if (oAuthRequestTokenURL == null ? configurationbase.oAuthRequestTokenURL != null : !oAuthRequestTokenURL.equals(configurationbase.oAuthRequestTokenURL))
            {
                return false;
            }
            if (password == null ? configurationbase.password != null : !password.equals(configurationbase.password))
            {
                return false;
            }
            if (restBaseURL == null ? configurationbase.restBaseURL != null : !restBaseURL.equals(configurationbase.restBaseURL))
            {
                return false;
            }
            if (siteStreamBaseURL == null ? configurationbase.siteStreamBaseURL != null : !siteStreamBaseURL.equals(configurationbase.siteStreamBaseURL))
            {
                return false;
            }
            if (streamBaseURL == null ? configurationbase.streamBaseURL != null : !streamBaseURL.equals(configurationbase.streamBaseURL))
            {
                return false;
            }
            if (user == null ? configurationbase.user != null : !user.equals(configurationbase.user))
            {
                return false;
            }
            if (userStreamBaseURL == null ? configurationbase.userStreamBaseURL != null : !userStreamBaseURL.equals(configurationbase.userStreamBaseURL))
            {
                return false;
            }
        }
        return true;
    }

    public final int getAsyncNumThreads()
    {
        return asyncNumThreads;
    }

    public final long getContributingTo()
    {
        return contributingTo;
    }

    public String getDispatcherImpl()
    {
        return dispatcherImpl;
    }

    public HttpClientConfiguration getHttpClientConfiguration()
    {
        return httpConf;
    }

    public int getHttpStreamingReadTimeout()
    {
        return httpStreamingReadTimeout;
    }

    public String getLoggerFactory()
    {
        return loggerFactory;
    }

    public String getMediaProvider()
    {
        return mediaProvider;
    }

    public String getMediaProviderAPIKey()
    {
        return mediaProviderAPIKey;
    }

    public Properties getMediaProviderParameters()
    {
        return mediaProviderParameters;
    }

    public String getOAuth2AccessToken()
    {
        return oAuth2AccessToken;
    }

    public String getOAuth2InvalidateTokenURL()
    {
        return oAuth2InvalidateTokenURL;
    }

    public String getOAuth2TokenType()
    {
        return oAuth2TokenType;
    }

    public String getOAuth2TokenURL()
    {
        return oAuth2TokenURL;
    }

    public String getOAuthAccessToken()
    {
        return oAuthAccessToken;
    }

    public String getOAuthAccessTokenSecret()
    {
        return oAuthAccessTokenSecret;
    }

    public String getOAuthAccessTokenURL()
    {
        return oAuthAccessTokenURL;
    }

    public String getOAuthAuthenticationURL()
    {
        return oAuthAuthenticationURL;
    }

    public String getOAuthAuthorizationURL()
    {
        return oAuthAuthorizationURL;
    }

    public final String getOAuthConsumerKey()
    {
        return oAuthConsumerKey;
    }

    public final String getOAuthConsumerSecret()
    {
        return oAuthConsumerSecret;
    }

    public String getOAuthRequestTokenURL()
    {
        return oAuthRequestTokenURL;
    }

    public final String getPassword()
    {
        return password;
    }

    public String getRestBaseURL()
    {
        return restBaseURL;
    }

    public String getSiteStreamBaseURL()
    {
        return siteStreamBaseURL;
    }

    public String getStreamBaseURL()
    {
        return streamBaseURL;
    }

    public final String getUser()
    {
        return user;
    }

    public String getUserStreamBaseURL()
    {
        return userStreamBaseURL;
    }

    public int hashCode()
    {
        int i = 1;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        int j3;
        int k3;
        int l3;
        int i4;
        int j4;
        int k4;
        int l4;
        int i5;
        int j5;
        int k5;
        int l5;
        int i6;
        int j6;
        int k6;
        int l6;
        int i7;
        int j7;
        int k7;
        int l7;
        int i8;
        int j8;
        int k8;
        int l8;
        int i9;
        int j9;
        int k9;
        int l9;
        int i10;
        int j10;
        int k10;
        int l10;
        int i11;
        int j11;
        int k11;
        int l11;
        int i12;
        int j12;
        int k12;
        int l12;
        int i13;
        int j13;
        int k13;
        int l13;
        int i14;
        int j14;
        int k14;
        int l14;
        int i15;
        int j15;
        int k15;
        int l15;
        int i16;
        int j16;
        int k16;
        int l16;
        int i17;
        if (debug)
        {
            j = i;
        } else
        {
            j = 0;
        }
        k = j * 31;
        if (user != null)
        {
            l = user.hashCode();
        } else
        {
            l = 0;
        }
        i1 = 31 * (l + k);
        if (password != null)
        {
            j1 = password.hashCode();
        } else
        {
            j1 = 0;
        }
        k1 = 31 * (j1 + i1);
        if (httpConf != null)
        {
            l1 = httpConf.hashCode();
        } else
        {
            l1 = 0;
        }
        i2 = 31 * (31 * (31 * (31 * (l1 + k1) + httpStreamingReadTimeout) + httpRetryCount) + httpRetryIntervalSeconds);
        if (oAuthConsumerKey != null)
        {
            j2 = oAuthConsumerKey.hashCode();
        } else
        {
            j2 = 0;
        }
        k2 = 31 * (j2 + i2);
        if (oAuthConsumerSecret != null)
        {
            l2 = oAuthConsumerSecret.hashCode();
        } else
        {
            l2 = 0;
        }
        i3 = 31 * (l2 + k2);
        if (oAuthAccessToken != null)
        {
            j3 = oAuthAccessToken.hashCode();
        } else
        {
            j3 = 0;
        }
        k3 = 31 * (j3 + i3);
        if (oAuthAccessTokenSecret != null)
        {
            l3 = oAuthAccessTokenSecret.hashCode();
        } else
        {
            l3 = 0;
        }
        i4 = 31 * (l3 + k3);
        if (oAuth2TokenType != null)
        {
            j4 = oAuth2TokenType.hashCode();
        } else
        {
            j4 = 0;
        }
        k4 = 31 * (j4 + i4);
        if (oAuth2AccessToken != null)
        {
            l4 = oAuth2AccessToken.hashCode();
        } else
        {
            l4 = 0;
        }
        i5 = 31 * (l4 + k4);
        if (oAuthRequestTokenURL != null)
        {
            j5 = oAuthRequestTokenURL.hashCode();
        } else
        {
            j5 = 0;
        }
        k5 = 31 * (j5 + i5);
        if (oAuthAuthorizationURL != null)
        {
            l5 = oAuthAuthorizationURL.hashCode();
        } else
        {
            l5 = 0;
        }
        i6 = 31 * (l5 + k5);
        if (oAuthAccessTokenURL != null)
        {
            j6 = oAuthAccessTokenURL.hashCode();
        } else
        {
            j6 = 0;
        }
        k6 = 31 * (j6 + i6);
        if (oAuthAuthenticationURL != null)
        {
            l6 = oAuthAuthenticationURL.hashCode();
        } else
        {
            l6 = 0;
        }
        i7 = 31 * (l6 + k6);
        if (oAuth2TokenURL != null)
        {
            j7 = oAuth2TokenURL.hashCode();
        } else
        {
            j7 = 0;
        }
        k7 = 31 * (j7 + i7);
        if (oAuth2InvalidateTokenURL != null)
        {
            l7 = oAuth2InvalidateTokenURL.hashCode();
        } else
        {
            l7 = 0;
        }
        i8 = 31 * (l7 + k7);
        if (restBaseURL != null)
        {
            j8 = restBaseURL.hashCode();
        } else
        {
            j8 = 0;
        }
        k8 = 31 * (j8 + i8);
        if (streamBaseURL != null)
        {
            l8 = streamBaseURL.hashCode();
        } else
        {
            l8 = 0;
        }
        i9 = 31 * (l8 + k8);
        if (userStreamBaseURL != null)
        {
            j9 = userStreamBaseURL.hashCode();
        } else
        {
            j9 = 0;
        }
        k9 = 31 * (j9 + i9);
        if (siteStreamBaseURL != null)
        {
            l9 = siteStreamBaseURL.hashCode();
        } else
        {
            l9 = 0;
        }
        i10 = 31 * (l9 + k9);
        if (dispatcherImpl != null)
        {
            j10 = dispatcherImpl.hashCode();
        } else
        {
            j10 = 0;
        }
        k10 = 31 * (31 * (j10 + i10) + asyncNumThreads);
        if (loggerFactory != null)
        {
            l10 = loggerFactory.hashCode();
        } else
        {
            l10 = 0;
        }
        i11 = 31 * (31 * (l10 + k10) + (int)(contributingTo ^ contributingTo >>> 32));
        if (includeMyRetweetEnabled)
        {
            j11 = i;
        } else
        {
            j11 = 0;
        }
        k11 = 31 * (j11 + i11);
        if (includeEntitiesEnabled)
        {
            l11 = i;
        } else
        {
            l11 = 0;
        }
        i12 = 31 * (l11 + k11);
        if (trimUserEnabled)
        {
            j12 = i;
        } else
        {
            j12 = 0;
        }
        k12 = 31 * (j12 + i12);
        if (jsonStoreEnabled)
        {
            l12 = i;
        } else
        {
            l12 = 0;
        }
        i13 = 31 * (l12 + k12);
        if (mbeanEnabled)
        {
            j13 = i;
        } else
        {
            j13 = 0;
        }
        k13 = 31 * (j13 + i13);
        if (userStreamRepliesAllEnabled)
        {
            l13 = i;
        } else
        {
            l13 = 0;
        }
        i14 = 31 * (l13 + k13);
        if (userStreamWithFollowingsEnabled)
        {
            j14 = i;
        } else
        {
            j14 = 0;
        }
        k14 = 31 * (j14 + i14);
        if (stallWarningsEnabled)
        {
            l14 = i;
        } else
        {
            l14 = 0;
        }
        i15 = 31 * (l14 + k14);
        if (applicationOnlyAuthEnabled)
        {
            j15 = i;
        } else
        {
            j15 = 0;
        }
        k15 = 31 * (j15 + i15);
        if (mediaProvider != null)
        {
            l15 = mediaProvider.hashCode();
        } else
        {
            l15 = 0;
        }
        i16 = 31 * (l15 + k15);
        if (mediaProviderAPIKey != null)
        {
            j16 = mediaProviderAPIKey.hashCode();
        } else
        {
            j16 = 0;
        }
        k16 = 31 * (j16 + i16);
        if (mediaProviderParameters != null)
        {
            l16 = mediaProviderParameters.hashCode();
        } else
        {
            l16 = 0;
        }
        i17 = 31 * (l16 + k16);
        if (!daemonEnabled)
        {
            i = 0;
        }
        return i17 + i;
    }

    public boolean isApplicationOnlyAuthEnabled()
    {
        return applicationOnlyAuthEnabled;
    }

    public boolean isDaemonEnabled()
    {
        return daemonEnabled;
    }

    public final boolean isDebugEnabled()
    {
        return debug;
    }

    public boolean isIncludeEntitiesEnabled()
    {
        return includeEntitiesEnabled;
    }

    public boolean isIncludeMyRetweetEnabled()
    {
        return includeMyRetweetEnabled;
    }

    public boolean isJSONStoreEnabled()
    {
        return jsonStoreEnabled;
    }

    public boolean isMBeanEnabled()
    {
        return mbeanEnabled;
    }

    public boolean isStallWarningsEnabled()
    {
        return stallWarningsEnabled;
    }

    public boolean isTrimUserEnabled()
    {
        return trimUserEnabled;
    }

    public boolean isUserStreamRepliesAllEnabled()
    {
        return userStreamRepliesAllEnabled;
    }

    public boolean isUserStreamWithFollowingsEnabled()
    {
        return userStreamWithFollowingsEnabled;
    }

    protected Object readResolve()
    {
        return getInstance(this);
    }

    protected final void setApplicationOnlyAuthEnabled(boolean flag)
    {
        applicationOnlyAuthEnabled = flag;
    }

    protected final void setAsyncNumThreads(int i)
    {
        asyncNumThreads = i;
    }

    protected final void setContributingTo(long l)
    {
        contributingTo = l;
    }

    protected void setDaemonEnabled(boolean flag)
    {
        daemonEnabled = flag;
    }

    protected final void setDebug(boolean flag)
    {
        debug = flag;
    }

    protected final void setDispatcherImpl(String s)
    {
        dispatcherImpl = s;
    }

    protected final void setGZIPEnabled(boolean flag)
    {
        httpConf = new MyHttpClientConfiguration(httpConf.getHttpProxyHost(), httpConf.getHttpProxyUser(), httpConf.getHttpProxyPassword(), httpConf.getHttpProxyPort(), httpConf.getHttpConnectionTimeout(), httpConf.getHttpReadTimeout(), httpConf.isPrettyDebugEnabled(), flag);
    }

    protected final void setHttpConnectionTimeout(int i)
    {
        httpConf = new MyHttpClientConfiguration(httpConf.getHttpProxyHost(), httpConf.getHttpProxyUser(), httpConf.getHttpProxyPassword(), httpConf.getHttpProxyPort(), i, httpConf.getHttpReadTimeout(), httpConf.isPrettyDebugEnabled(), httpConf.isGZIPEnabled());
    }

    protected final void setHttpProxyHost(String s)
    {
        httpConf = new MyHttpClientConfiguration(s, httpConf.getHttpProxyUser(), httpConf.getHttpProxyPassword(), httpConf.getHttpProxyPort(), httpConf.getHttpConnectionTimeout(), httpConf.getHttpReadTimeout(), httpConf.isPrettyDebugEnabled(), httpConf.isGZIPEnabled());
    }

    protected final void setHttpProxyPassword(String s)
    {
        httpConf = new MyHttpClientConfiguration(httpConf.getHttpProxyHost(), httpConf.getHttpProxyUser(), s, httpConf.getHttpProxyPort(), httpConf.getHttpConnectionTimeout(), httpConf.getHttpReadTimeout(), httpConf.isPrettyDebugEnabled(), httpConf.isGZIPEnabled());
    }

    protected final void setHttpProxyPort(int i)
    {
        httpConf = new MyHttpClientConfiguration(httpConf.getHttpProxyHost(), httpConf.getHttpProxyUser(), httpConf.getHttpProxyPassword(), i, httpConf.getHttpConnectionTimeout(), httpConf.getHttpReadTimeout(), httpConf.isPrettyDebugEnabled(), httpConf.isGZIPEnabled());
    }

    protected final void setHttpProxyUser(String s)
    {
        httpConf = new MyHttpClientConfiguration(httpConf.getHttpProxyHost(), s, httpConf.getHttpProxyPassword(), httpConf.getHttpProxyPort(), httpConf.getHttpConnectionTimeout(), httpConf.getHttpReadTimeout(), httpConf.isPrettyDebugEnabled(), httpConf.isGZIPEnabled());
    }

    protected final void setHttpReadTimeout(int i)
    {
        httpConf = new MyHttpClientConfiguration(httpConf.getHttpProxyHost(), httpConf.getHttpProxyUser(), httpConf.getHttpProxyPassword(), httpConf.getHttpProxyPort(), httpConf.getHttpConnectionTimeout(), i, httpConf.isPrettyDebugEnabled(), httpConf.isGZIPEnabled());
    }

    protected final void setHttpRetryCount(int i)
    {
        httpRetryCount = i;
    }

    protected final void setHttpRetryIntervalSeconds(int i)
    {
        httpRetryIntervalSeconds = i;
    }

    protected final void setHttpStreamingReadTimeout(int i)
    {
        httpStreamingReadTimeout = i;
    }

    protected void setIncludeEntitiesEnabled(boolean flag)
    {
        includeEntitiesEnabled = flag;
    }

    public void setIncludeMyRetweetEnabled(boolean flag)
    {
        includeMyRetweetEnabled = flag;
    }

    protected final void setJSONStoreEnabled(boolean flag)
    {
        jsonStoreEnabled = flag;
    }

    protected final void setLoggerFactory(String s)
    {
        loggerFactory = s;
    }

    protected final void setMBeanEnabled(boolean flag)
    {
        mbeanEnabled = flag;
    }

    protected final void setMediaProvider(String s)
    {
        mediaProvider = s;
    }

    protected final void setMediaProviderAPIKey(String s)
    {
        mediaProviderAPIKey = s;
    }

    protected final void setMediaProviderParameters(Properties properties)
    {
        mediaProviderParameters = properties;
    }

    protected final void setOAuth2AccessToken(String s)
    {
        oAuth2AccessToken = s;
    }

    protected final void setOAuth2InvalidateTokenURL(String s)
    {
        oAuth2InvalidateTokenURL = s;
    }

    protected final void setOAuth2TokenType(String s)
    {
        oAuth2TokenType = s;
    }

    protected final void setOAuth2TokenURL(String s)
    {
        oAuth2TokenURL = s;
    }

    protected final void setOAuthAccessToken(String s)
    {
        oAuthAccessToken = s;
    }

    protected final void setOAuthAccessTokenSecret(String s)
    {
        oAuthAccessTokenSecret = s;
    }

    protected final void setOAuthAccessTokenURL(String s)
    {
        oAuthAccessTokenURL = s;
    }

    protected final void setOAuthAuthenticationURL(String s)
    {
        oAuthAuthenticationURL = s;
    }

    protected final void setOAuthAuthorizationURL(String s)
    {
        oAuthAuthorizationURL = s;
    }

    protected final void setOAuthConsumerKey(String s)
    {
        oAuthConsumerKey = s;
    }

    protected final void setOAuthConsumerSecret(String s)
    {
        oAuthConsumerSecret = s;
    }

    protected final void setOAuthRequestTokenURL(String s)
    {
        oAuthRequestTokenURL = s;
    }

    protected final void setPassword(String s)
    {
        password = s;
    }

    protected final void setPrettyDebugEnabled(boolean flag)
    {
        httpConf = new MyHttpClientConfiguration(httpConf.getHttpProxyHost(), httpConf.getHttpProxyUser(), httpConf.getHttpProxyPassword(), httpConf.getHttpProxyPort(), httpConf.getHttpConnectionTimeout(), httpConf.getHttpReadTimeout(), flag, httpConf.isGZIPEnabled());
    }

    protected final void setRestBaseURL(String s)
    {
        restBaseURL = s;
    }

    protected final void setSiteStreamBaseURL(String s)
    {
        siteStreamBaseURL = s;
    }

    protected final void setStallWarningsEnabled(boolean flag)
    {
        stallWarningsEnabled = flag;
    }

    protected final void setStreamBaseURL(String s)
    {
        streamBaseURL = s;
    }

    public void setTrimUserEnabled(boolean flag)
    {
        trimUserEnabled = flag;
    }

    protected final void setUser(String s)
    {
        user = s;
    }

    protected final void setUserStreamBaseURL(String s)
    {
        userStreamBaseURL = s;
    }

    protected final void setUserStreamRepliesAllEnabled(boolean flag)
    {
        userStreamRepliesAllEnabled = flag;
    }

    protected final void setUserStreamWithFollowingsEnabled(boolean flag)
    {
        userStreamWithFollowingsEnabled = flag;
    }

    public String toString()
    {
        return (new StringBuilder()).append("ConfigurationBase{debug=").append(debug).append(", user='").append(user).append('\'').append(", password='").append(password).append('\'').append(", httpConf=").append(httpConf).append(", httpStreamingReadTimeout=").append(httpStreamingReadTimeout).append(", httpRetryCount=").append(httpRetryCount).append(", httpRetryIntervalSeconds=").append(httpRetryIntervalSeconds).append(", oAuthConsumerKey='").append(oAuthConsumerKey).append('\'').append(", oAuthConsumerSecret='").append(oAuthConsumerSecret).append('\'').append(", oAuthAccessToken='").append(oAuthAccessToken).append('\'').append(", oAuthAccessTokenSecret='").append(oAuthAccessTokenSecret).append('\'').append(", oAuth2TokenType='").append(oAuth2TokenType).append('\'').append(", oAuth2AccessToken='").append(oAuth2AccessToken).append('\'').append(", oAuthRequestTokenURL='").append(oAuthRequestTokenURL).append('\'').append(", oAuthAuthorizationURL='").append(oAuthAuthorizationURL).append('\'').append(", oAuthAccessTokenURL='").append(oAuthAccessTokenURL).append('\'').append(", oAuthAuthenticationURL='").append(oAuthAuthenticationURL).append('\'').append(", oAuth2TokenURL='").append(oAuth2TokenURL).append('\'').append(", oAuth2InvalidateTokenURL='").append(oAuth2InvalidateTokenURL).append('\'').append(", restBaseURL='").append(restBaseURL).append('\'').append(", streamBaseURL='").append(streamBaseURL).append('\'').append(", userStreamBaseURL='").append(userStreamBaseURL).append('\'').append(", siteStreamBaseURL='").append(siteStreamBaseURL).append('\'').append(", dispatcherImpl='").append(dispatcherImpl).append('\'').append(", asyncNumThreads=").append(asyncNumThreads).append(", loggerFactory='").append(loggerFactory).append('\'').append(", contributingTo=").append(contributingTo).append(", includeMyRetweetEnabled=").append(includeMyRetweetEnabled).append(", includeEntitiesEnabled=").append(includeEntitiesEnabled).append(", trimUserEnabled=").append(trimUserEnabled).append(", jsonStoreEnabled=").append(jsonStoreEnabled).append(", mbeanEnabled=").append(mbeanEnabled).append(", userStreamRepliesAllEnabled=").append(userStreamRepliesAllEnabled).append(", userStreamWithFollowingsEnabled=").append(userStreamWithFollowingsEnabled).append(", stallWarningsEnabled=").append(stallWarningsEnabled).append(", applicationOnlyAuthEnabled=").append(applicationOnlyAuthEnabled).append(", mediaProvider='").append(mediaProvider).append('\'').append(", mediaProviderAPIKey='").append(mediaProviderAPIKey).append('\'').append(", mediaProviderParameters=").append(mediaProviderParameters).append(", daemonEnabled=").append(daemonEnabled).append('}').toString();
    }




    private class MyHttpClientConfiguration
        implements Serializable, HttpClientConfiguration
    {

        private static final long serialVersionUID = 0x722bb3271b80bc82L;
        private boolean gzipEnabled;
        private int httpConnectionTimeout;
        private String httpProxyHost;
        private String httpProxyPassword;
        private int httpProxyPort;
        private String httpProxyUser;
        private int httpReadTimeout;
        private boolean prettyDebug;
        final ConfigurationBase this$0;

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null || getClass() != obj.getClass())
                {
                    return false;
                }
                MyHttpClientConfiguration myhttpclientconfiguration = (MyHttpClientConfiguration)obj;
                if (gzipEnabled != myhttpclientconfiguration.gzipEnabled)
                {
                    return false;
                }
                if (httpConnectionTimeout != myhttpclientconfiguration.httpConnectionTimeout)
                {
                    return false;
                }
                if (httpProxyPort != myhttpclientconfiguration.httpProxyPort)
                {
                    return false;
                }
                if (httpReadTimeout != myhttpclientconfiguration.httpReadTimeout)
                {
                    return false;
                }
                if (prettyDebug != myhttpclientconfiguration.prettyDebug)
                {
                    return false;
                }
                if (httpProxyHost == null ? myhttpclientconfiguration.httpProxyHost != null : !httpProxyHost.equals(myhttpclientconfiguration.httpProxyHost))
                {
                    return false;
                }
                if (httpProxyPassword == null ? myhttpclientconfiguration.httpProxyPassword != null : !httpProxyPassword.equals(myhttpclientconfiguration.httpProxyPassword))
                {
                    return false;
                }
                if (httpProxyUser == null ? myhttpclientconfiguration.httpProxyUser != null : !httpProxyUser.equals(myhttpclientconfiguration.httpProxyUser))
                {
                    return false;
                }
            }
            return true;
        }

        public int getHttpConnectionTimeout()
        {
            return httpConnectionTimeout;
        }

        public String getHttpProxyHost()
        {
            return httpProxyHost;
        }

        public String getHttpProxyPassword()
        {
            return httpProxyPassword;
        }

        public int getHttpProxyPort()
        {
            return httpProxyPort;
        }

        public String getHttpProxyUser()
        {
            return httpProxyUser;
        }

        public int getHttpReadTimeout()
        {
            return httpReadTimeout;
        }

        public int getHttpRetryCount()
        {
            return httpRetryCount;
        }

        public int getHttpRetryIntervalSeconds()
        {
            return httpRetryIntervalSeconds;
        }

        public int hashCode()
        {
            int i = 1;
            int j;
            int k;
            int l;
            int i1;
            int j1;
            int k1;
            int l1;
            int i2;
            if (httpProxyHost != null)
            {
                j = httpProxyHost.hashCode();
            } else
            {
                j = 0;
            }
            k = j * 31;
            if (httpProxyUser != null)
            {
                l = httpProxyUser.hashCode();
            } else
            {
                l = 0;
            }
            i1 = 31 * (l + k);
            if (httpProxyPassword != null)
            {
                j1 = httpProxyPassword.hashCode();
            } else
            {
                j1 = 0;
            }
            k1 = 31 * (31 * (31 * (31 * (j1 + i1) + httpProxyPort) + httpConnectionTimeout) + httpReadTimeout);
            if (prettyDebug)
            {
                l1 = i;
            } else
            {
                l1 = 0;
            }
            i2 = 31 * (l1 + k1);
            if (!gzipEnabled)
            {
                i = 0;
            }
            return i2 + i;
        }

        public boolean isGZIPEnabled()
        {
            return gzipEnabled;
        }

        public boolean isPrettyDebugEnabled()
        {
            return prettyDebug;
        }

        public String toString()
        {
            return (new StringBuilder()).append("MyHttpClientConfiguration{httpProxyHost='").append(httpProxyHost).append('\'').append(", httpProxyUser='").append(httpProxyUser).append('\'').append(", httpProxyPassword='").append(httpProxyPassword).append('\'').append(", httpProxyPort=").append(httpProxyPort).append(", httpConnectionTimeout=").append(httpConnectionTimeout).append(", httpReadTimeout=").append(httpReadTimeout).append(", prettyDebug=").append(prettyDebug).append(", gzipEnabled=").append(gzipEnabled).append('}').toString();
        }

        MyHttpClientConfiguration(String s, String s1, String s2, int i, int j, int k, 
                boolean flag, boolean flag1)
        {
            this$0 = ConfigurationBase.this;
            super();
            httpProxyHost = null;
            httpProxyUser = null;
            httpProxyPassword = null;
            httpProxyPort = -1;
            httpConnectionTimeout = 20000;
            httpReadTimeout = 0x1d4c0;
            prettyDebug = false;
            gzipEnabled = true;
            httpProxyHost = s;
            httpProxyUser = s1;
            httpProxyPassword = s2;
            httpProxyPort = i;
            httpConnectionTimeout = j;
            httpReadTimeout = k;
            prettyDebug = flag;
            gzipEnabled = flag1;
        }
    }

}
