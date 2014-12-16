// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package twitter4j:
//            JSONException, AccountTotalsJSONImpl, JSONObject, TwitterException, 
//            CategoryJSONImpl, DirectMessageJSONImpl, IDsJSONImpl, LocationJSONImpl, 
//            OEmbedJSONImpl, JSONObjectType, StatusJSONImpl, StatusDeletionNoticeImpl, 
//            PlaceJSONImpl, RateLimitStatusJSONImpl, RelationshipJSONImpl, SavedSearchJSONImpl, 
//            TrendJSONImpl, TrendsJSONImpl, UserJSONImpl, UserListJSONImpl, 
//            AccountTotals, Category, DirectMessage, IDs, 
//            Location, OEmbed, Place, Relationship, 
//            SavedSearch, Status, Trend, Trends, 
//            User, UserList

public final class TwitterObjectFactory
{

    private static final ThreadLocal rawJsonMap = new ThreadLocal() {

        protected volatile Object initialValue()
        {
            return initialValue();
        }

        protected Map initialValue()
        {
            return new HashMap();
        }

    };
    private static boolean registeredAtleastOnce = false;

    private TwitterObjectFactory()
    {
        throw new AssertionError("not intended to be instantiated.");
    }

    static void clearThreadLocalMap()
    {
        ((Map)rawJsonMap.get()).clear();
    }

    public static AccountTotals createAccountTotals(String s)
    {
        AccountTotalsJSONImpl accounttotalsjsonimpl;
        try
        {
            accounttotalsjsonimpl = new AccountTotalsJSONImpl(new JSONObject(s));
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        return accounttotalsjsonimpl;
    }

    public static Category createCategory(String s)
    {
        CategoryJSONImpl categoryjsonimpl;
        try
        {
            categoryjsonimpl = new CategoryJSONImpl(new JSONObject(s));
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        return categoryjsonimpl;
    }

    public static DirectMessage createDirectMessage(String s)
    {
        DirectMessageJSONImpl directmessagejsonimpl;
        try
        {
            directmessagejsonimpl = new DirectMessageJSONImpl(new JSONObject(s));
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        return directmessagejsonimpl;
    }

    public static IDs createIDs(String s)
    {
        return new IDsJSONImpl(s);
    }

    public static Location createLocation(String s)
    {
        LocationJSONImpl locationjsonimpl;
        try
        {
            locationjsonimpl = new LocationJSONImpl(new JSONObject(s));
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        return locationjsonimpl;
    }

    public static OEmbed createOEmbed(String s)
    {
        OEmbedJSONImpl oembedjsonimpl;
        try
        {
            oembedjsonimpl = new OEmbedJSONImpl(new JSONObject(s));
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        return oembedjsonimpl;
    }

    public static Object createObject(String s)
    {
        JSONObject jsonobject;
        JSONObjectType.Type type;
        jsonobject = new JSONObject(s);
        type = JSONObjectType.determine(jsonobject);
        class _cls2
        {

            static final int $SwitchMap$twitter4j$JSONObjectType$Type[];

            static 
            {
                $SwitchMap$twitter4j$JSONObjectType$Type = new int[JSONObjectType.Type.values().length];
                try
                {
                    $SwitchMap$twitter4j$JSONObjectType$Type[JSONObjectType.Type.SENDER.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$twitter4j$JSONObjectType$Type[JSONObjectType.Type.STATUS.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$twitter4j$JSONObjectType$Type[JSONObjectType.Type.DIRECT_MESSAGE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$twitter4j$JSONObjectType$Type[JSONObjectType.Type.DELETE.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$twitter4j$JSONObjectType$Type[JSONObjectType.Type.LIMIT.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$twitter4j$JSONObjectType$Type[JSONObjectType.Type.SCRUB_GEO.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5)
                {
                    return;
                }
            }
        }

        _cls2..SwitchMap.twitter4j.JSONObjectType.Type[type.ordinal()];
        JVM INSTR tableswitch 1 6: default 146
    //                   1 60
    //                   2 78
    //                   3 91
    //                   4 109
    //                   5 146
    //                   6 146;
           goto _L1 _L2 _L3 _L4 _L5 _L1 _L1
_L2:
        return registerJSONObject(new DirectMessageJSONImpl(jsonobject.getJSONObject("direct_message")), jsonobject);
_L3:
        return registerJSONObject(new StatusJSONImpl(jsonobject), jsonobject);
_L4:
        return registerJSONObject(new DirectMessageJSONImpl(jsonobject.getJSONObject("direct_message")), jsonobject);
_L5:
        Object obj = registerJSONObject(new StatusDeletionNoticeImpl(jsonobject.getJSONObject("delete").getJSONObject("status")), jsonobject);
        return obj;
        JSONException jsonexception;
        jsonexception;
        throw new TwitterException(jsonexception);
_L1:
        return jsonobject;
    }

    public static Place createPlace(String s)
    {
        PlaceJSONImpl placejsonimpl;
        try
        {
            placejsonimpl = new PlaceJSONImpl(new JSONObject(s));
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        return placejsonimpl;
    }

    public static Map createRateLimitStatus(String s)
    {
        Map map;
        try
        {
            map = RateLimitStatusJSONImpl.createRateLimitStatuses(new JSONObject(s));
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        return map;
    }

    public static Relationship createRelationship(String s)
    {
        RelationshipJSONImpl relationshipjsonimpl;
        try
        {
            relationshipjsonimpl = new RelationshipJSONImpl(new JSONObject(s));
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        return relationshipjsonimpl;
    }

    public static SavedSearch createSavedSearch(String s)
    {
        SavedSearchJSONImpl savedsearchjsonimpl;
        try
        {
            savedsearchjsonimpl = new SavedSearchJSONImpl(new JSONObject(s));
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        return savedsearchjsonimpl;
    }

    public static Status createStatus(String s)
    {
        StatusJSONImpl statusjsonimpl;
        try
        {
            statusjsonimpl = new StatusJSONImpl(new JSONObject(s));
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        return statusjsonimpl;
    }

    public static Trend createTrend(String s)
    {
        TrendJSONImpl trendjsonimpl;
        try
        {
            trendjsonimpl = new TrendJSONImpl(new JSONObject(s));
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        return trendjsonimpl;
    }

    public static Trends createTrends(String s)
    {
        return new TrendsJSONImpl(s);
    }

    public static User createUser(String s)
    {
        UserJSONImpl userjsonimpl;
        try
        {
            userjsonimpl = new UserJSONImpl(new JSONObject(s));
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        return userjsonimpl;
    }

    public static UserList createUserList(String s)
    {
        UserListJSONImpl userlistjsonimpl;
        try
        {
            userlistjsonimpl = new UserListJSONImpl(new JSONObject(s));
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        return userlistjsonimpl;
    }

    public static String getRawJSON(Object obj)
    {
        if (!registeredAtleastOnce)
        {
            throw new IllegalStateException("Apparently jsonStoreEnabled is not set to true.");
        }
        Object obj1 = ((Map)rawJsonMap.get()).get(obj);
        if (obj1 instanceof String)
        {
            return (String)obj1;
        }
        if (obj1 != null)
        {
            return obj1.toString();
        } else
        {
            return null;
        }
    }

    static Object registerJSONObject(Object obj, Object obj1)
    {
        registeredAtleastOnce = true;
        ((Map)rawJsonMap.get()).put(obj, obj1);
        return obj;
    }

}
