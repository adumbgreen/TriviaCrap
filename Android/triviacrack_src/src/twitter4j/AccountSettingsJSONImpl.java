// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;
import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            TwitterResponseImpl, AccountSettings, JSONException, JSONObject, 
//            ParseUtil, Location, JSONArray, LocationJSONImpl, 
//            TimeZoneJSONImpl, TwitterException, HttpResponse, TwitterObjectFactory, 
//            TimeZone

class AccountSettingsJSONImpl extends TwitterResponseImpl
    implements Serializable, AccountSettings
{

    private static final long serialVersionUID = 0x85ef5f106bca856L;
    private final boolean ALWAYS_USE_HTTPS;
    private final boolean DISCOVERABLE_BY_EMAIL;
    private final boolean GEO_ENABLED;
    private final String LANGUAGE;
    private final String SCREEN_NAME;
    private final String SLEEP_END_TIME;
    private final String SLEEP_START_TIME;
    private final boolean SLEEP_TIME_ENABLED;
    private final TimeZone TIMEZONE;
    private final Location TREND_LOCATION[];

    private AccountSettingsJSONImpl(HttpResponse httpresponse, JSONObject jsonobject)
    {
        int i;
        i = 0;
        super(httpresponse);
        JSONObject jsonobject1 = jsonobject.getJSONObject("sleep_time");
        SLEEP_TIME_ENABLED = ParseUtil.getBoolean("enabled", jsonobject1);
        SLEEP_START_TIME = jsonobject1.getString("start_time");
        SLEEP_END_TIME = jsonobject1.getString("end_time");
        if (!jsonobject.isNull("trend_location")) goto _L2; else goto _L1
_L1:
        TREND_LOCATION = new Location[0];
_L4:
        GEO_ENABLED = ParseUtil.getBoolean("geo_enabled", jsonobject);
        LANGUAGE = jsonobject.getString("language");
        ALWAYS_USE_HTTPS = ParseUtil.getBoolean("always_use_https", jsonobject);
        DISCOVERABLE_BY_EMAIL = ParseUtil.getBoolean("discoverable_by_email", jsonobject);
        if (!jsonobject.isNull("time_zone"))
        {
            break MISSING_BLOCK_LABEL_184;
        }
        TIMEZONE = null;
_L6:
        SCREEN_NAME = jsonobject.getString("screen_name");
        return;
_L2:
        JSONArray jsonarray;
        jsonarray = jsonobject.getJSONArray("trend_location");
        TREND_LOCATION = new Location[jsonarray.length()];
_L5:
        if (i >= jsonarray.length()) goto _L4; else goto _L3
_L3:
        TREND_LOCATION[i] = new LocationJSONImpl(jsonarray.getJSONObject(i));
        i++;
          goto _L5
          goto _L4
        try
        {
            TIMEZONE = new TimeZoneJSONImpl(jsonobject.getJSONObject("time_zone"));
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
          goto _L6
    }

    AccountSettingsJSONImpl(HttpResponse httpresponse, Configuration configuration)
    {
        this(httpresponse, httpresponse.asJSONObject());
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.clearThreadLocalMap();
            TwitterObjectFactory.registerJSONObject(this, httpresponse.asJSONObject());
        }
    }

    AccountSettingsJSONImpl(JSONObject jsonobject)
    {
        this(null, jsonobject);
    }

    public String getLanguage()
    {
        return LANGUAGE;
    }

    public String getScreenName()
    {
        return SCREEN_NAME;
    }

    public String getSleepEndTime()
    {
        return SLEEP_END_TIME;
    }

    public String getSleepStartTime()
    {
        return SLEEP_START_TIME;
    }

    public TimeZone getTimeZone()
    {
        return TIMEZONE;
    }

    public Location[] getTrendLocations()
    {
        return TREND_LOCATION;
    }

    public boolean isAlwaysUseHttps()
    {
        return ALWAYS_USE_HTTPS;
    }

    public boolean isDiscoverableByEmail()
    {
        return DISCOVERABLE_BY_EMAIL;
    }

    public boolean isGeoEnabled()
    {
        return GEO_ENABLED;
    }

    public boolean isSleepTimeEnabled()
    {
        return SLEEP_TIME_ENABLED;
    }
}
