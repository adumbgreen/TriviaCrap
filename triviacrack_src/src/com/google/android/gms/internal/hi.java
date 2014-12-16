// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.c;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.internal:
//            hh, hj

final class hi extends Handler
{

    final hh a;

    public hi(hh hh1, Looper looper)
    {
        a = hh1;
        super(looper);
    }

    public void handleMessage(Message message)
    {
        if (message.what == 1)
        {
            synchronized (hh.a(a))
            {
                if (hh.b(a).n() && hh.b(a).g() && hh.a(a).contains(message.obj))
                {
                    android.os.Bundle bundle = hh.b(a).l();
                    ((c)message.obj).a(bundle);
                }
            }
            return;
        } else
        {
            Log.wtf("GmsClientEvents", "Don't know how to handle this message.");
            return;
        }
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
