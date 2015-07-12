// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Handler;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;

// Referenced classes of package com.b.a:
//            a, ai, ar, aa, 
//            al, g, w, i, 
//            c, r, y, au, 
//            e, am, ae, q, 
//            k, ao, o

abstract class d
    implements Runnable
{

    private static final Object o = new Object();
    private static final ThreadLocal p = new ThreadLocal() {

        protected StringBuilder a()
        {
            return new StringBuilder("Picasso-");
        }

        protected Object initialValue()
        {
            return a();
        }

    };
    final aa a;
    final k b;
    final e c;
    final am d;
    final String e;
    final ai f;
    final boolean g;
    a h;
    List i;
    Bitmap j;
    Future k;
    ae l;
    Exception m;
    int n;

    d(aa aa1, k k1, e e1, am am1, a a1)
    {
        a = aa1;
        b = k1;
        c = e1;
        d = am1;
        e = a1.e();
        f = a1.c();
        g = a1.d;
        h = a1;
    }

    static Bitmap a(ai ai1, Bitmap bitmap, int i1)
    {
        int j1;
        int k1;
        int l1;
        Matrix matrix;
        j1 = 0;
        k1 = bitmap.getWidth();
        l1 = bitmap.getHeight();
        matrix = new Matrix();
        if (!ai1.f()) goto _L2; else goto _L1
_L1:
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        l2 = ai1.f;
        i3 = ai1.g;
        float f1 = ai1.j;
        Bitmap bitmap1;
        int k4;
        int l4;
        int i5;
        int j5;
        if (f1 != 0.0F)
        {
            if (ai1.m)
            {
                matrix.setRotate(f1, ai1.k, ai1.l);
            } else
            {
                matrix.setRotate(f1);
            }
        }
        if (!ai1.h) goto _L4; else goto _L3
_L3:
        float f4 = (float)l2 / (float)k1;
        float f5 = (float)i3 / (float)l1;
        int l3;
        int i4;
        int j4;
        if (f4 > f5)
        {
            l3 = (int)Math.ceil((float)l1 * (f5 / f4));
            i5 = (l1 - l3) / 2;
            j5 = k1;
            j4 = i5;
            i4 = j5;
        } else
        {
            int j3 = (int)Math.ceil((float)k1 * (f4 / f5));
            int k3 = (k1 - j3) / 2;
            l3 = l1;
            i4 = j3;
            f4 = f5;
            j1 = k3;
            j4 = 0;
        }
        matrix.preScale(f4, f4);
        k4 = l3;
        j2 = j1;
        i2 = k4;
        l4 = j4;
        k1 = i4;
        k2 = l4;
_L6:
        if (i1 != 0)
        {
            matrix.preRotate(i1);
        }
        bitmap1 = Bitmap.createBitmap(bitmap, j2, k2, k1, i2, matrix, true);
        if (bitmap1 != bitmap)
        {
            bitmap.recycle();
            bitmap = bitmap1;
        }
        return bitmap;
_L4:
        if (ai1.i)
        {
            float f2 = (float)l2 / (float)k1;
            float f3 = (float)i3 / (float)l1;
            if (f2 >= f3)
            {
                f2 = f3;
            }
            matrix.preScale(f2, f2);
            i2 = l1;
            j2 = 0;
            k2 = 0;
            continue; /* Loop/switch isn't completed */
        }
        if (l2 != 0 && i3 != 0 && (l2 != k1 || i3 != l1))
        {
            matrix.preScale((float)l2 / (float)k1, (float)i3 / (float)l1);
        }
_L2:
        i2 = l1;
        j2 = 0;
        k2 = 0;
        if (true) goto _L6; else goto _L5
_L5:
    }

    static Bitmap a(List list, Bitmap bitmap)
    {
        int i1 = list.size();
        int j1 = 0;
        Bitmap bitmap1;
        Bitmap bitmap2;
        for (bitmap1 = bitmap; j1 < i1; bitmap1 = bitmap2)
        {
            ar ar1 = (ar)list.get(j1);
            bitmap2 = ar1.a(bitmap1);
            if (bitmap2 == null)
            {
                StringBuilder stringbuilder = (new StringBuilder()).append("Transformation ").append(ar1.a()).append(" returned null after ").append(j1).append(" previous transformation(s).\n\nTransformation list:\n");
                for (Iterator iterator = list.iterator(); iterator.hasNext(); stringbuilder.append(((ar)iterator.next()).a()).append('\n')) { }
                aa.a.post(new Runnable(stringbuilder) {

                    final StringBuilder a;

                    public void run()
                    {
                        throw new NullPointerException(a.toString());
                    }

            
            {
                a = stringbuilder;
                super();
            }
                });
                return null;
            }
            if (bitmap2 == bitmap1 && bitmap1.isRecycled())
            {
                aa.a.post(new Runnable(ar1) {

                    final ar a;

                    public void run()
                    {
                        throw new IllegalStateException((new StringBuilder()).append("Transformation ").append(a.a()).append(" returned input Bitmap but recycled it.").toString());
                    }

            
            {
                a = ar1;
                super();
            }
                });
                return null;
            }
            if (bitmap2 != bitmap1 && !bitmap1.isRecycled())
            {
                aa.a.post(new Runnable(ar1) {

                    final ar a;

                    public void run()
                    {
                        throw new IllegalStateException((new StringBuilder()).append("Transformation ").append(a.a()).append(" mutated input Bitmap but failed to recycle the original.").toString());
                    }

            
            {
                a = ar1;
                super();
            }
                });
                return null;
            }
            j1++;
        }

        return bitmap1;
    }

    static d a(Context context, aa aa1, k k1, e e1, am am1, a a1, o o1)
    {
        if (a1.c().d != 0)
        {
            return new al(context, aa1, k1, e1, am1, a1);
        }
        Uri uri = a1.c().c;
        String s = uri.getScheme();
        if ("content".equals(s))
        {
            if (android.provider.ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && !uri.getPathSegments().contains("photo"))
            {
                return new g(context, aa1, k1, e1, am1, a1);
            }
            if ("media".equals(uri.getAuthority()))
            {
                return new w(context, aa1, k1, e1, am1, a1);
            } else
            {
                return new i(context, aa1, k1, e1, am1, a1);
            }
        }
        if ("file".equals(s))
        {
            if (!uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0)))
            {
                return new c(context, aa1, k1, e1, am1, a1);
            } else
            {
                return new r(context, aa1, k1, e1, am1, a1);
            }
        }
        if ("android.resource".equals(s))
        {
            return new al(context, aa1, k1, e1, am1, a1);
        } else
        {
            return new y(aa1, k1, e1, am1, a1, o1);
        }
    }

    static void a(int i1, int j1, int k1, int l1, android.graphics.BitmapFactory.Options options)
    {
        int i2 = 1;
        if (l1 > j1 || k1 > i1)
        {
            i2 = (int)Math.floor((float)l1 / (float)j1);
            int j2 = (int)Math.floor((float)k1 / (float)i1);
            if (i2 >= j2)
            {
                i2 = j2;
            }
        }
        options.inSampleSize = i2;
        options.inJustDecodeBounds = false;
    }

    static void a(int i1, int j1, android.graphics.BitmapFactory.Options options)
    {
        a(i1, j1, options.outWidth, options.outHeight, options);
    }

    static boolean a(android.graphics.BitmapFactory.Options options)
    {
        return options != null && options.inJustDecodeBounds;
    }

    static void b(ai ai1)
    {
        String s = ai1.c();
        StringBuilder stringbuilder = (StringBuilder)p.get();
        stringbuilder.ensureCapacity("Picasso-".length() + s.length());
        stringbuilder.replace("Picasso-".length(), stringbuilder.length(), s);
        Thread.currentThread().setName(stringbuilder.toString());
    }

    static android.graphics.BitmapFactory.Options c(ai ai1)
    {
label0:
        {
            boolean flag = ai1.d();
            boolean flag1;
            android.graphics.BitmapFactory.Options options;
            if (ai1.n != null)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (!flag)
            {
                options = null;
                if (!flag1)
                {
                    break label0;
                }
            }
            options = new android.graphics.BitmapFactory.Options();
            options.inJustDecodeBounds = flag;
            if (flag1)
            {
                options.inPreferredConfig = ai1.n;
            }
        }
        return options;
    }

    abstract Bitmap a(ai ai1);

    ae a()
    {
        return l;
    }

    protected void a(int i1)
    {
        n = i1;
    }

    void a(a a1)
    {
        boolean flag;
        ai ai1;
        flag = a.k;
        ai1 = a1.b;
        if (h != null) goto _L2; else goto _L1
_L1:
        h = a1;
        if (!flag) goto _L4; else goto _L3
_L3:
        if (i != null && !i.isEmpty()) goto _L6; else goto _L5
_L5:
        au.a("Hunter", "joined", ai1.a(), "to empty hunter");
_L4:
        return;
_L6:
        au.a("Hunter", "joined", ai1.a(), au.a(this, "to "));
        return;
_L2:
        if (i == null)
        {
            i = new ArrayList(3);
        }
        i.add(a1);
        if (flag)
        {
            au.a("Hunter", "joined", ai1.a(), au.a(this, "to "));
            return;
        }
        if (true) goto _L4; else goto _L7
_L7:
    }

    boolean a(boolean flag, NetworkInfo networkinfo)
    {
        return false;
    }

    Bitmap b()
    {
        if (g) goto _L2; else goto _L1
_L1:
        Bitmap bitmap = c.a(e);
        if (bitmap == null) goto _L2; else goto _L3
_L3:
        d.a();
        l = ae.a;
        if (a.k)
        {
            au.a("Hunter", "decoded", f.a(), "from cache");
        }
_L5:
        return bitmap;
_L2:
        bitmap = a(f);
        if (bitmap == null) goto _L5; else goto _L4
_L4:
        if (a.k)
        {
            au.a("Hunter", "decoded", f.a());
        }
        d.a(bitmap);
        if (!f.e() && n == 0) goto _L5; else goto _L6
_L6:
        synchronized (o)
        {
            if (f.f() || n != 0)
            {
                bitmap = a(f, bitmap, n);
                if (a.k)
                {
                    au.a("Hunter", "transformed", f.a());
                }
            }
            if (f.g())
            {
                bitmap = a(f.e, bitmap);
                if (a.k)
                {
                    au.a("Hunter", "transformed", f.a(), "from custom transformations");
                }
            }
        }
        if (bitmap == null) goto _L5; else goto _L7
_L7:
        d.b(bitmap);
        return bitmap;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void b(a a1)
    {
        if (h != a1) goto _L2; else goto _L1
_L1:
        h = null;
_L4:
        if (a.k)
        {
            au.a("Hunter", "removed", a1.b.a(), au.a(this, "from "));
        }
        return;
_L2:
        if (i != null)
        {
            i.remove(a1);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    boolean c()
    {
        boolean flag;
label0:
        {
            a a1 = h;
            flag = false;
            if (a1 != null)
            {
                break label0;
            }
            if (i != null)
            {
                boolean flag2 = i.isEmpty();
                flag = false;
                if (!flag2)
                {
                    break label0;
                }
            }
            Future future = k;
            flag = false;
            if (future != null)
            {
                boolean flag1 = k.cancel(false);
                flag = false;
                if (flag1)
                {
                    flag = true;
                }
            }
        }
        return flag;
    }

    boolean d()
    {
        return k != null && k.isCancelled();
    }

    boolean e()
    {
        return g;
    }

    boolean f()
    {
        return false;
    }

    Bitmap g()
    {
        return j;
    }

    String h()
    {
        return e;
    }

    ai i()
    {
        return f;
    }

    a j()
    {
        return h;
    }

    aa k()
    {
        return a;
    }

    List l()
    {
        return i;
    }

    Exception m()
    {
        return m;
    }

    public void run()
    {
        b(f);
        if (a.k)
        {
            au.a("Hunter", "executing", au.a(this));
        }
        j = b();
        if (j != null) goto _L2; else goto _L1
_L1:
        b.c(this);
_L4:
        Thread.currentThread().setName("Picasso-Idle");
        return;
_L2:
        b.a(this);
        if (true) goto _L4; else goto _L3
_L3:
        q q1;
        q1;
        m = q1;
        b.c(this);
        Thread.currentThread().setName("Picasso-Idle");
        return;
        IOException ioexception;
        ioexception;
        m = ioexception;
        b.b(this);
        Thread.currentThread().setName("Picasso-Idle");
        return;
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
        StringWriter stringwriter = new StringWriter();
        d.e().a(new PrintWriter(stringwriter));
        m = new RuntimeException(stringwriter.toString(), outofmemoryerror);
        b.c(this);
        Thread.currentThread().setName("Picasso-Idle");
        return;
        Exception exception1;
        exception1;
        m = exception1;
        b.c(this);
        Thread.currentThread().setName("Picasso-Idle");
        return;
        Exception exception;
        exception;
        Thread.currentThread().setName("Picasso-Idle");
        throw exception;
    }

}
