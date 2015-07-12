// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.util.Arrays;
import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            TwitterResponseImpl, IDs, HttpResponse, TwitterObjectFactory, 
//            JSONException, JSONObject, JSONArray, TwitterException, 
//            ParseUtil

final class IDsJSONImpl extends TwitterResponseImpl
    implements IDs
{

    private static final long serialVersionUID = 0x6123b5378a0306e8L;
    private long ids[];
    private long nextCursor;
    private long previousCursor;

    IDsJSONImpl(String s)
    {
        previousCursor = -1L;
        nextCursor = -1L;
        init(s);
    }

    IDsJSONImpl(HttpResponse httpresponse, Configuration configuration)
    {
        super(httpresponse);
        previousCursor = -1L;
        nextCursor = -1L;
        String s = httpresponse.asString();
        init(s);
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.clearThreadLocalMap();
            TwitterObjectFactory.registerJSONObject(this, s);
        }
    }

    private void init(String s)
    {
        int i = 0;
        JSONObject jsonobject;
        JSONArray jsonarray;
        if (!s.startsWith("{"))
        {
            break MISSING_BLOCK_LABEL_140;
        }
        jsonobject = new JSONObject(s);
        jsonarray = jsonobject.getJSONArray("ids");
        ids = new long[jsonarray.length()];
_L1:
        int j = jsonarray.length();
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        ids[i] = Long.parseLong(jsonarray.getString(i));
        i++;
          goto _L1
        NumberFormatException numberformatexception;
        numberformatexception;
        try
        {
            throw new TwitterException((new StringBuilder()).append("Twitter API returned malformed response: ").append(jsonobject).toString(), numberformatexception);
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        previousCursor = ParseUtil.getLong("previous_cursor", jsonobject);
        nextCursor = ParseUtil.getLong("next_cursor", jsonobject);
        return;
        JSONArray jsonarray1;
        jsonarray1 = new JSONArray(s);
        ids = new long[jsonarray1.length()];
_L2:
        int k = jsonarray1.length();
        if (i >= k)
        {
            break MISSING_BLOCK_LABEL_227;
        }
        ids[i] = Long.parseLong(jsonarray1.getString(i));
        i++;
          goto _L2
        NumberFormatException numberformatexception1;
        numberformatexception1;
        throw new TwitterException((new StringBuilder()).append("Twitter API returned malformed response: ").append(jsonarray1).toString(), numberformatexception1);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof IDs))
            {
                return false;
            }
            IDs ids1 = (IDs)obj;
            if (!Arrays.equals(ids, ids1.getIDs()))
            {
                return false;
            }
        }
        return true;
    }

    public long[] getIDs()
    {
        return ids;
    }

    public long getNextCursor()
    {
        return nextCursor;
    }

    public long getPreviousCursor()
    {
        return previousCursor;
    }

    public boolean hasNext()
    {
        return 0L != nextCursor;
    }

    public boolean hasPrevious()
    {
        return 0L != previousCursor;
    }

    public int hashCode()
    {
        if (ids != null)
        {
            return Arrays.hashCode(ids);
        } else
        {
            return 0;
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append("IDsJSONImpl{ids=").append(Arrays.toString(ids)).append(", previousCursor=").append(previousCursor).append(", nextCursor=").append(nextCursor).append('}').toString();
    }
}
