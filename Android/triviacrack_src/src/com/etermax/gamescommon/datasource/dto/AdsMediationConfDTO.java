// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.dto;


// Referenced classes of package com.etermax.gamescommon.datasource.dto:
//            AdUnitDTO

public class AdsMediationConfDTO
{

    private AdUnitDTO ad_units[];
    private int weight;

    public AdsMediationConfDTO()
    {
    }

    public AdUnitDTO[] getAd_units()
    {
        return ad_units;
    }

    public int getWeight()
    {
        return weight;
    }
}
