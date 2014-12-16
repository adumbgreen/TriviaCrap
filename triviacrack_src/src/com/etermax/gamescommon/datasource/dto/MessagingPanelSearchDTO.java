// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.dto;

import java.util.List;

public class MessagingPanelSearchDTO
{

    List chat_headers;
    List friends;
    boolean searchingOnServer;
    List suggested_users;

    public MessagingPanelSearchDTO()
    {
    }

    public List getChatHeaders()
    {
        return chat_headers;
    }

    public List getFriends()
    {
        return friends;
    }

    public List getSuggested()
    {
        return suggested_users;
    }

    public boolean isSearchingOnServer()
    {
        return searchingOnServer;
    }

    public void setChatHeaders(List list)
    {
        chat_headers = list;
    }

    public void setFriends(List list)
    {
        friends = list;
    }

    public void setSearchingOnServer(boolean flag)
    {
        searchingOnServer = flag;
    }

    public void setSuggested(List list)
    {
        suggested_users = list;
    }
}
