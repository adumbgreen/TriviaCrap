// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.os.Process;

class ay extends Thread
{

    public ay(Runnable runnable)
    {
        super(runnable);
    }

    public void run()
    {
        Process.setThreadPriority(10);
        super.run();
    }
}
