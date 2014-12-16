// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.commons;


// Referenced classes of package com.lifestreet.android.lsmsdk.commons:
//            AsyncHttpTask, AsyncHttpTaskListener

class val.throwable
    implements Runnable
{

    final AsyncHttpTask this$0;
    final String val$message;
    final Throwable val$throwable;

    public void run()
    {
        AsyncHttpTaskListener asynchttptasklistener = AsyncHttpTask.access$000(AsyncHttpTask.this);
        if (asynchttptasklistener != null)
        {
            asynchttptasklistener.onAsyncHttpTaskFailed(val$message, val$throwable);
        }
    }

    tener()
    {
        this$0 = final_asynchttptask;
        val$message = s;
        val$throwable = Throwable.this;
        super();
    }
}
