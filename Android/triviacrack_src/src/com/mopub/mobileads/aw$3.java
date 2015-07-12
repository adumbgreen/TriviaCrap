// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.widget.Toast;

// Referenced classes of package com.mopub.mobileads:
//            aw

class a
    implements Runnable
{

    final String a;
    final aw b;

    public void run()
    {
        Toast.makeText(aw.a(b), a, 0).show();
    }

    (aw aw1, String s)
    {
        b = aw1;
        a = s;
        super();
    }
}
