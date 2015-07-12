// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.os.Message;

// Referenced classes of package com.b.a:
//            an

class ect
    implements Runnable
{

    final Message a;
    final an b;

    public void run()
    {
        throw new AssertionError((new StringBuilder()).append("Unhandled stats message.").append(a.what).toString());
    }

    ssage(an an1, Message message)
    {
        b = an1;
        a = message;
        super();
    }
}
