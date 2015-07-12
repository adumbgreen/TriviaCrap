// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            af, ak, MraidView, z

class aq extends af
{

    aq(Map map, MraidView mraidview)
    {
        super(map, mraidview);
    }

    void a()
    {
        String s = b("url");
        if (s == null)
        {
            b.a(ak.OPEN, "Url can not be null.");
            return;
        } else
        {
            b.getBrowserController().a(s);
            return;
        }
    }

    protected boolean a(MraidView.PlacementType placementtype)
    {
        return true;
    }
}
