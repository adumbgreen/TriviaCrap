// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.a;

// Referenced classes of package com.google.android.gms.internal:
//            gy, hb, hh

final class ha extends Handler
{

    final gy a;

    public ha(gy gy1, Looper looper)
    {
        a = gy1;
        super(looper);
    }

    public void handleMessage(Message message)
    {
        if (message.what == 1 && !a.h())
        {
            hb hb2 = (hb)message.obj;
            hb2.a();
            hb2.c();
            return;
        }
        if (message.what == 3)
        {
            com.google.android.gms.internal.gy.a(a).a(new a(((Integer)message.obj).intValue(), null));
            return;
        }
        if (message.what == 4)
        {
            com.google.android.gms.internal.gy.a(a, 1);
            com.google.android.gms.internal.gy.a(a, null);
            com.google.android.gms.internal.gy.a(a).a(((Integer)message.obj).intValue());
            return;
        }
        if (message.what == 2 && !a.g())
        {
            hb hb1 = (hb)message.obj;
            hb1.a();
            hb1.c();
            return;
        }
        if (message.what == 2 || message.what == 1)
        {
            ((hb)message.obj).b();
            return;
        } else
        {
            Log.wtf("GmsClient", "Don't know how to handle this message.");
            return;
        }
    }
}
