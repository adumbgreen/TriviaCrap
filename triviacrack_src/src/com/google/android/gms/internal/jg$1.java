// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

// Referenced classes of package com.google.android.gms.internal:
//            jg, ja

class a
    implements Runnable
{

    final ja a;
    final jg b;
    private final WeakReference c;

    public void run()
    {
        jg.a(b, false);
        ja ja1 = (ja)c.get();
        if (ja1 != null)
        {
            ja1.b(jg.a(b));
        }
    }

    (jg jg1, ja ja1)
    {
        b = jg1;
        a = ja1;
        super();
        c = new WeakReference(a);
    }
}
