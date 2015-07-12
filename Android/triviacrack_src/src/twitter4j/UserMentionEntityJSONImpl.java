// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;


// Referenced classes of package twitter4j:
//            EntityIndex, UserMentionEntity, JSONException, JSONObject, 
//            JSONArray, ParseUtil, TwitterException

class UserMentionEntityJSONImpl extends EntityIndex
    implements UserMentionEntity
{

    private static final long serialVersionUID = 0x541b429a37430ff5L;
    private long id;
    private String name;
    private String screenName;

    UserMentionEntityJSONImpl()
    {
    }

    UserMentionEntityJSONImpl(int i, int j, String s, String s1, long l)
    {
        setStart(i);
        setEnd(j);
        name = s;
        screenName = s1;
        id = l;
    }

    UserMentionEntityJSONImpl(JSONObject jsonobject)
    {
        init(jsonobject);
    }

    private void init(JSONObject jsonobject)
    {
        try
        {
            JSONArray jsonarray = jsonobject.getJSONArray("indices");
            setStart(jsonarray.getInt(0));
            setEnd(jsonarray.getInt(1));
            if (!jsonobject.isNull("name"))
            {
                name = jsonobject.getString("name");
            }
            if (!jsonobject.isNull("screen_name"))
            {
                screenName = jsonobject.getString("screen_name");
            }
            id = ParseUtil.getLong("id", jsonobject);
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
            UserMentionEntityJSONImpl usermentionentityjsonimpl = (UserMentionEntityJSONImpl)obj;
            if (id != usermentionentityjsonimpl.id)
            {
                return false;
            }
            if (name == null ? usermentionentityjsonimpl.name != null : !name.equals(usermentionentityjsonimpl.name))
            {
                return false;
            }
            if (screenName == null ? usermentionentityjsonimpl.screenName != null : !screenName.equals(usermentionentityjsonimpl.screenName))
            {
                return false;
            }
        }
        return true;
    }

    public int getEnd()
    {
        return super.getEnd();
    }

    public long getId()
    {
        return id;
    }

    public String getName()
    {
        return name;
    }

    public String getScreenName()
    {
        return screenName;
    }

    public int getStart()
    {
        return super.getStart();
    }

    public String getText()
    {
        return screenName;
    }

    public int hashCode()
    {
        int i;
        int j;
        String s;
        int k;
        if (name != null)
        {
            i = name.hashCode();
        } else
        {
            i = 0;
        }
        j = i * 31;
        s = screenName;
        k = 0;
        if (s != null)
        {
            k = screenName.hashCode();
        }
        return 31 * (j + k) + (int)(id ^ id >>> 32);
    }

    public String toString()
    {
        return (new StringBuilder()).append("UserMentionEntityJSONImpl{name='").append(name).append('\'').append(", screenName='").append(screenName).append('\'').append(", id=").append(id).append('}').toString();
    }
}
