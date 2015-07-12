// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            af, MraidView, aw

class av extends af
{

    av(Map map, MraidView mraidview)
    {
        super(map, mraidview);
    }

    void a()
    {
        boolean flag = c("shouldUseCustomClose");
        b.getDisplayController().b(flag);
    }
}
