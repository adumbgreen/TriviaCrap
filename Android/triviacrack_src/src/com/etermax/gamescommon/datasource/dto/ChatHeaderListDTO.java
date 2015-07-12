// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.dto;

import java.util.List;

public class ChatHeaderListDTO
{

    List chat_headers;
    boolean has_more;

    public ChatHeaderListDTO()
    {
    }

    public List getChatHeaders()
    {
        return chat_headers;
    }

    public boolean hasMore()
    {
        return has_more;
    }

    public void setChatHeaders(List list)
    {
        chat_headers = list;
    }

    public void setHasMore(boolean flag)
    {
        has_more = flag;
    }
}
