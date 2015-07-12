// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


// Referenced classes of package com.mopub.mobileads:
//            ba

class az extends ba
{

    private final MraidView.PlacementType a;

    az(MraidView.PlacementType placementtype)
    {
        a = placementtype;
    }

    public static az createWithType(MraidView.PlacementType placementtype)
    {
        return new az(placementtype);
    }

    public String toJsonPair()
    {
        return (new StringBuilder()).append("placementType: '").append(a.toString().toLowerCase()).append("'").toString();
    }
}
