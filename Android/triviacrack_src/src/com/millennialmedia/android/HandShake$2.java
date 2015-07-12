// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import java.lang.ref.WeakReference;

// Referenced classes of package com.millennialmedia.android:
//            HandShake

class a
    implements Runnable
{

    final HandShake a;

    public void run()
    {
        Context context = (Context)HandShake.a(a).get();
        if (context == null)
        {
            context = (Context)HandShake.b(a).get();
        }
        if (context != null)
        {
            HandShake.a(context);
        }
    }

    (HandShake handshake)
    {
        a = handshake;
        super();
    }
}
