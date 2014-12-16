// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.commons;


// Referenced classes of package com.lifestreet.android.lsmsdk.commons:
//            AsyncHttpTaskResponse

public interface AsyncHttpTaskListener
{

    public abstract void onAsyncHttpTaskCompleted(AsyncHttpTaskResponse asynchttptaskresponse);

    public abstract void onAsyncHttpTaskFailed(String s, Throwable throwable);

    public abstract boolean shouldCancelAsyncHttpTask();
}
