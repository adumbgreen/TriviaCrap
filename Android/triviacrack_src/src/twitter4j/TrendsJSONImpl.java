// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            TwitterResponseImpl, Trends, HttpResponse, TwitterObjectFactory, 
//            JSONException, JSONObject, ParseUtil, ResponseListImpl, 
//            ResponseList, TwitterException, LocationJSONImpl, Location, 
//            JSONArray, Trend, TrendJSONImpl

final class TrendsJSONImpl extends TwitterResponseImpl
    implements Serializable, Trends
{

    private static final long serialVersionUID = 0x1c84bb4ff87a8afbL;
    private Date asOf;
    private Location location;
    private Date trendAt;
    private Trend trends[];

    TrendsJSONImpl(String s)
    {
        this(s, false);
    }

    TrendsJSONImpl(String s, boolean flag)
    {
        init(s, flag);
    }

    TrendsJSONImpl(Date date, Location location1, Date date1, Trend atrend[])
    {
        asOf = date;
        location = location1;
        trendAt = date1;
        trends = atrend;
    }

    TrendsJSONImpl(HttpResponse httpresponse, Configuration configuration)
    {
        super(httpresponse);
        init(httpresponse.asString(), configuration.isJSONStoreEnabled());
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.clearThreadLocalMap();
            TwitterObjectFactory.registerJSONObject(this, httpresponse.asString());
        }
    }

    static ResponseList createTrendsList(HttpResponse httpresponse, boolean flag)
    {
        JSONObject jsonobject = httpresponse.asJSONObject();
        Date date;
        JSONObject jsonobject1;
        Location location1;
        ResponseListImpl responselistimpl;
        Iterator iterator;
        date = ParseUtil.parseTrendsDate(jsonobject.getString("as_of"));
        jsonobject1 = jsonobject.getJSONObject("trends");
        location1 = extractLocation(jsonobject, flag);
        responselistimpl = new ResponseListImpl(jsonobject1.length(), httpresponse);
        iterator = jsonobject1.keys();
_L3:
        String s;
        Trend atrend[];
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_250;
        }
        s = (String)iterator.next();
        atrend = jsonArrayToTrendArray(jsonobject1.getJSONArray(s), flag);
        if (s.length() != 19) goto _L2; else goto _L1
_L1:
        JSONException jsonexception;
        responselistimpl.add(new TrendsJSONImpl(date, location1, ParseUtil.getDate(s, "yyyy-MM-dd HH:mm:ss"), atrend));
          goto _L3
_L2:
        if (s.length() != 16) goto _L5; else goto _L4
_L4:
        responselistimpl.add(new TrendsJSONImpl(date, location1, ParseUtil.getDate(s, "yyyy-MM-dd HH:mm"), atrend));
          goto _L3
_L5:
        if (s.length() != 10) goto _L3; else goto _L6
_L6:
        responselistimpl.add(new TrendsJSONImpl(date, location1, ParseUtil.getDate(s, "yyyy-MM-dd"), atrend));
          goto _L3
        try
        {
            Collections.sort(responselistimpl);
        }
        // Misplaced declaration of an exception variable
        catch (JSONException jsonexception)
        {
            throw new TwitterException((new StringBuilder()).append(jsonexception.getMessage()).append(":").append(httpresponse.asString()).toString(), jsonexception);
        }
        return responselistimpl;
    }

    private static Location extractLocation(JSONObject jsonobject, boolean flag)
    {
        if (!jsonobject.isNull("locations"))
        {
            ResponseList responselist;
            try
            {
                responselist = LocationJSONImpl.createLocationList(jsonobject.getJSONArray("locations"), flag);
            }
            catch (JSONException jsonexception)
            {
                throw new AssertionError("locations can't be null");
            }
            if (responselist.size() != 0)
            {
                return (Location)responselist.get(0);
            }
        }
        return null;
    }

    private static Trend[] jsonArrayToTrendArray(JSONArray jsonarray, boolean flag)
    {
        Trend atrend[] = new Trend[jsonarray.length()];
        for (int i = 0; i < jsonarray.length(); i++)
        {
            atrend[i] = new TrendJSONImpl(jsonarray.getJSONObject(i), flag);
        }

        return atrend;
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((Trends)obj);
    }

    public int compareTo(Trends trends1)
    {
        return trendAt.compareTo(trends1.getTrendAt());
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof Trends))
            {
                return false;
            }
            Trends trends1 = (Trends)obj;
            if (asOf == null ? trends1.getAsOf() != null : !asOf.equals(trends1.getAsOf()))
            {
                return false;
            }
            if (trendAt == null ? trends1.getTrendAt() != null : !trendAt.equals(trends1.getTrendAt()))
            {
                return false;
            }
            if (!Arrays.equals(trends, trends1.getTrends()))
            {
                return false;
            }
        }
        return true;
    }

    public Date getAsOf()
    {
        return asOf;
    }

    public Location getLocation()
    {
        return location;
    }

    public Date getTrendAt()
    {
        return trendAt;
    }

    public Trend[] getTrends()
    {
        return trends;
    }

    public int hashCode()
    {
        int i;
        int j;
        int k;
        int l;
        Trend atrend[];
        int i1;
        if (asOf != null)
        {
            i = asOf.hashCode();
        } else
        {
            i = 0;
        }
        j = i * 31;
        if (trendAt != null)
        {
            k = trendAt.hashCode();
        } else
        {
            k = 0;
        }
        l = 31 * (k + j);
        atrend = trends;
        i1 = 0;
        if (atrend != null)
        {
            i1 = Arrays.hashCode(trends);
        }
        return l + i1;
    }

    void init(String s, boolean flag)
    {
        JSONArray jsonarray;
        if (!s.startsWith("["))
        {
            break MISSING_BLOCK_LABEL_112;
        }
        jsonarray = new JSONArray(s);
        if (jsonarray.length() <= 0) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = jsonarray.getJSONObject(0);
_L3:
        asOf = ParseUtil.parseTrendsDate(jsonobject.getString("as_of"));
        location = extractLocation(jsonobject, flag);
        JSONArray jsonarray1 = jsonobject.getJSONArray("trends");
        trendAt = asOf;
        trends = jsonArrayToTrendArray(jsonarray1, flag);
        return;
_L2:
        try
        {
            throw new TwitterException("No trends found on the specified woeid");
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception.getMessage(), jsonexception);
        }
        jsonobject = new JSONObject(s);
          goto _L3
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("TrendsJSONImpl{asOf=").append(asOf).append(", trendAt=").append(trendAt).append(", trends=");
        java.util.List list;
        if (trends == null)
        {
            list = null;
        } else
        {
            list = Arrays.asList(trends);
        }
        return stringbuilder.append(list).append('}').toString();
    }
}
