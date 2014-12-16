// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package twitter4j:
//            HttpParameter, GeoLocation

public final class GeoQuery
    implements Serializable
{

    private static final long serialVersionUID = 0x4b6b3bfe5bd50d7aL;
    private String accuracy;
    private String granularity;
    private String ip;
    private GeoLocation location;
    private int maxResults;
    private String query;

    public GeoQuery(String s)
    {
        query = null;
        ip = null;
        accuracy = null;
        granularity = null;
        maxResults = -1;
        ip = s;
    }

    public GeoQuery(GeoLocation geolocation)
    {
        query = null;
        ip = null;
        accuracy = null;
        granularity = null;
        maxResults = -1;
        location = geolocation;
    }

    private void appendParameter(String s, double d, List list)
    {
        list.add(new HttpParameter(s, String.valueOf(d)));
    }

    private void appendParameter(String s, int i, List list)
    {
        if (i > 0)
        {
            list.add(new HttpParameter(s, String.valueOf(i)));
        }
    }

    private void appendParameter(String s, String s1, List list)
    {
        if (s1 != null)
        {
            list.add(new HttpParameter(s, s1));
        }
    }

    public GeoQuery accuracy(String s)
    {
        setAccuracy(s);
        return this;
    }

    HttpParameter[] asHttpParameterArray()
    {
        ArrayList arraylist = new ArrayList();
        if (location != null)
        {
            appendParameter("lat", location.getLatitude(), arraylist);
            appendParameter("long", location.getLongitude(), arraylist);
        }
        if (ip != null)
        {
            appendParameter("ip", ip, arraylist);
        }
        appendParameter("accuracy", accuracy, arraylist);
        appendParameter("query", query, arraylist);
        appendParameter("granularity", granularity, arraylist);
        appendParameter("max_results", maxResults, arraylist);
        return (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()]);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            GeoQuery geoquery = (GeoQuery)obj;
            if (maxResults != geoquery.maxResults)
            {
                return false;
            }
            if (accuracy == null ? geoquery.accuracy != null : !accuracy.equals(geoquery.accuracy))
            {
                return false;
            }
            if (granularity == null ? geoquery.granularity != null : !granularity.equals(geoquery.granularity))
            {
                return false;
            }
            if (ip == null ? geoquery.ip != null : !ip.equals(geoquery.ip))
            {
                return false;
            }
            if (location == null ? geoquery.location != null : !location.equals(geoquery.location))
            {
                return false;
            }
        }
        return true;
    }

    public String getAccuracy()
    {
        return accuracy;
    }

    public String getGranularity()
    {
        return granularity;
    }

    public String getIp()
    {
        return ip;
    }

    public GeoLocation getLocation()
    {
        return location;
    }

    public int getMaxResults()
    {
        return maxResults;
    }

    public String getQuery()
    {
        return query;
    }

    public GeoQuery granularity(String s)
    {
        setGranularity(s);
        return this;
    }

    public int hashCode()
    {
        int i;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        String s;
        int k1;
        if (location != null)
        {
            i = location.hashCode();
        } else
        {
            i = 0;
        }
        j = i * 31;
        if (ip != null)
        {
            k = ip.hashCode();
        } else
        {
            k = 0;
        }
        l = 31 * (k + j);
        if (accuracy != null)
        {
            i1 = accuracy.hashCode();
        } else
        {
            i1 = 0;
        }
        j1 = 31 * (i1 + l);
        s = granularity;
        k1 = 0;
        if (s != null)
        {
            k1 = granularity.hashCode();
        }
        return 31 * (j1 + k1) + maxResults;
    }

    public GeoQuery maxResults(int i)
    {
        setMaxResults(i);
        return this;
    }

    public void setAccuracy(String s)
    {
        accuracy = s;
    }

    public void setGranularity(String s)
    {
        granularity = s;
    }

    public void setMaxResults(int i)
    {
        maxResults = i;
    }

    public void setQuery(String s)
    {
        query = s;
    }

    public String toString()
    {
        return (new StringBuilder()).append("GeoQuery{location=").append(location).append(", query='").append(query).append('\'').append(", ip='").append(ip).append('\'').append(", accuracy='").append(accuracy).append('\'').append(", granularity='").append(granularity).append('\'').append(", maxResults=").append(maxResults).append('}').toString();
    }
}
