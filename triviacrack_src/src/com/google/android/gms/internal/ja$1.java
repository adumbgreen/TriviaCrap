// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ComponentCallbacks;
import android.content.res.Configuration;

// Referenced classes of package com.google.android.gms.internal:
//            ja, jd, fg, fz

class a
    implements ComponentCallbacks
{

    final ja a;

    public void onConfigurationChanged(Configuration configuration)
    {
        if (ja.a(a) != null && ja.a(a).i != null && ja.a(a).i.b != null)
        {
            ja.a(a).i.b.a();
        }
    }

    public void onLowMemory()
    {
    }

    (ja ja1)
    {
        a = ja1;
        super();
    }
}
