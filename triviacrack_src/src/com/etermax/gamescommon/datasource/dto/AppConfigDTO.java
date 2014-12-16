// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.dto;


public class AppConfigDTO
{

    private int friendsPanelChatsTTL;
    private int friendsPanelFriendsTTL;
    private int suggestedMaxSize;
    private int version;

    public AppConfigDTO()
    {
        friendsPanelFriendsTTL = 300;
        friendsPanelChatsTTL = 300;
        suggestedMaxSize = 600;
    }

    public int getFriendsPanelChatsTTL()
    {
        return friendsPanelChatsTTL;
    }

    public int getFriendsPanelFriendsTTL()
    {
        return friendsPanelFriendsTTL;
    }

    public int getVersion()
    {
        return version;
    }
}
