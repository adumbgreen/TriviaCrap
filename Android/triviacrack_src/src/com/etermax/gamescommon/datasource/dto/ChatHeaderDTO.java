// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.dto;

import com.etermax.gamescommon.login.datasource.dto.UserDTO;

public class ChatHeaderDTO
{

    String lastText;
    Integer unreadCount;
    UserDTO user;

    public ChatHeaderDTO()
    {
    }

    public String getLastText()
    {
        return lastText;
    }

    public Integer getUnreadCount()
    {
        return unreadCount;
    }

    public UserDTO getUser()
    {
        return user;
    }

    public void setLastText(String s)
    {
        lastText = s;
    }

    public void setUnreadCount(Integer integer)
    {
        unreadCount = integer;
    }
}
