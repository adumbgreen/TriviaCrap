// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            Location, JSONException, ParseUtil, JSONObject, 
//            TwitterException, TwitterObjectFactory, HttpResponse, JSONArray, 
//            ResponseListImpl, ResponseList

final class LocationJSONImpl
    implements Location
{

    private static final long serialVersionUID = 0xedc82aba6f35c088L;
    private final String countryCode;
    private final String countryName;
    private final String name;
    private final int placeCode;
    private final String placeName;
    private final String url;
    private final int woeid;

    LocationJSONImpl(JSONObject jsonobject)
    {
        woeid = ParseUtil.getInt("woeid", jsonobject);
        countryName = ParseUtil.getUnescapedString("country", jsonobject);
        countryCode = ParseUtil.getRawString("countryCode", jsonobject);
        if (jsonobject.isNull("placeType"))
        {
            break MISSING_BLOCK_LABEL_91;
        }
        JSONObject jsonobject1 = jsonobject.getJSONObject("placeType");
        placeName = ParseUtil.getUnescapedString("name", jsonobject1);
        placeCode = ParseUtil.getInt("code", jsonobject1);
_L1:
        name = ParseUtil.getUnescapedString("name", jsonobject);
        url = ParseUtil.getUnescapedString("url", jsonobject);
        return;
        try
        {
            placeName = null;
            placeCode = -1;
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
          goto _L1
    }

    static ResponseList createLocationList(HttpResponse httpresponse, Configuration configuration)
    {
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.clearThreadLocalMap();
        }
        return createLocationList(httpresponse.asJSONArray(), configuration.isJSONStoreEnabled());
    }

    static ResponseList createLocationList(JSONArray jsonarray, boolean flag)
    {
        int j;
        int i;
        ResponseListImpl responselistimpl;
        JSONObject jsonobject;
        LocationJSONImpl locationjsonimpl;
        try
        {
            i = jsonarray.length();
            responselistimpl = new ResponseListImpl(i, null);
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        j = 0;
_L2:
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        jsonobject = jsonarray.getJSONObject(j);
        locationjsonimpl = new LocationJSONImpl(jsonobject);
        responselistimpl.add(locationjsonimpl);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        TwitterObjectFactory.registerJSONObject(locationjsonimpl, jsonobject);
        break MISSING_BLOCK_LABEL_93;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        TwitterObjectFactory.registerJSONObject(responselistimpl, jsonarray);
        return responselistimpl;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof LocationJSONImpl))
            {
                return false;
            }
            LocationJSONImpl locationjsonimpl = (LocationJSONImpl)obj;
            if (woeid != locationjsonimpl.woeid)
            {
                return false;
            }
        }
        return true;
    }

    public String getCountryCode()
    {
        return countryCode;
    }

    public String getCountryName()
    {
        return countryName;
    }

    public String getName()
    {
        return name;
    }

    public int getPlaceCode()
    {
        return placeCode;
    }

    public String getPlaceName()
    {
        return placeName;
    }

    public String getURL()
    {
        return url;
    }

    public int getWoeid()
    {
        return woeid;
    }

    public int hashCode()
    {
        return woeid;
    }

    public String toString()
    {
        return (new StringBuilder()).append("LocationJSONImpl{woeid=").append(woeid).append(", countryName='").append(countryName).append('\'').append(", countryCode='").append(countryCode).append('\'').append(", placeName='").append(placeName).append('\'').append(", placeCode='").append(placeCode).append('\'').append(", name='").append(name).append('\'').append(", url='").append(url).append('\'').append('}').toString();
    }
}
