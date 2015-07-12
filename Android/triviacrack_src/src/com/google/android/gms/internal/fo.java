// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            fp

public abstract class fo
{

    private final Runnable a = new Runnable() {

        final fo a;

        public final void run()
        {
            fo.a(a, Thread.currentThread());
            a.a();
        }

            
            {
                a = fo.this;
                super();
            }
    };
    private volatile Thread b;

    public fo()
    {
    }

    static Thread a(fo fo1, Thread thread)
    {
        fo1.b = thread;
        return thread;
    }

    public abstract void a();

    public abstract void b();

    public final void e()
    {
        fp.a(a);
    }

    public final void f()
    {
        b();
        if (b != null)
        {
            b.interrupt();
        }
    }
}
