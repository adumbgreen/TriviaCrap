// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

// Referenced classes of package com.b.a:
//            e, au

public class u
    implements e
{

    final LinkedHashMap b;
    private final int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;

    public u(int i)
    {
        if (i <= 0)
        {
            throw new IllegalArgumentException("Max size must be positive.");
        } else
        {
            c = i;
            b = new LinkedHashMap(0, 0.75F, true);
            return;
        }
    }

    public u(Context context)
    {
        this(au.c(context));
    }

    private void a(int i)
    {
_L1:
        this;
        JVM INSTR monitorenter ;
        if (d < 0 || b.isEmpty() && d != 0)
        {
            throw new IllegalStateException((new StringBuilder()).append(getClass().getName()).append(".sizeOf() is reporting inconsistent results!").toString());
        }
        break MISSING_BLOCK_LABEL_64;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (d > i && !b.isEmpty())
        {
            break MISSING_BLOCK_LABEL_85;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        java.util.Map.Entry entry = (java.util.Map.Entry)b.entrySet().iterator().next();
        String s = (String)entry.getKey();
        Bitmap bitmap = (Bitmap)entry.getValue();
        b.remove(s);
        d = d - au.a(bitmap);
        f = 1 + f;
        this;
        JVM INSTR monitorexit ;
          goto _L1
    }

    public final int a()
    {
        this;
        JVM INSTR monitorenter ;
        int i = d;
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public Bitmap a(String s)
    {
        if (s == null)
        {
            throw new NullPointerException("key == null");
        }
        this;
        JVM INSTR monitorenter ;
        Bitmap bitmap = (Bitmap)b.get(s);
        if (bitmap == null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        g = 1 + g;
        this;
        JVM INSTR monitorexit ;
        return bitmap;
        h = 1 + h;
        this;
        JVM INSTR monitorexit ;
        return null;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(String s, Bitmap bitmap)
    {
        if (s == null || bitmap == null)
        {
            throw new NullPointerException("key == null || bitmap == null");
        }
        this;
        JVM INSTR monitorenter ;
        Bitmap bitmap1;
        e = 1 + e;
        d = d + au.a(bitmap);
        bitmap1 = (Bitmap)b.put(s, bitmap);
        if (bitmap1 == null)
        {
            break MISSING_BLOCK_LABEL_76;
        }
        d = d - au.a(bitmap1);
        this;
        JVM INSTR monitorexit ;
        a(c);
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final int b()
    {
        this;
        JVM INSTR monitorenter ;
        int i = c;
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }
}
