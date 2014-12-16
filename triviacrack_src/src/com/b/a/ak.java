// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.widget.ImageView;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.b.a:
//            aj, aa, ai, au, 
//            ag, j, ae, f, 
//            t, ap, aq, s, 
//            k, d, ar

public class ak
{

    private static int a = 0;
    private final aa b;
    private final aj c;
    private boolean d;
    private boolean e;
    private boolean f;
    private int g;
    private int h;
    private Drawable i;
    private Drawable j;

    ak()
    {
        b = null;
        c = new aj(null, 0);
    }

    ak(aa aa1, Uri uri, int l)
    {
        if (aa1.l)
        {
            throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
        } else
        {
            b = aa1;
            c = new aj(uri, l);
            return;
        }
    }

    private ai a(long l)
    {
        int i1 = e();
        ai ai1 = c.c();
        ai1.a = i1;
        ai1.b = l;
        boolean flag = b.k;
        if (flag)
        {
            au.a("Main", "created", ai1.b(), ai1.toString());
        }
        ai ai2 = b.a(ai1);
        if (ai2 != ai1)
        {
            ai2.a = i1;
            ai2.b = l;
            if (flag)
            {
                au.a("Main", "changed", ai2.a(), (new StringBuilder()).append("into ").append(ai2).toString());
            }
        }
        return ai2;
    }

    static int d()
    {
        return e();
    }

    private static int e()
    {
        if (au.c())
        {
            int l = a;
            a = l + 1;
            return l;
        }
        CountDownLatch countdownlatch = new CountDownLatch(1);
        AtomicInteger atomicinteger = new AtomicInteger();
        aa.a.post(new Runnable(atomicinteger, countdownlatch) {

            final AtomicInteger a;
            final CountDownLatch b;

            public void run()
            {
                a.set(ak.d());
                b.countDown();
            }

            
            {
                a = atomicinteger;
                b = countdownlatch;
                super();
            }
        });
        try
        {
            countdownlatch.await();
        }
        catch (InterruptedException interruptedexception)
        {
            aa.a.post(new Runnable(interruptedexception) {

                final InterruptedException a;

                public void run()
                {
                    throw new RuntimeException(a);
                }

            
            {
                a = interruptedexception;
                super();
            }
            });
        }
        return atomicinteger.get();
    }

    ak a()
    {
        f = false;
        return this;
    }

    public ak a(int l)
    {
        if (l == 0)
        {
            throw new IllegalArgumentException("Placeholder image resource invalid.");
        }
        if (i != null)
        {
            throw new IllegalStateException("Placeholder image already set.");
        } else
        {
            g = l;
            return this;
        }
    }

    public ak a(int l, int i1)
    {
        c.a(l, i1);
        return this;
    }

    public ak a(ar ar)
    {
        c.a(ar);
        return this;
    }

    public void a(ImageView imageview)
    {
        a(imageview, ((f) (null)));
    }

    public void a(ImageView imageview, f f1)
    {
        long l;
        l = System.nanoTime();
        au.b();
        if (imageview == null)
        {
            throw new IllegalArgumentException("Target must not be null.");
        }
        if (c.a()) goto _L2; else goto _L1
_L1:
        b.a(imageview);
        ag.a(imageview, g, i);
_L4:
        return;
_L2:
        ai ai1;
        String s1;
        if (f)
        {
            if (c.b())
            {
                throw new IllegalStateException("Fit cannot be used with resize.");
            }
            int i1 = imageview.getWidth();
            int j1 = imageview.getHeight();
            if (i1 == 0 || j1 == 0)
            {
                ag.a(imageview, g, i);
                b.a(imageview, new j(this, imageview, f1));
                return;
            }
            c.a(i1, j1);
        }
        ai1 = a(l);
        s1 = au.a(ai1);
        if (d)
        {
            break; /* Loop/switch isn't completed */
        }
        Bitmap bitmap = b.b(s1);
        if (bitmap == null)
        {
            break; /* Loop/switch isn't completed */
        }
        b.a(imageview);
        ag.a(imageview, b.c, bitmap, ae.a, e, b.j);
        if (b.k)
        {
            au.a("Main", "completed", ai1.b(), (new StringBuilder()).append("from ").append(ae.a).toString());
        }
        if (f1 != null)
        {
            f1.a();
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        ag.a(imageview, g, i);
        t t1 = new t(b, imageview, ai1, d, e, h, j, s1, f1);
        b.a(t1);
        return;
    }

    public void a(ap ap1)
    {
        long l = System.nanoTime();
        au.b();
        if (ap1 == null)
        {
            throw new IllegalArgumentException("Target must not be null.");
        }
        if (f)
        {
            throw new IllegalStateException("Fit cannot be used with a Target.");
        }
        Drawable drawable;
        if (g != 0)
        {
            drawable = b.c.getResources().getDrawable(g);
        } else
        {
            drawable = i;
        }
        if (!c.a())
        {
            b.a(ap1);
            ap1.b(drawable);
            return;
        }
        ai ai1 = a(l);
        String s1 = au.a(ai1);
        if (!d)
        {
            Bitmap bitmap = b.b(s1);
            if (bitmap != null)
            {
                b.a(ap1);
                ap1.a(bitmap, ae.a);
                return;
            }
        }
        ap1.b(drawable);
        aq aq1 = new aq(b, ap1, ai1, d, h, j, s1);
        b.a(aq1);
    }

    public ak b()
    {
        e = true;
        return this;
    }

    public ak b(int l)
    {
        if (l == 0)
        {
            throw new IllegalArgumentException("Error image resource invalid.");
        }
        if (j != null)
        {
            throw new IllegalStateException("Error image already set.");
        } else
        {
            h = l;
            return this;
        }
    }

    public Bitmap c()
    {
        long l = System.nanoTime();
        au.a();
        if (f)
        {
            throw new IllegalStateException("Fit cannot be used with get.");
        }
        if (!c.a())
        {
            return null;
        } else
        {
            ai ai1 = a(l);
            String s1 = au.a(ai1, new StringBuilder());
            s s2 = new s(b, ai1, d, s1);
            return com.b.a.d.a(b.c, b, b.d, b.e, b.f, s2, b.d.d).b();
        }
    }

}
