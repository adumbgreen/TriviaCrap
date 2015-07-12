// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j.conf;

import java.io.Serializable;
import twitter4j.HttpClientConfiguration;

// Referenced classes of package twitter4j.conf:
//            ConfigurationBase

class gzipEnabled
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
            gzipEnabled gzipenabled = (gzipEnabled)obj;
            if (gzipEnabled != gzipenabled.gzipEnabled)
            {
                return false;
            }
            if (httpConnectionTimeout != gzipenabled.httpConnectionTimeout)
            {
                return false;
            }
            if (httpProxyPort != gzipenabled.httpProxyPort)
            {
                return false;
            }
            if (httpReadTimeout != gzipenabled.httpReadTimeout)
            {
                return false;
            }
            if (prettyDebug != gzipenabled.prettyDebug)
            {
                return false;
            }
            if (httpProxyHost == null ? gzipenabled.httpProxyHost != null : !httpProxyHost.equals(gzipenabled.httpProxyHost))
            {
                return false;
            }
            if (httpProxyPassword == null ? gzipenabled.httpProxyPassword != null : !httpProxyPassword.equals(gzipenabled.httpProxyPassword))
            {
                return false;
            }
            if (httpProxyUser == null ? gzipenabled.httpProxyUser != null : !httpProxyUser.equals(gzipenabled.httpProxyUser))
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
        return ConfigurationBase.access$000(ConfigurationBase.this);
    }

    public int getHttpRetryIntervalSeconds()
    {
        return ConfigurationBase.access$100(ConfigurationBase.this);
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

    (String s, String s1, String s2, int i, int j, int k, 
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
