// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;

// Referenced classes of package twitter4j:
//            Trend, ParseUtil, TwitterObjectFactory, JSONObject

final class TrendJSONImpl
    implements Serializable, Trend
{

    private static final long serialVersionUID = 0xc3958569a0f0ca14L;
    private final String name;
    private String query;
    private String url;

    TrendJSONImpl(JSONObject jsonobject)
    {
        this(jsonobject, false);
    }

    TrendJSONImpl(JSONObject jsonobject, boolean flag)
    {
        url = null;
        query = null;
        name = ParseUtil.getRawString("name", jsonobject);
        url = ParseUtil.getRawString("url", jsonobject);
        query = ParseUtil.getRawString("query", jsonobject);
        if (flag)
        {
            TwitterObjectFactory.registerJSONObject(this, jsonobject);
        }
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof Trend))
            {
                return false;
            }
            Trend trend = (Trend)obj;
            if (!name.equals(trend.getName()))
            {
                return false;
            }
            if (query == null ? trend.getQuery() != null : !query.equals(trend.getQuery()))
            {
                return false;
            }
            if (url == null ? trend.getURL() != null : !url.equals(trend.getURL()))
            {
                return false;
            }
        }
        return true;
    }

    public String getName()
    {
        return name;
    }

    public String getQuery()
    {
        return query;
    }

    public String getURL()
    {
        return url;
    }

    public int hashCode()
    {
        int i = 31 * name.hashCode();
        int j;
        int k;
        String s;
        int l;
        if (url != null)
        {
            j = url.hashCode();
        } else
        {
            j = 0;
        }
        k = 31 * (j + i);
        s = query;
        l = 0;
        if (s != null)
        {
            l = query.hashCode();
        }
        return k + l;
    }

    public String toString()
    {
        return (new StringBuilder()).append("TrendJSONImpl{name='").append(name).append('\'').append(", url='").append(url).append('\'').append(", query='").append(query).append('\'').append('}').toString();
    }
}
