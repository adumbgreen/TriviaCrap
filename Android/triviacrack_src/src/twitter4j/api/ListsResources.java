// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j.api;

import twitter4j.PagableResponseList;
import twitter4j.Paging;
import twitter4j.ResponseList;
import twitter4j.User;
import twitter4j.UserList;

public interface ListsResources
{

    public abstract UserList createUserList(String s, boolean flag, String s1);

    public abstract UserList createUserListMember(long l, long l1);

    public abstract UserList createUserListMember(long l, String s, long l1);

    public abstract UserList createUserListMember(String s, String s1, long l);

    public abstract UserList createUserListMembers(long l, String s, long al[]);

    public abstract UserList createUserListMembers(long l, String s, String as[]);

    public abstract UserList createUserListMembers(long l, long al[]);

    public abstract UserList createUserListMembers(long l, String as[]);

    public abstract UserList createUserListMembers(String s, String s1, long al[]);

    public abstract UserList createUserListMembers(String s, String s1, String as[]);

    public abstract UserList createUserListSubscription(long l);

    public abstract UserList createUserListSubscription(long l, String s);

    public abstract UserList createUserListSubscription(String s, String s1);

    public abstract UserList destroyUserList(long l);

    public abstract UserList destroyUserList(long l, String s);

    public abstract UserList destroyUserList(String s, String s1);

    public abstract UserList destroyUserListMember(long l, long l1);

    public abstract UserList destroyUserListMember(long l, String s);

    public abstract UserList destroyUserListMember(long l, String s, long l1);

    public abstract UserList destroyUserListMember(String s, String s1, long l);

    public abstract UserList destroyUserListMembers(long l, long al[]);

    public abstract UserList destroyUserListMembers(long l, String as[]);

    public abstract UserList destroyUserListMembers(String s, String s1, String as[]);

    public abstract UserList destroyUserListSubscription(long l);

    public abstract UserList destroyUserListSubscription(long l, String s);

    public abstract UserList destroyUserListSubscription(String s, String s1);

    public abstract PagableResponseList getUserListMembers(long l, long l1);

    public abstract PagableResponseList getUserListMembers(long l, String s, long l1);

    public abstract PagableResponseList getUserListMembers(String s, String s1, long l);

    public abstract PagableResponseList getUserListMemberships(long l);

    public abstract PagableResponseList getUserListMemberships(long l, long l1);

    public abstract PagableResponseList getUserListMemberships(long l, long l1, boolean flag);

    public abstract PagableResponseList getUserListMemberships(String s, long l);

    public abstract PagableResponseList getUserListMemberships(String s, long l, boolean flag);

    public abstract ResponseList getUserListStatuses(long l, String s, Paging paging);

    public abstract ResponseList getUserListStatuses(long l, Paging paging);

    public abstract ResponseList getUserListStatuses(String s, String s1, Paging paging);

    public abstract PagableResponseList getUserListSubscribers(long l, long l1);

    public abstract PagableResponseList getUserListSubscribers(long l, String s, long l1);

    public abstract PagableResponseList getUserListSubscribers(String s, String s1, long l);

    public abstract PagableResponseList getUserListSubscriptions(String s, long l);

    public abstract ResponseList getUserLists(long l);

    public abstract ResponseList getUserLists(String s);

    public abstract PagableResponseList getUserListsOwnerships(long l, int i, long l1);

    public abstract PagableResponseList getUserListsOwnerships(String s, int i, long l);

    public abstract UserList showUserList(long l);

    public abstract UserList showUserList(long l, String s);

    public abstract UserList showUserList(String s, String s1);

    public abstract User showUserListMembership(long l, long l1);

    public abstract User showUserListMembership(long l, String s, long l1);

    public abstract User showUserListMembership(String s, String s1, long l);

    public abstract User showUserListSubscription(long l, long l1);

    public abstract User showUserListSubscription(long l, String s, long l1);

    public abstract User showUserListSubscription(String s, String s1, long l);

    public abstract UserList updateUserList(long l, String s, String s1, boolean flag, String s2);

    public abstract UserList updateUserList(long l, String s, boolean flag, String s1);

    public abstract UserList updateUserList(String s, String s1, String s2, boolean flag, String s3);
}
