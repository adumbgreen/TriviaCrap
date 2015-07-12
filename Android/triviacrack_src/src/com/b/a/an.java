// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

// Referenced classes of package com.b.a:
//            aa, am

class an extends Handler
{

    private final am a;

    public an(Looper looper, am am1)
    {
        super(looper);
        a = am1;
    }

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            aa.a.post(new Runnable(message) {

                final Message a;
                final an b;

                public void run()
                {
                    throw new AssertionError((new StringBuilder()).append("Unhandled stats message.").append(a.what).toString());
                }

            
            {
                b = an.this;
                a = message;
                super();
            }
            });
            return;

        case 0: // '\0'
            a.c();
            return;

        case 1: // '\001'
            a.d();
            return;

        case 2: // '\002'
            a.b(message.arg1);
            return;

        case 3: // '\003'
            a.c(message.arg1);
            return;

        case 4: // '\004'
            a.a((Long)message.obj);
            break;
        }
    }
}
