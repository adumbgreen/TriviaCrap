// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;
import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            TwitterResponseImpl, OEmbed, HttpResponse, TwitterObjectFactory, 
//            JSONException, JSONObject, TwitterException, RateLimitStatus

public class OEmbedJSONImpl extends TwitterResponseImpl
    implements Serializable, OEmbed
{

    private static final long serialVersionUID = 0xe15c50404b03e685L;
    private String authorName;
    private String authorURL;
    private long cacheAge;
    private String html;
    private String url;
    private String version;
    private int width;

    OEmbedJSONImpl(HttpResponse httpresponse, Configuration configuration)
    {
        super(httpresponse);
        JSONObject jsonobject = httpresponse.asJSONObject();
        init(jsonobject);
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.clearThreadLocalMap();
            TwitterObjectFactory.registerJSONObject(this, jsonobject);
        }
    }

    OEmbedJSONImpl(JSONObject jsonobject)
    {
        init(jsonobject);
    }

    private void init(JSONObject jsonobject)
    {
        try
        {
            html = jsonobject.getString("html");
            authorName = jsonobject.getString("author_name");
            url = jsonobject.getString("url");
            version = jsonobject.getString("version");
            cacheAge = jsonobject.getLong("cache_age");
            authorURL = jsonobject.getString("author_url");
            width = jsonobject.getInt("width");
            return;
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            OEmbedJSONImpl oembedjsonimpl = (OEmbedJSONImpl)obj;
            if (cacheAge != oembedjsonimpl.cacheAge)
            {
                return false;
            }
            if (width != oembedjsonimpl.width)
            {
                return false;
            }
            if (authorName == null ? oembedjsonimpl.authorName != null : !authorName.equals(oembedjsonimpl.authorName))
            {
                return false;
            }
            if (authorURL == null ? oembedjsonimpl.authorURL != null : !authorURL.equals(oembedjsonimpl.authorURL))
            {
                return false;
            }
            if (html == null ? oembedjsonimpl.html != null : !html.equals(oembedjsonimpl.html))
            {
                return false;
            }
            if (url == null ? oembedjsonimpl.url != null : !url.equals(oembedjsonimpl.url))
            {
                return false;
            }
            if (version == null ? oembedjsonimpl.version != null : !version.equals(oembedjsonimpl.version))
            {
                return false;
            }
        }
        return true;
    }

    public volatile int getAccessLevel()
    {
        return super.getAccessLevel();
    }

    public String getAuthorName()
    {
        return authorName;
    }

    public String getAuthorURL()
    {
        return authorURL;
    }

    public long getCacheAge()
    {
        return cacheAge;
    }

    public String getHtml()
    {
        return html;
    }

    public volatile RateLimitStatus getRateLimitStatus()
    {
        return super.getRateLimitStatus();
    }

    public String getURL()
    {
        return url;
    }

    public String getVersion()
    {
        return version;
    }

    public int getWidth()
    {
        return width;
    }

    public int hashCode()
    {
        int i;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        String s;
        int i2;
        if (html != null)
        {
            i = html.hashCode();
        } else
        {
            i = 0;
        }
        j = i * 31;
        if (authorName != null)
        {
            k = authorName.hashCode();
        } else
        {
            k = 0;
        }
        l = 31 * (k + j);
        if (url != null)
        {
            i1 = url.hashCode();
        } else
        {
            i1 = 0;
        }
        j1 = 31 * (i1 + l);
        if (version != null)
        {
            k1 = version.hashCode();
        } else
        {
            k1 = 0;
        }
        l1 = 31 * (31 * (k1 + j1) + (int)(cacheAge ^ cacheAge >>> 32));
        s = authorURL;
        i2 = 0;
        if (s != null)
        {
            i2 = authorURL.hashCode();
        }
        return 31 * (l1 + i2) + width;
    }

    public String toString()
    {
        return (new StringBuilder()).append("OEmbedJSONImpl{html='").append(html).append('\'').append(", authorName='").append(authorName).append('\'').append(", url='").append(url).append('\'').append(", version='").append(version).append('\'').append(", cacheAge=").append(cacheAge).append(", authorURL='").append(authorURL).append('\'').append(", width=").append(width).append('}').toString();
    }
}
