// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;


// Referenced classes of package twitter4j:
//            Logger, JSONException, JSONObject

public final class JSONObjectType
{

    private static final Logger logger = Logger.getLogger(twitter4j/JSONObjectType);

    public JSONObjectType()
    {
    }

    public static Type determine(JSONObject jsonobject)
    {
        if (!jsonobject.isNull("sender"))
        {
            return Type.SENDER;
        }
        if (!jsonobject.isNull("text"))
        {
            return Type.STATUS;
        }
        if (!jsonobject.isNull("direct_message"))
        {
            return Type.DIRECT_MESSAGE;
        }
        if (!jsonobject.isNull("delete"))
        {
            return Type.DELETE;
        }
        if (!jsonobject.isNull("limit"))
        {
            return Type.LIMIT;
        }
        if (!jsonobject.isNull("warning"))
        {
            return Type.STALL_WARNING;
        }
        if (!jsonobject.isNull("scrub_geo"))
        {
            return Type.SCRUB_GEO;
        }
        if (!jsonobject.isNull("friends"))
        {
            return Type.FRIENDS;
        }
        if (jsonobject.isNull("event"))
        {
            break MISSING_BLOCK_LABEL_333;
        }
        Type type;
        String s = jsonobject.getString("event");
        if ("favorite".equals(s))
        {
            return Type.FAVORITE;
        }
        if ("unfavorite".equals(s))
        {
            return Type.UNFAVORITE;
        }
        if ("follow".equals(s))
        {
            return Type.FOLLOW;
        }
        if ("unfollow".equals(s))
        {
            return Type.UNFOLLOW;
        }
        if (s.startsWith("list"))
        {
            if ("list_member_added".equals(s))
            {
                return Type.USER_LIST_MEMBER_ADDED;
            }
            if ("list_member_removed".equals(s))
            {
                return Type.USER_LIST_MEMBER_DELETED;
            }
            if ("list_user_subscribed".equals(s))
            {
                return Type.USER_LIST_SUBSCRIBED;
            }
            if ("list_user_unsubscribed".equals(s))
            {
                return Type.USER_LIST_UNSUBSCRIBED;
            }
            if ("list_created".equals(s))
            {
                return Type.USER_LIST_CREATED;
            }
            if ("list_updated".equals(s))
            {
                return Type.USER_LIST_UPDATED;
            }
            if ("list_destroyed".equals(s))
            {
                return Type.USER_LIST_DESTROYED;
            }
            break MISSING_BLOCK_LABEL_329;
        }
        if ("user_update".equals(s))
        {
            return Type.USER_UPDATE;
        }
        if ("block".equals(s))
        {
            return Type.BLOCK;
        }
        if (!"unblock".equals(s))
        {
            break MISSING_BLOCK_LABEL_329;
        }
        type = Type.UNBLOCK;
        return type;
        JSONException jsonexception;
        jsonexception;
        try
        {
            logger.warn("Failed to get event element: ", jsonobject.toString(2));
        }
        catch (JSONException jsonexception1) { }
        return Type.UNKNOWN;
        if (!jsonobject.isNull("disconnect"))
        {
            return Type.DISCONNECTION;
        }
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_329;
_L1:
    }


    private class Type extends Enum
    {

        private static final Type $VALUES[];
        public static final Type BLOCK;
        public static final Type DELETE;
        public static final Type DIRECT_MESSAGE;
        public static final Type DISCONNECTION;
        public static final Type FAVORITE;
        public static final Type FOLLOW;
        public static final Type FRIENDS;
        public static final Type LIMIT;
        public static final Type SCRUB_GEO;
        public static final Type SENDER;
        public static final Type STALL_WARNING;
        public static final Type STATUS;
        public static final Type UNBLOCK;
        public static final Type UNFAVORITE;
        public static final Type UNFOLLOW;
        public static final Type UNKNOWN;
        public static final Type USER_LIST_CREATED;
        public static final Type USER_LIST_DESTROYED;
        public static final Type USER_LIST_MEMBER_ADDED;
        public static final Type USER_LIST_MEMBER_DELETED;
        public static final Type USER_LIST_SUBSCRIBED;
        public static final Type USER_LIST_UNSUBSCRIBED;
        public static final Type USER_LIST_UPDATED;
        public static final Type USER_UPDATE;

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(twitter4j/JSONObjectType$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])$VALUES.clone();
        }

        static 
        {
            SENDER = new Type("SENDER", 0);
            STATUS = new Type("STATUS", 1);
            DIRECT_MESSAGE = new Type("DIRECT_MESSAGE", 2);
            DELETE = new Type("DELETE", 3);
            LIMIT = new Type("LIMIT", 4);
            STALL_WARNING = new Type("STALL_WARNING", 5);
            SCRUB_GEO = new Type("SCRUB_GEO", 6);
            FRIENDS = new Type("FRIENDS", 7);
            FAVORITE = new Type("FAVORITE", 8);
            UNFAVORITE = new Type("UNFAVORITE", 9);
            FOLLOW = new Type("FOLLOW", 10);
            UNFOLLOW = new Type("UNFOLLOW", 11);
            USER_LIST_MEMBER_ADDED = new Type("USER_LIST_MEMBER_ADDED", 12);
            USER_LIST_MEMBER_DELETED = new Type("USER_LIST_MEMBER_DELETED", 13);
            USER_LIST_SUBSCRIBED = new Type("USER_LIST_SUBSCRIBED", 14);
            USER_LIST_UNSUBSCRIBED = new Type("USER_LIST_UNSUBSCRIBED", 15);
            USER_LIST_CREATED = new Type("USER_LIST_CREATED", 16);
            USER_LIST_UPDATED = new Type("USER_LIST_UPDATED", 17);
            USER_LIST_DESTROYED = new Type("USER_LIST_DESTROYED", 18);
            USER_UPDATE = new Type("USER_UPDATE", 19);
            BLOCK = new Type("BLOCK", 20);
            UNBLOCK = new Type("UNBLOCK", 21);
            DISCONNECTION = new Type("DISCONNECTION", 22);
            UNKNOWN = new Type("UNKNOWN", 23);
            Type atype[] = new Type[24];
            atype[0] = SENDER;
            atype[1] = STATUS;
            atype[2] = DIRECT_MESSAGE;
            atype[3] = DELETE;
            atype[4] = LIMIT;
            atype[5] = STALL_WARNING;
            atype[6] = SCRUB_GEO;
            atype[7] = FRIENDS;
            atype[8] = FAVORITE;
            atype[9] = UNFAVORITE;
            atype[10] = FOLLOW;
            atype[11] = UNFOLLOW;
            atype[12] = USER_LIST_MEMBER_ADDED;
            atype[13] = USER_LIST_MEMBER_DELETED;
            atype[14] = USER_LIST_SUBSCRIBED;
            atype[15] = USER_LIST_UNSUBSCRIBED;
            atype[16] = USER_LIST_CREATED;
            atype[17] = USER_LIST_UPDATED;
            atype[18] = USER_LIST_DESTROYED;
            atype[19] = USER_UPDATE;
            atype[20] = BLOCK;
            atype[21] = UNBLOCK;
            atype[22] = DISCONNECTION;
            atype[23] = UNKNOWN;
            $VALUES = atype;
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }

}
