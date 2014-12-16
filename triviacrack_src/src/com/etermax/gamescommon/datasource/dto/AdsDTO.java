// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.dto;

import java.util.List;

public class AdsDTO
{

    private long lastUpdateTime;
    private List mediationconf;
    private int ttl;

    public AdsDTO()
    {
        ttl = 0x15180;
    }

    public long getLastUpdateTime()
    {
        return lastUpdateTime;
    }

    public List getMediationconf()
    {
        return mediationconf;
    }

    public int getTtl()
    {
        return ttl;
    }

    public void setLastUpdateTime(long l)
    {
        lastUpdateTime = l;
    }
}
