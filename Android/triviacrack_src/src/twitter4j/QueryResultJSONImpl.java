// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            TwitterResponseImpl, QueryResult, JSONException, HttpResponse, 
//            JSONObject, ParseUtil, JSONArray, TwitterObjectFactory, 
//            StatusJSONImpl, TwitterException, Query

final class QueryResultJSONImpl extends TwitterResponseImpl
    implements Serializable, QueryResult
{

    private static final long serialVersionUID = 0xb59efee7b30538ecL;
    private double completedIn;
    private int count;
    private long maxId;
    private String nextResults;
    private String query;
    private String refreshUrl;
    private long sinceId;
    private List tweets;

    QueryResultJSONImpl(HttpResponse httpresponse, Configuration configuration)
    {
        JSONObject jsonobject;
        super(httpresponse);
        jsonobject = httpresponse.asJSONObject();
        JSONObject jsonobject1;
        jsonobject1 = jsonobject.getJSONObject("search_metadata");
        completedIn = ParseUtil.getDouble("completed_in", jsonobject1);
        count = ParseUtil.getInt("count", jsonobject1);
        maxId = ParseUtil.getLong("max_id", jsonobject1);
        if (!jsonobject1.has("next_results")) goto _L2; else goto _L1
_L1:
        String s = jsonobject1.getString("next_results");
_L6:
        JSONArray jsonarray;
        nextResults = s;
        query = ParseUtil.getURLDecodedString("query", jsonobject1);
        refreshUrl = ParseUtil.getUnescapedString("refresh_url", jsonobject1);
        sinceId = ParseUtil.getLong("since_id", jsonobject1);
        jsonarray = jsonobject.getJSONArray("statuses");
        tweets = new ArrayList(jsonarray.length());
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.clearThreadLocalMap();
        }
        break MISSING_BLOCK_LABEL_242;
_L5:
        int i;
        if (i >= jsonarray.length()) goto _L4; else goto _L3
_L3:
        JSONObject jsonobject2 = jsonarray.getJSONObject(i);
        tweets.add(new StatusJSONImpl(jsonobject2, configuration));
        i++;
          goto _L5
_L2:
        s = null;
          goto _L6
        JSONException jsonexception;
        jsonexception;
        throw new TwitterException((new StringBuilder()).append(jsonexception.getMessage()).append(":").append(jsonobject.toString()).toString(), jsonexception);
_L4:
        return;
        i = 0;
          goto _L5
    }

    QueryResultJSONImpl(Query query1)
    {
        sinceId = query1.getSinceId();
        count = query1.getCount();
        tweets = new ArrayList(0);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            QueryResult queryresult = (QueryResult)obj;
            if (Double.compare(queryresult.getCompletedIn(), completedIn) != 0)
            {
                return false;
            }
            if (maxId != queryresult.getMaxId())
            {
                return false;
            }
            if (count != queryresult.getCount())
            {
                return false;
            }
            if (sinceId != queryresult.getSinceId())
            {
                return false;
            }
            if (!query.equals(queryresult.getQuery()))
            {
                return false;
            }
            if (refreshUrl == null ? queryresult.getRefreshURL() != null : !refreshUrl.equals(queryresult.getRefreshURL()))
            {
                return false;
            }
            if (tweets == null ? queryresult.getTweets() != null : !tweets.equals(queryresult.getTweets()))
            {
                return false;
            }
        }
        return true;
    }

    public double getCompletedIn()
    {
        return completedIn;
    }

    public int getCount()
    {
        return count;
    }

    public long getMaxId()
    {
        return maxId;
    }

    public String getQuery()
    {
        return query;
    }

    public String getRefreshURL()
    {
        return refreshUrl;
    }

    public long getSinceId()
    {
        return sinceId;
    }

    public List getTweets()
    {
        return tweets;
    }

    public boolean hasNext()
    {
        return nextResults != null;
    }

    public int hashCode()
    {
        int i = 31 * (31 * (int)(sinceId ^ sinceId >>> 32) + (int)(maxId ^ maxId >>> 32));
        int j;
        int k;
        long l;
        int i1;
        List list;
        int j1;
        if (refreshUrl != null)
        {
            j = refreshUrl.hashCode();
        } else
        {
            j = 0;
        }
        k = 31 * (j + i) + count;
        if (completedIn != 0.0D)
        {
            l = Double.doubleToLongBits(completedIn);
        } else
        {
            l = 0L;
        }
        i1 = 31 * (31 * (k * 31 + (int)(l ^ l >>> 32)) + query.hashCode());
        list = tweets;
        j1 = 0;
        if (list != null)
        {
            j1 = tweets.hashCode();
        }
        return i1 + j1;
    }

    public Query nextQuery()
    {
        if (nextResults == null)
        {
            return null;
        } else
        {
            return Query.createWithNextPageQuery(nextResults);
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append("QueryResultJSONImpl{sinceId=").append(sinceId).append(", maxId=").append(maxId).append(", refreshUrl='").append(refreshUrl).append('\'').append(", count=").append(count).append(", completedIn=").append(completedIn).append(", query='").append(query).append('\'').append(", tweets=").append(tweets).append('}').toString();
    }
}
