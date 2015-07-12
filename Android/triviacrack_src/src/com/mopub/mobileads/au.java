// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import com.mopub.common.logging.MoPubLog;
import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            af, MraidView, aw, ak

class au extends af
{

    public static final String MIME_TYPE_HEADER = "Content-Type";

    public au(Map map, MraidView mraidview)
    {
        super(map, mraidview);
    }

    void a()
    {
        String s = b("uri");
        if (s != null && !s.equals(""))
        {
            b.getDisplayController().a(s);
            return;
        } else
        {
            b.a(ak.STORE_PICTURE, "Image can't be stored with null or empty URL");
            MoPubLog.d("Invalid URI for Mraid Store Picture.");
            return;
        }
    }

    protected boolean a(MraidView.PlacementType placementtype)
    {
        return true;
    }
}
