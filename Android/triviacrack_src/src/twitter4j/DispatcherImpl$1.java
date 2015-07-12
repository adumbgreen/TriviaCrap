// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.util.concurrent.ThreadFactory;
import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            DispatcherImpl

class count
    implements ThreadFactory
{

    int count;
    final DispatcherImpl this$0;
    final Configuration val$conf;

    public Thread newThread(Runnable runnable)
    {
        Thread thread = new Thread(runnable);
        Object aobj[] = new Object[1];
        int i = count;
        count = i + 1;
        aobj[0] = Integer.valueOf(i);
        thread.setName(String.format("Twitter4J Async Dispatcher[%d]", aobj));
        thread.setDaemon(val$conf.isDaemonEnabled());
        return thread;
    }

    n()
    {
        this$0 = final_dispatcherimpl;
        val$conf = Configuration.this;
        super();
        count = 0;
    }
}
