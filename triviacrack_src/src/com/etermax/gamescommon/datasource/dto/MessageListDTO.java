// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.dto;

import java.util.List;

public class MessageListDTO
{

    private boolean isBlocked;
    private boolean isFriend;
    private String lastSeen;
    private List list;
    private boolean more;
    private long opponentFacebookId;
    private boolean userIsBlocked;

    public MessageListDTO()
    {
        opponentFacebookId = -1L;
    }

    public String getLastSeen()
    {
        return lastSeen;
    }

    public List getList()
    {
        return list;
    }

    public long getOpponentFacebookId()
    {
        return opponentFacebookId;
    }

    public boolean isBlocked()
    {
        return isBlocked;
    }

    public boolean isFriend()
    {
        return isFriend;
    }

    public boolean isMore()
    {
        return more;
    }

    public boolean isUserIsBlocked()
    {
        return userIsBlocked;
    }
}
