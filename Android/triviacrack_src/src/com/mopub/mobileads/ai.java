// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            af, MraidView, aw

class ai extends af
{

    ai(Map map, MraidView mraidview)
    {
        super(map, mraidview);
    }

    void a()
    {
        int i = a("w");
        int j = a("h");
        String s = b("url");
        boolean flag = c("shouldUseCustomClose");
        boolean flag1 = c("lockOrientation");
        if (i <= 0)
        {
            i = b.getDisplayController().b;
        }
        if (j <= 0)
        {
            j = b.getDisplayController().c;
        }
        b.getDisplayController().a(s, i, j, flag, flag1);
    }

    protected boolean a(MraidView.PlacementType placementtype)
    {
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[MraidView.PlacementType.values().length];
                try
                {
                    a[MraidView.PlacementType.INLINE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[MraidView.PlacementType.INTERSTITIAL.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[placementtype.ordinal()])
        {
        default:
            return super.a(placementtype);

        case 1: // '\001'
            return true;

        case 2: // '\002'
            return false;
        }
    }
}
