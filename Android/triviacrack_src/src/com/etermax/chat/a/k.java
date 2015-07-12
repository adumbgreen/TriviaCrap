// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.a;

import java.util.Date;

public class k
{

    com.etermax.gamescommon.datasource.dto.MessageDTO.Application a;
    com.etermax.gamescommon.datasource.dto.MessageDTO.EventType b;
    com.etermax.gamescommon.datasource.dto.MessageDTO.EndedReason c;
    Long d;
    Long e;
    Date f;
    String g;

    public k()
    {
    }

    public com.etermax.gamescommon.datasource.dto.MessageDTO.Application a()
    {
        return a;
    }

    public void a(com.etermax.gamescommon.datasource.dto.MessageDTO.Application application)
    {
        a = application;
    }

    public void a(com.etermax.gamescommon.datasource.dto.MessageDTO.EndedReason endedreason)
    {
        c = endedreason;
    }

    public void a(com.etermax.gamescommon.datasource.dto.MessageDTO.EventType eventtype)
    {
        b = eventtype;
    }

    public void a(Long long1)
    {
        d = long1;
    }

    public void a(String s)
    {
        g = s;
    }

    public void a(Date date)
    {
        f = date;
    }

    public com.etermax.gamescommon.datasource.dto.MessageDTO.EventType b()
    {
        return b;
    }

    public void b(Long long1)
    {
        e = long1;
    }

    public com.etermax.gamescommon.datasource.dto.MessageDTO.EndedReason c()
    {
        return c;
    }

    public Long d()
    {
        return d;
    }

    public Long e()
    {
        return e;
    }

    public String f()
    {
        return g;
    }
}
