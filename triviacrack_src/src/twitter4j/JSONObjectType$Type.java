// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES BLOCK;
    public static final .VALUES DELETE;
    public static final .VALUES DIRECT_MESSAGE;
    public static final .VALUES DISCONNECTION;
    public static final .VALUES FAVORITE;
    public static final .VALUES FOLLOW;
    public static final .VALUES FRIENDS;
    public static final .VALUES LIMIT;
    public static final .VALUES SCRUB_GEO;
    public static final .VALUES SENDER;
    public static final .VALUES STALL_WARNING;
    public static final .VALUES STATUS;
    public static final .VALUES UNBLOCK;
    public static final .VALUES UNFAVORITE;
    public static final .VALUES UNFOLLOW;
    public static final .VALUES UNKNOWN;
    public static final .VALUES USER_LIST_CREATED;
    public static final .VALUES USER_LIST_DESTROYED;
    public static final .VALUES USER_LIST_MEMBER_ADDED;
    public static final .VALUES USER_LIST_MEMBER_DELETED;
    public static final .VALUES USER_LIST_SUBSCRIBED;
    public static final .VALUES USER_LIST_UNSUBSCRIBED;
    public static final .VALUES USER_LIST_UPDATED;
    public static final .VALUES USER_UPDATE;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(twitter4j/JSONObjectType$Type, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        SENDER = new <init>("SENDER", 0);
        STATUS = new <init>("STATUS", 1);
        DIRECT_MESSAGE = new <init>("DIRECT_MESSAGE", 2);
        DELETE = new <init>("DELETE", 3);
        LIMIT = new <init>("LIMIT", 4);
        STALL_WARNING = new <init>("STALL_WARNING", 5);
        SCRUB_GEO = new <init>("SCRUB_GEO", 6);
        FRIENDS = new <init>("FRIENDS", 7);
        FAVORITE = new <init>("FAVORITE", 8);
        UNFAVORITE = new <init>("UNFAVORITE", 9);
        FOLLOW = new <init>("FOLLOW", 10);
        UNFOLLOW = new <init>("UNFOLLOW", 11);
        USER_LIST_MEMBER_ADDED = new <init>("USER_LIST_MEMBER_ADDED", 12);
        USER_LIST_MEMBER_DELETED = new <init>("USER_LIST_MEMBER_DELETED", 13);
        USER_LIST_SUBSCRIBED = new <init>("USER_LIST_SUBSCRIBED", 14);
        USER_LIST_UNSUBSCRIBED = new <init>("USER_LIST_UNSUBSCRIBED", 15);
        USER_LIST_CREATED = new <init>("USER_LIST_CREATED", 16);
        USER_LIST_UPDATED = new <init>("USER_LIST_UPDATED", 17);
        USER_LIST_DESTROYED = new <init>("USER_LIST_DESTROYED", 18);
        USER_UPDATE = new <init>("USER_UPDATE", 19);
        BLOCK = new <init>("BLOCK", 20);
        UNBLOCK = new <init>("UNBLOCK", 21);
        DISCONNECTION = new <init>("DISCONNECTION", 22);
        UNKNOWN = new <init>("UNKNOWN", 23);
        e_3B_.clone aclone[] = new <init>[24];
        aclone[0] = SENDER;
        aclone[1] = STATUS;
        aclone[2] = DIRECT_MESSAGE;
        aclone[3] = DELETE;
        aclone[4] = LIMIT;
        aclone[5] = STALL_WARNING;
        aclone[6] = SCRUB_GEO;
        aclone[7] = FRIENDS;
        aclone[8] = FAVORITE;
        aclone[9] = UNFAVORITE;
        aclone[10] = FOLLOW;
        aclone[11] = UNFOLLOW;
        aclone[12] = USER_LIST_MEMBER_ADDED;
        aclone[13] = USER_LIST_MEMBER_DELETED;
        aclone[14] = USER_LIST_SUBSCRIBED;
        aclone[15] = USER_LIST_UNSUBSCRIBED;
        aclone[16] = USER_LIST_CREATED;
        aclone[17] = USER_LIST_UPDATED;
        aclone[18] = USER_LIST_DESTROYED;
        aclone[19] = USER_UPDATE;
        aclone[20] = BLOCK;
        aclone[21] = UNBLOCK;
        aclone[22] = DISCONNECTION;
        aclone[23] = UNKNOWN;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
