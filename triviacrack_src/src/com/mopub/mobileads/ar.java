// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            af, MraidView, aw, ak

class ar extends af
{

    public ar(Map map, MraidView mraidview)
    {
        super(map, mraidview);
    }

    void a()
    {
        String s = b("uri");
        if (s != null && !s.equals(""))
        {
            b.getDisplayController().b(s);
            return;
        } else
        {
            b.a(ak.PLAY_VIDEO, "Video can't be played with null or empty URL");
            return;
        }
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
