// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

// Referenced classes of package com.b.a:
//            aa, a, k, d

class l extends Handler
{

    private final k a;

    public l(Looper looper, k k1)
    {
        super(looper);
        a = k1;
    }

    public void handleMessage(Message message)
    {
        boolean flag = true;
        k k1;
        switch (message.what)
        {
        case 3: // '\003'
        case 8: // '\b'
        default:
            aa.a.post(new Runnable(message) {

                final Message a;
                final l b;

                public void run()
                {
                    throw new AssertionError((new StringBuilder()).append("Unknown handler message received: ").append(a.what).toString());
                }

            
            {
                b = l.this;
                a = message;
                super();
            }
            });
            return;

        case 1: // '\001'
            a a2 = (a)message.obj;
            a.c(a2);
            return;

        case 2: // '\002'
            a a1 = (a)message.obj;
            a.d(a1);
            return;

        case 4: // '\004'
            d d3 = (d)message.obj;
            a.e(d3);
            return;

        case 5: // '\005'
            d d2 = (d)message.obj;
            a.d(d2);
            return;

        case 6: // '\006'
            d d1 = (d)message.obj;
            a.a(d1, false);
            return;

        case 7: // '\007'
            a.a();
            return;

        case 9: // '\t'
            NetworkInfo networkinfo = (NetworkInfo)message.obj;
            a.b(networkinfo);
            return;

        case 10: // '\n'
            k1 = a;
            break;
        }
        if (message.arg1 != flag)
        {
            flag = false;
        }
        k1.b(flag);
    }
}
