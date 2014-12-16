// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.dto;

import java.util.List;

public class MessagingPanelDTO
{

    List friends;
    boolean hasMoreFriends;
    boolean hasMoreSuggested;
    List suggested;

    public MessagingPanelDTO()
    {
    }

    public List getFriends()
    {
        return friends;
    }

    public List getSuggested()
    {
        return suggested;
    }

    public boolean hasMoreFriends()
    {
        return hasMoreFriends;
    }

    public boolean hasMoreSuggested()
    {
        return hasMoreSuggested;
    }

    public void setFriends(List list)
    {
        friends = list;
    }

    public void setHasMoreFriends(boolean flag)
    {
        hasMoreFriends = flag;
    }

    public void setHasMoreSuggested(boolean flag)
    {
        hasMoreSuggested = flag;
    }

    public void setSuggested(List list)
    {
        suggested = list;
    }
}
