// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.view.MotionEvent;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

// Referenced classes of package com.google.android.gms.internal:
//            gw, fw, fp, fx, 
//            jd, ew, ii

final class jc
    implements gw, Runnable
{

    private final List a = new Vector();
    private final CountDownLatch b = new CountDownLatch(1);
    private final AtomicReference c = new AtomicReference();
    private jd d;

    public jc(jd jd1)
    {
        d = jd1;
        if (fw.b())
        {
            fp.a(this);
            return;
        } else
        {
            run();
            return;
        }
    }

    private void a()
    {
        try
        {
            b.await();
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            fx.c("Interrupted during GADSignals creation.", interruptedexception);
        }
    }

    private void b()
    {
        if (!a.isEmpty())
        {
            Iterator iterator = a.iterator();
            while (iterator.hasNext()) 
            {
                Object aobj[] = (Object[])iterator.next();
                if (aobj.length == 1)
                {
                    ((gw)c.get()).a((MotionEvent)aobj[0]);
                } else
                if (aobj.length == 3)
                {
                    ((gw)c.get()).a(((Integer)aobj[0]).intValue(), ((Integer)aobj[1]).intValue(), ((Integer)aobj[2]).intValue());
                }
            }
        }
    }

    public String a(Context context)
    {
        a();
        b();
        return ((gw)c.get()).a(context);
    }

    public String a(Context context, String s)
    {
        a();
        b();
        return ((gw)c.get()).a(context, s);
    }

    public void a(int i, int j, int k)
    {
        gw gw1 = (gw)c.get();
        if (gw1 != null)
        {
            b();
            gw1.a(i, j, k);
            return;
        } else
        {
            List list = a;
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(i);
            aobj[1] = Integer.valueOf(j);
            aobj[2] = Integer.valueOf(k);
            list.add(((Object) (aobj)));
            return;
        }
    }

    public void a(MotionEvent motionevent)
    {
        gw gw1 = (gw)c.get();
        if (gw1 != null)
        {
            b();
            gw1.a(motionevent);
            return;
        } else
        {
            a.add(((Object) (new Object[] {
                motionevent
            })));
            return;
        }
    }

    public void run()
    {
        c.set(ii.a(d.e.b, d.c));
        b.countDown();
        d = null;
        return;
        Exception exception;
        exception;
        b.countDown();
        d = null;
        throw exception;
    }
}
