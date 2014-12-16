// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


public class TaskTracker
{

    private long a;
    private long b;

    public TaskTracker()
    {
        a = -1L;
    }

    public long getCurrentTaskId()
    {
        return a;
    }

    public boolean isMostCurrentTask(long l)
    {
        return l >= b;
    }

    public void markTaskCompleted(long l)
    {
        if (l > b)
        {
            b = l;
        }
    }

    public void newTaskStarted()
    {
        a = 1L + a;
    }
}
