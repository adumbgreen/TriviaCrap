// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.List;

// Referenced classes of package com.b.a:
//            aa, d, a

final class oper extends Handler
{

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            throw new AssertionError((new StringBuilder()).append("Unknown handler message received: ").append(message.what).toString());

        case 8: // '\b'
            List list = (List)message.obj;
            int i = list.size();
            for (int j = 0; j < i; j++)
            {
                d d1 = (d)list.get(j);
                d1.a.a(d1);
            }

            break;

        case 3: // '\003'
            a a1 = (a)message.obj;
            aa.a(a1.a, a1.d());
            break;
        }
    }

    oper(Looper looper)
    {
        super(looper);
    }
}
