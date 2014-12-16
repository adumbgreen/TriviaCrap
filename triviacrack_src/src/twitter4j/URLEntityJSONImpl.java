// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;


// Referenced classes of package twitter4j:
//            EntityIndex, URLEntity, JSONException, JSONObject, 
//            JSONArray, TwitterException

final class URLEntityJSONImpl extends EntityIndex
    implements URLEntity
{

    private static final long serialVersionUID = 0x65c6035c458ad1a4L;
    private String displayURL;
    private String expandedURL;
    private String url;

    URLEntityJSONImpl()
    {
    }

    URLEntityJSONImpl(int i, int j, String s, String s1, String s2)
    {
        setStart(i);
        setEnd(j);
        url = s;
        expandedURL = s1;
        displayURL = s2;
    }

    URLEntityJSONImpl(JSONObject jsonobject)
    {
        init(jsonobject);
    }

    private void init(JSONObject jsonobject)
    {
        JSONArray jsonarray = jsonobject.getJSONArray("indices");
        setStart(jsonarray.getInt(0));
        setEnd(jsonarray.getInt(1));
        url = jsonobject.getString("url");
        if (jsonobject.isNull("expanded_url"))
        {
            break MISSING_BLOCK_LABEL_74;
        }
        expandedURL = jsonobject.getString("expanded_url");
_L1:
        if (!jsonobject.isNull("display_url"))
        {
            displayURL = jsonobject.getString("display_url");
            return;
        }
        break MISSING_BLOCK_LABEL_95;
        try
        {
            expandedURL = url;
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
          goto _L1
        displayURL = url;
        return;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            URLEntityJSONImpl urlentityjsonimpl = (URLEntityJSONImpl)obj;
            if (displayURL == null ? urlentityjsonimpl.displayURL != null : !displayURL.equals(urlentityjsonimpl.displayURL))
            {
                return false;
            }
            if (expandedURL == null ? urlentityjsonimpl.expandedURL != null : !expandedURL.equals(urlentityjsonimpl.expandedURL))
            {
                return false;
            }
            if (url == null ? urlentityjsonimpl.url != null : !url.equals(urlentityjsonimpl.url))
            {
                return false;
            }
        }
        return true;
    }

    public String getDisplayURL()
    {
        return displayURL;
    }

    public int getEnd()
    {
        return super.getEnd();
    }

    public String getExpandedURL()
    {
        return expandedURL;
    }

    public int getStart()
    {
        return super.getStart();
    }

    public String getText()
    {
        return url;
    }

    public String getURL()
    {
        return url;
    }

    public int hashCode()
    {
        int i;
        int j;
        int k;
        int l;
        String s;
        int i1;
        if (url != null)
        {
            i = url.hashCode();
        } else
        {
            i = 0;
        }
        j = i * 31;
        if (expandedURL != null)
        {
            k = expandedURL.hashCode();
        } else
        {
            k = 0;
        }
        l = 31 * (k + j);
        s = displayURL;
        i1 = 0;
        if (s != null)
        {
            i1 = displayURL.hashCode();
        }
        return l + i1;
    }

    public String toString()
    {
        return (new StringBuilder()).append("URLEntityJSONImpl{url='").append(url).append('\'').append(", expandedURL='").append(expandedURL).append('\'').append(", displayURL='").append(displayURL).append('\'').append('}').toString();
    }
}
