// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            RateLimitStatus, HttpResponse, TwitterObjectFactory, JSONException, 
//            JSONObject, TwitterException, ParseUtil

final class RateLimitStatusJSONImpl
    implements Serializable, RateLimitStatus
{

    private static final long serialVersionUID = 0x6c1cd6cd5a4eb3adL;
    private int limit;
    private int remaining;
    private int resetTimeInSeconds;
    private int secondsUntilReset;

    private RateLimitStatusJSONImpl(int i, int j, int k)
    {
        limit = i;
        remaining = j;
        resetTimeInSeconds = k;
        secondsUntilReset = (int)((1000L * (long)k - System.currentTimeMillis()) / 1000L);
    }

    RateLimitStatusJSONImpl(JSONObject jsonobject)
    {
        init(jsonobject);
    }

    static RateLimitStatus createFromResponseHeader(HttpResponse httpresponse)
    {
        String s;
        if (httpresponse != null)
        {
            if ((s = httpresponse.getResponseHeader("X-Rate-Limit-Limit")) != null)
            {
                int i = Integer.parseInt(s);
                String s1 = httpresponse.getResponseHeader("X-Rate-Limit-Remaining");
                if (s1 != null)
                {
                    int j = Integer.parseInt(s1);
                    String s2 = httpresponse.getResponseHeader("X-Rate-Limit-Reset");
                    if (s2 != null)
                    {
                        return new RateLimitStatusJSONImpl(i, j, (int)Long.parseLong(s2));
                    }
                }
            }
        }
        return null;
    }

    static Map createRateLimitStatuses(HttpResponse httpresponse, Configuration configuration)
    {
        JSONObject jsonobject = httpresponse.asJSONObject();
        Map map = createRateLimitStatuses(jsonobject);
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.clearThreadLocalMap();
            TwitterObjectFactory.registerJSONObject(map, jsonobject);
        }
        return map;
    }

    static Map createRateLimitStatuses(JSONObject jsonobject)
    {
        HashMap hashmap;
        hashmap = new HashMap();
        try
        {
            JSONObject jsonobject1 = jsonobject.getJSONObject("resources");
            for (Iterator iterator = jsonobject1.keys(); iterator.hasNext();)
            {
                JSONObject jsonobject2 = jsonobject1.getJSONObject((String)iterator.next());
                Iterator iterator1 = jsonobject2.keys();
                while (iterator1.hasNext()) 
                {
                    String s = (String)iterator1.next();
                    hashmap.put(s, new RateLimitStatusJSONImpl(jsonobject2.getJSONObject(s)));
                }
            }

        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        Map map = Collections.unmodifiableMap(hashmap);
        return map;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            RateLimitStatusJSONImpl ratelimitstatusjsonimpl = (RateLimitStatusJSONImpl)obj;
            if (limit != ratelimitstatusjsonimpl.limit)
            {
                return false;
            }
            if (remaining != ratelimitstatusjsonimpl.remaining)
            {
                return false;
            }
            if (resetTimeInSeconds != ratelimitstatusjsonimpl.resetTimeInSeconds)
            {
                return false;
            }
            if (secondsUntilReset != ratelimitstatusjsonimpl.secondsUntilReset)
            {
                return false;
            }
        }
        return true;
    }

    public int getLimit()
    {
        return limit;
    }

    public int getRemaining()
    {
        return remaining;
    }

    public int getResetTimeInSeconds()
    {
        return resetTimeInSeconds;
    }

    public int getSecondsUntilReset()
    {
        return secondsUntilReset;
    }

    public int hashCode()
    {
        return 31 * (31 * (31 * remaining + limit) + resetTimeInSeconds) + secondsUntilReset;
    }

    void init(JSONObject jsonobject)
    {
        limit = ParseUtil.getInt("limit", jsonobject);
        remaining = ParseUtil.getInt("remaining", jsonobject);
        resetTimeInSeconds = ParseUtil.getInt("reset", jsonobject);
        secondsUntilReset = (int)((1000L * (long)resetTimeInSeconds - System.currentTimeMillis()) / 1000L);
    }

    public String toString()
    {
        return (new StringBuilder()).append("RateLimitStatusJSONImpl{remaining=").append(remaining).append(", limit=").append(limit).append(", resetTimeInSeconds=").append(resetTimeInSeconds).append(", secondsUntilReset=").append(secondsUntilReset).append('}').toString();
    }
}
