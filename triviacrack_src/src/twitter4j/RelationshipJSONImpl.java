// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;
import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            TwitterResponseImpl, Relationship, JSONException, JSONObject, 
//            ParseUtil, TwitterException, HttpResponse, TwitterObjectFactory, 
//            JSONArray, ResponseListImpl, ResponseList

class RelationshipJSONImpl extends TwitterResponseImpl
    implements Serializable, Relationship
{

    private static final long serialVersionUID = 0xe4394c672b0c23e0L;
    private final boolean sourceBlockingTarget;
    private final boolean sourceCanDm;
    private final boolean sourceFollowedByTarget;
    private final boolean sourceFollowingTarget;
    private final boolean sourceNotificationsEnabled;
    private final long sourceUserId;
    private final String sourceUserScreenName;
    private final long targetUserId;
    private final String targetUserScreenName;
    private boolean wantRetweets;

    RelationshipJSONImpl(HttpResponse httpresponse, JSONObject jsonobject)
    {
        super(httpresponse);
        try
        {
            JSONObject jsonobject1 = jsonobject.getJSONObject("relationship");
            JSONObject jsonobject2 = jsonobject1.getJSONObject("source");
            JSONObject jsonobject3 = jsonobject1.getJSONObject("target");
            sourceUserId = ParseUtil.getLong("id", jsonobject2);
            targetUserId = ParseUtil.getLong("id", jsonobject3);
            sourceUserScreenName = ParseUtil.getUnescapedString("screen_name", jsonobject2);
            targetUserScreenName = ParseUtil.getUnescapedString("screen_name", jsonobject3);
            sourceBlockingTarget = ParseUtil.getBoolean("blocking", jsonobject2);
            sourceFollowingTarget = ParseUtil.getBoolean("following", jsonobject2);
            sourceFollowedByTarget = ParseUtil.getBoolean("followed_by", jsonobject2);
            sourceCanDm = ParseUtil.getBoolean("can_dm", jsonobject2);
            sourceNotificationsEnabled = ParseUtil.getBoolean("notifications_enabled", jsonobject2);
            wantRetweets = ParseUtil.getBoolean("want_retweets", jsonobject2);
            return;
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException((new StringBuilder()).append(jsonexception.getMessage()).append(":").append(jsonobject.toString()).toString(), jsonexception);
        }
    }

    RelationshipJSONImpl(HttpResponse httpresponse, Configuration configuration)
    {
        this(httpresponse, httpresponse.asJSONObject());
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.clearThreadLocalMap();
            TwitterObjectFactory.registerJSONObject(this, httpresponse.asJSONObject());
        }
    }

    RelationshipJSONImpl(JSONObject jsonobject)
    {
        this(null, jsonobject);
    }

    static ResponseList createRelationshipList(HttpResponse httpresponse, Configuration configuration)
    {
        JSONArray jsonarray;
        int i;
        ResponseListImpl responselistimpl;
        int j;
        JSONObject jsonobject;
        RelationshipJSONImpl relationshipjsonimpl;
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
        relationshipjsonimpl = new RelationshipJSONImpl(jsonobject);
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.registerJSONObject(relationshipjsonimpl, jsonobject);
        }
        responselistimpl.add(relationshipjsonimpl);
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

    public boolean canSourceDm()
    {
        return sourceCanDm;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof Relationship))
            {
                return false;
            }
            Relationship relationship = (Relationship)obj;
            if (sourceUserId != relationship.getSourceUserId())
            {
                return false;
            }
            if (targetUserId != relationship.getTargetUserId())
            {
                return false;
            }
            if (!sourceUserScreenName.equals(relationship.getSourceUserScreenName()))
            {
                return false;
            }
            if (!targetUserScreenName.equals(relationship.getTargetUserScreenName()))
            {
                return false;
            }
        }
        return true;
    }

    public long getSourceUserId()
    {
        return sourceUserId;
    }

    public String getSourceUserScreenName()
    {
        return sourceUserScreenName;
    }

    public long getTargetUserId()
    {
        return targetUserId;
    }

    public String getTargetUserScreenName()
    {
        return targetUserScreenName;
    }

    public int hashCode()
    {
        int i = 1;
        int j = 31 * (int)(targetUserId ^ targetUserId >>> 32);
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        String s;
        int j3;
        if (targetUserScreenName != null)
        {
            k = targetUserScreenName.hashCode();
        } else
        {
            k = 0;
        }
        l = 31 * (k + j);
        if (sourceBlockingTarget)
        {
            i1 = i;
        } else
        {
            i1 = 0;
        }
        j1 = 31 * (i1 + l);
        if (sourceNotificationsEnabled)
        {
            k1 = i;
        } else
        {
            k1 = 0;
        }
        l1 = 31 * (k1 + j1);
        if (sourceFollowingTarget)
        {
            i2 = i;
        } else
        {
            i2 = 0;
        }
        j2 = 31 * (i2 + l1);
        if (sourceFollowedByTarget)
        {
            k2 = i;
        } else
        {
            k2 = 0;
        }
        l2 = 31 * (k2 + j2);
        if (!sourceCanDm)
        {
            i = 0;
        }
        i3 = 31 * (31 * (l2 + i) + (int)(sourceUserId ^ sourceUserId >>> 32));
        s = sourceUserScreenName;
        j3 = 0;
        if (s != null)
        {
            j3 = sourceUserScreenName.hashCode();
        }
        return i3 + j3;
    }

    public boolean isSourceBlockingTarget()
    {
        return sourceBlockingTarget;
    }

    public boolean isSourceFollowedByTarget()
    {
        return sourceFollowedByTarget;
    }

    public boolean isSourceFollowingTarget()
    {
        return sourceFollowingTarget;
    }

    public boolean isSourceNotificationsEnabled()
    {
        return sourceNotificationsEnabled;
    }

    public boolean isSourceWantRetweets()
    {
        return wantRetweets;
    }

    public boolean isTargetFollowedBySource()
    {
        return sourceFollowingTarget;
    }

    public boolean isTargetFollowingSource()
    {
        return sourceFollowedByTarget;
    }

    public String toString()
    {
        return (new StringBuilder()).append("RelationshipJSONImpl{sourceUserId=").append(sourceUserId).append(", targetUserId=").append(targetUserId).append(", sourceUserScreenName='").append(sourceUserScreenName).append('\'').append(", targetUserScreenName='").append(targetUserScreenName).append('\'').append(", sourceFollowingTarget=").append(sourceFollowingTarget).append(", sourceFollowedByTarget=").append(sourceFollowedByTarget).append(", sourceCanDm=").append(sourceCanDm).append(", sourceNotificationsEnabled=").append(sourceNotificationsEnabled).append('}').toString();
    }
}
