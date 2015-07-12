// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.factories;

import com.mopub.mobileads.AdFetchTask;
import com.mopub.mobileads.AdViewController;
import com.mopub.mobileads.TaskTracker;

public class AdFetchTaskFactory
{

    protected static AdFetchTaskFactory a = new AdFetchTaskFactory();

    public AdFetchTaskFactory()
    {
    }

    public static AdFetchTask create(TaskTracker tasktracker, AdViewController adviewcontroller, String s, int i)
    {
        return a.a(tasktracker, adviewcontroller, s, i);
    }

    public static void setInstance(AdFetchTaskFactory adfetchtaskfactory)
    {
        a = adfetchtaskfactory;
    }

    protected AdFetchTask a(TaskTracker tasktracker, AdViewController adviewcontroller, String s, int i)
    {
        return new AdFetchTask(tasktracker, adviewcontroller, s, i);
    }

}
