// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.webkit.WebView;

// Referenced classes of package com.google.android.gms.internal:
//            ei, gc, fx

public final class ej extends AsyncTask
{

    final ei a;
    private final WebView b;
    private Bitmap c;

    public ej(ei ei1, WebView webview)
    {
        a = ei1;
        super();
        b = webview;
    }

    protected transient Boolean a(Void avoid[])
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        int j;
        i = c.getWidth();
        j = c.getHeight();
        if (i != 0 && j != 0) goto _L2; else goto _L1
_L1:
        Boolean boolean1 = Boolean.valueOf(false);
        Boolean boolean2 = boolean1;
_L7:
        this;
        JVM INSTR monitorexit ;
        return boolean2;
_L2:
        int k;
        int l;
        k = 0;
        l = 0;
_L9:
        if (k >= i) goto _L4; else goto _L3
_L3:
        int i1 = 0;
_L8:
        if (i1 >= j) goto _L6; else goto _L5
_L5:
        if (c.getPixel(k, i1) != 0)
        {
            l++;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        boolean flag;
        Boolean boolean3;
        if ((double)l / ((double)(i * j) / 100D) > 0.10000000000000001D)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        boolean3 = Boolean.valueOf(flag);
        boolean2 = boolean3;
          goto _L7
        Exception exception;
        exception;
        throw exception;
          goto _L8
_L6:
        k += 10;
          goto _L9
    }

    protected void a(Boolean boolean1)
    {
        ei.c(a);
        if (boolean1.booleanValue() || a.c() || ei.d(a) <= 0L)
        {
            a.c = boolean1.booleanValue();
            ei.e(a).a(a.a);
        } else
        if (ei.d(a) > 0L)
        {
            if (fx.a(2))
            {
                fx.a("Ad not detected, scheduling another run.");
            }
            ei.g(a).postDelayed(a, ei.f(a));
            return;
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Boolean)obj);
    }

    protected void onPreExecute()
    {
        this;
        JVM INSTR monitorenter ;
        c = Bitmap.createBitmap(ei.a(a), ei.b(a), android.graphics.Bitmap.Config.ARGB_8888);
        b.setVisibility(0);
        b.measure(android.view.View.MeasureSpec.makeMeasureSpec(ei.a(a), 0), android.view.View.MeasureSpec.makeMeasureSpec(ei.b(a), 0));
        b.layout(0, 0, ei.a(a), ei.b(a));
        Canvas canvas = new Canvas(c);
        b.draw(canvas);
        b.invalidate();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
