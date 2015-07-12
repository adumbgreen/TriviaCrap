// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.widget.ImageView;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

// Referenced classes of package com.b.a:
//            ac, ab, a, ai, 
//            au, k, j, af, 
//            ak, d, ad, e, 
//            am, ae, ap

public class aa
{

    static final Handler a = new Handler(Looper.getMainLooper()) {

        public void handleMessage(Message message)
        {
            switch (message.what)
            {
            default:
                throw new AssertionError((new StringBuilder()).append("Unknown handler message received: ").append(message.what).toString());

            case 8: // '\b'
                List list = (List)message.obj;
                int i1 = list.size();
                for (int j1 = 0; j1 < i1; j1++)
                {
                    d d1 = (d)list.get(j1);
                    d1.a.a(d1);
                }

                break;

            case 3: // '\003'
                a a1 = (a)message.obj;
                aa.a(a1.a, a1.d());
                break;
            }
        }

    };
    static aa b = null;
    final Context c;
    final k d;
    final e e;
    final am f;
    final Map g = new WeakHashMap();
    final Map h = new WeakHashMap();
    final ReferenceQueue i = new ReferenceQueue();
    boolean j;
    volatile boolean k;
    boolean l;
    private final ad m;
    private final af n;
    private final ac o;

    aa(Context context, k k1, e e1, ad ad1, af af1, am am1, boolean flag, 
            boolean flag1)
    {
        c = context;
        d = k1;
        e = e1;
        m = ad1;
        n = af1;
        f = am1;
        j = flag;
        k = flag1;
        o = new ac(i, a);
        o.start();
    }

    public static aa a(Context context)
    {
        if (b != null) goto _L2; else goto _L1
_L1:
        com/b/a/aa;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = (new ab(context)).a();
        }
        com/b/a/aa;
        JVM INSTR monitorexit ;
_L2:
        return b;
        Exception exception;
        exception;
        com/b/a/aa;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(Bitmap bitmap, ae ae, a a1)
    {
        if (!a1.f()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (!a1.g())
        {
            g.remove(a1.d());
        }
        if (bitmap == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (ae == null)
        {
            throw new AssertionError("LoadedFrom cannot be null.");
        }
        a1.a(bitmap, ae);
        if (k)
        {
            au.a("Main", "completed", a1.b.a(), (new StringBuilder()).append("from ").append(ae).toString());
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        a1.a();
        if (k)
        {
            au.a("Main", "errored", a1.b.a());
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    static void a(aa aa1, Object obj)
    {
        aa1.a(obj);
    }

    private void a(Object obj)
    {
        au.b();
        a a1 = (a)g.remove(obj);
        if (a1 != null)
        {
            a1.b();
            d.b(a1);
        }
        if (obj instanceof ImageView)
        {
            ImageView imageview = (ImageView)obj;
            j j1 = (j)h.remove(imageview);
            if (j1 != null)
            {
                j1.a();
            }
        }
    }

    ai a(ai ai1)
    {
        ai ai2 = n.a(ai1);
        if (ai2 == null)
        {
            throw new IllegalStateException((new StringBuilder()).append("Request transformer ").append(n.getClass().getCanonicalName()).append(" returned null for ").append(ai1).toString());
        } else
        {
            return ai2;
        }
    }

    public ak a(Uri uri)
    {
        return new ak(this, uri, 0);
    }

    public ak a(String s)
    {
        if (s == null)
        {
            return new ak(this, null, 0);
        }
        if (s.trim().length() == 0)
        {
            throw new IllegalArgumentException("Path must not be empty.");
        } else
        {
            return a(Uri.parse(s));
        }
    }

    public void a(ImageView imageview)
    {
        a(imageview);
    }

    void a(ImageView imageview, j j1)
    {
        h.put(imageview, j1);
    }

    void a(a a1)
    {
        Object obj = a1.d();
        if (obj != null)
        {
            a(obj);
            g.put(obj, a1);
        }
        b(a1);
    }

    public void a(ap ap)
    {
        a(ap);
    }

    void a(d d1)
    {
        boolean flag = true;
        a a1 = d1.j();
        List list = d1.l();
        boolean flag1;
        if (list != null && !list.isEmpty())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (a1 == null && !flag1)
        {
            flag = false;
        }
        if (flag)
        {
            Uri uri = d1.i().c;
            Exception exception = d1.m();
            Bitmap bitmap = d1.g();
            ae ae = d1.a();
            if (a1 != null)
            {
                a(bitmap, ae, a1);
            }
            if (flag1)
            {
                int i1 = list.size();
                for (int j1 = 0; j1 < i1; j1++)
                {
                    a(bitmap, ae, (a)list.get(j1));
                }

            }
            if (m != null && exception != null)
            {
                m.a(this, uri, exception);
                return;
            }
        }
    }

    public void a(boolean flag)
    {
        b(flag);
    }

    Bitmap b(String s)
    {
        Bitmap bitmap = e.a(s);
        if (bitmap != null)
        {
            f.a();
            return bitmap;
        } else
        {
            f.b();
            return bitmap;
        }
    }

    void b(a a1)
    {
        d.a(a1);
    }

    public void b(boolean flag)
    {
        j = flag;
    }

}
