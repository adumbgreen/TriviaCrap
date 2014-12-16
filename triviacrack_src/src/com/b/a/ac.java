// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.os.Handler;
import android.os.Process;
import java.lang.ref.ReferenceQueue;

// Referenced classes of package com.b.a:
//            b

class ac extends Thread
{

    private final ReferenceQueue a;
    private final Handler b;

    ac(ReferenceQueue referencequeue, Handler handler)
    {
        a = referencequeue;
        b = handler;
        setDaemon(true);
        setName("Picasso-refQueue");
    }

    public void run()
    {
        Process.setThreadPriority(10);
        try
        {
            do
            {
                b b1 = (b)a.remove();
                b.sendMessage(b.obtainMessage(3, b1.a));
            } while (true);
        }
        catch (InterruptedException interruptedexception)
        {
            return;
        }
        catch (Exception exception)
        {
            b.post(new Runnable(exception) {

                final Exception a;
                final ac b;

                public void run()
                {
                    throw new RuntimeException(a);
                }

            
            {
                b = ac.this;
                a = exception;
                super();
            }
            });
        }
    }
}
