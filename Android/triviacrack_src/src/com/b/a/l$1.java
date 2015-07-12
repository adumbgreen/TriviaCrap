// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.os.Message;

// Referenced classes of package com.b.a:
//            l

class ject
    implements Runnable
{

    final Message a;
    final l b;

    public void run()
    {
        throw new AssertionError((new StringBuilder()).append("Unknown handler message received: ").append(a.what).toString());
    }

    essage(l l1, Message message)
    {
        b = l1;
        a = message;
        super();
    }
}
