// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.net.Uri;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            al, ak, im, fx, 
//            fz, ik, fv, ew

final class 
    implements al
{

    public void a(fz fz1, Map map)
    {
        String s;
        Uri uri;
        s = (String)map.get("u");
        if (s == null)
        {
            fx.e("URL missing from click GMSG.");
            return;
        }
        uri = Uri.parse(s);
        ik ik1 = fz1.g();
        if (ik1 == null) goto _L2; else goto _L1
_L1:
        if (!ik1.a(uri)) goto _L2; else goto _L3
_L3:
        Uri uri2 = ik1.a(uri, fz1.getContext());
        Uri uri1 = uri2;
_L5:
        String s1 = uri1.toString();
        (new fv(fz1.getContext(), fz1.h().b, s1)).e();
        return;
        im im1;
        im1;
        fx.e((new StringBuilder()).append("Unable to append parameter to URL: ").append(s).toString());
_L2:
        uri1 = uri;
        if (true) goto _L5; else goto _L4
_L4:
    }

    ()
    {
    }
}
