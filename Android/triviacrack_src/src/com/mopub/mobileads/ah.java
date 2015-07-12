// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            af, MraidView, aw

class ah extends af
{

    ah(Map map, MraidView mraidview)
    {
        super(map, mraidview);
    }

    void a()
    {
        b.getDisplayController().a(a);
    }

    protected boolean a(MraidView.PlacementType placementtype)
    {
        return true;
    }
}
