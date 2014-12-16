// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import android.os.Handler;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.b.a:
//            d, aa, au, v, 
//            ai, o, p, ae, 
//            am, k, e, a

class y extends d
{

    int o;
    private final o p;

    public y(aa aa1, k k, e e, am am1, a a1, o o1)
    {
        super(aa1, k, e, am1, a1);
        p = o1;
        o = 2;
        if (!au.b(aa1.c, "android.permission.INTERNET"))
        {
            aa.a.post(new Runnable() {

                final y a;

                public void run()
                {
                    throw new IllegalStateException("INTERNET permission is required.");
                }

            
            {
                a = y.this;
                super();
            }
            });
        }
    }

    private Bitmap a(InputStream inputstream, ai ai1)
    {
        v v1 = new v(inputstream);
        long l = v1.a(0x10000);
        android.graphics.BitmapFactory.Options options = c(ai1);
        boolean flag = a(options);
        boolean flag1 = au.c(v1);
        v1.a(l);
        Bitmap bitmap;
        if (flag1)
        {
            byte abyte0[] = au.b(v1);
            if (flag)
            {
                BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options);
                a(ai1.f, ai1.g, options);
            }
            bitmap = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options);
        } else
        {
            if (flag)
            {
                BitmapFactory.decodeStream(v1, null, options);
                a(ai1.f, ai1.g, options);
                v1.a(l);
            }
            bitmap = BitmapFactory.decodeStream(v1, null, options);
            if (bitmap == null)
            {
                throw new IOException("Failed to decode stream.");
            }
        }
        return bitmap;
    }

    Bitmap a(ai ai1)
    {
        p p1;
        Bitmap bitmap;
        boolean flag;
        if (o == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        p1 = p.a(ai1.c, flag);
        if (p1 != null) goto _L2; else goto _L1
_L1:
        bitmap = null;
_L4:
        return bitmap;
_L2:
        InputStream inputstream;
        ae ae1;
        if (p1.c)
        {
            ae1 = ae.b;
        } else
        {
            ae1 = ae.c;
        }
        l = ae1;
        bitmap = p1.b();
        if (bitmap != null) goto _L4; else goto _L3
_L3:
        inputstream = p1.a();
        if (inputstream == null)
        {
            return null;
        }
        if (p1.c() == 0L)
        {
            au.a(inputstream);
            throw new IOException("Received response with 0 content-length header.");
        }
        if (l == ae.c && p1.c() > 0L)
        {
            d.a(p1.c());
        }
        Bitmap bitmap1 = a(inputstream, ai1);
        au.a(inputstream);
        return bitmap1;
        Exception exception;
        exception;
        au.a(inputstream);
        throw exception;
    }

    boolean a(boolean flag, NetworkInfo networkinfo)
    {
        boolean flag1;
        if (o > 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            o = -1 + o;
            if (networkinfo == null || networkinfo.isConnected())
            {
                return true;
            }
        }
        return false;
    }

    boolean f()
    {
        return true;
    }
}
