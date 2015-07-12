// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import java.util.concurrent.ThreadFactory;

// Referenced classes of package com.b.a:
//            ay

class az
    implements ThreadFactory
{

    az()
    {
    }

    public Thread newThread(Runnable runnable)
    {
        return new ay(runnable);
    }
}
