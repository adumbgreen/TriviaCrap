// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            Friendship, JSONException, ParseUtil, JSONObject, 
//            JSONArray, TwitterException, TwitterObjectFactory, HttpResponse, 
//            ResponseListImpl, ResponseList

class FriendshipJSONImpl
    implements Friendship
{

    private static final long serialVersionUID = 0x5f0666af66c839c2L;
    private boolean followedBy;
    private boolean following;
    private final long id;
    private final String name;
    private final String screenName;

    FriendshipJSONImpl(JSONObject jsonobject)
    {
        int i;
        i = 0;
        super();
        following = false;
        followedBy = false;
        JSONArray jsonarray;
        id = ParseUtil.getLong("id", jsonobject);
        name = jsonobject.getString("name");
        screenName = jsonobject.getString("screen_name");
        jsonarray = jsonobject.getJSONArray("connections");
_L2:
        if (i < jsonarray.length())
        {
            String s = jsonarray.getString(i);
            if ("following".equals(s))
            {
                following = true;
                break MISSING_BLOCK_LABEL_147;
            }
            try
            {
                if ("followed_by".equals(s))
                {
                    followedBy = true;
                }
            }
            catch (JSONException jsonexception)
            {
                throw new TwitterException((new StringBuilder()).append(jsonexception.getMessage()).append(":").append(jsonobject.toString()).toString(), jsonexception);
            }
        } else
        {
            return;
        }
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static ResponseList createFriendshipList(HttpResponse httpresponse, Configuration configuration)
    {
        JSONArray jsonarray;
        int i;
        ResponseListImpl responselistimpl;
        int j;
        JSONObject jsonobject;
        FriendshipJSONImpl friendshipjsonimpl;
        try
        {
            if (configuration.isJSONStoreEnabled())
            {
                TwitterObjectFactory.clearThreadLocalMap();
            }
            jsonarray = httpresponse.asJSONArray();
            i = jsonarray.length();
            responselistimpl = new ResponseListImpl(i, httpresponse);
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        j = 0;
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        jsonobject = jsonarray.getJSONObject(j);
        friendshipjsonimpl = new FriendshipJSONImpl(jsonobject);
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.registerJSONObject(friendshipjsonimpl, jsonobject);
        }
        responselistimpl.add(friendshipjsonimpl);
        j++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_38;
_L1:
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.registerJSONObject(responselistimpl, jsonarray);
        }
        return responselistimpl;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            FriendshipJSONImpl friendshipjsonimpl = (FriendshipJSONImpl)obj;
            if (followedBy != friendshipjsonimpl.followedBy)
            {
                return false;
            }
            if (following != friendshipjsonimpl.following)
            {
                return false;
            }
            if (id != friendshipjsonimpl.id)
            {
                return false;
            }
            if (!name.equals(friendshipjsonimpl.name))
            {
                return false;
            }
            if (!screenName.equals(friendshipjsonimpl.screenName))
            {
                return false;
            }
        }
        return true;
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

    public int hashCode()
    {
        int i = 1;
        int j = 31 * (int)(id ^ id >>> 32);
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        if (name != null)
        {
            k = name.hashCode();
        } else
        {
            k = 0;
        }
        l = 31 * (k + j);
        if (screenName != null)
        {
            i1 = screenName.hashCode();
        } else
        {
            i1 = 0;
        }
        j1 = 31 * (i1 + l);
        if (following)
        {
            k1 = i;
        } else
        {
            k1 = 0;
        }
        l1 = 31 * (k1 + j1);
        if (!followedBy)
        {
            i = 0;
        }
        return l1 + i;
    }

    public boolean isFollowedBy()
    {
        return followedBy;
    }

    public boolean isFollowing()
    {
        return following;
    }

    public String toString()
    {
        return (new StringBuilder()).append("FriendshipJSONImpl{id=").append(id).append(", name='").append(name).append('\'').append(", screenName='").append(screenName).append('\'').append(", following=").append(following).append(", followedBy=").append(followedBy).append('}').toString();
    }
}
