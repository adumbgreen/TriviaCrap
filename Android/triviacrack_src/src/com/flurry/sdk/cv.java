// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import android.content.Context;
import java.io.File;
import java.util.Map;

// Referenced classes of package com.flurry.sdk:
//            dl, cw, el, fa

public class cv
{

    private static final String b = com/flurry/sdk/cv.getSimpleName();
    boolean a;
    private final cw c;
    private final File d;
    private String e;

    public cv()
    {
        this(dl.a().b());
    }

    public cv(Context context)
    {
        c = new cw();
        d = context.getFileStreamPath(".flurryinstallreceiver.");
        el.a(3, b, (new StringBuilder()).append("Referrer file name if it exists:  ").append(d).toString());
    }

    private void b()
    {
        if (a)
        {
            return;
        } else
        {
            a = true;
            el.a(4, b, (new StringBuilder()).append("Loading referrer info from file: ").append(d.getAbsolutePath()).toString());
            String s = fa.c(d);
            el.a(b, (new StringBuilder()).append("Referrer file contents: ").append(s).toString());
            b(s);
            return;
        }
    }

    private void b(String s)
    {
        if (s == null)
        {
            return;
        } else
        {
            e = s;
            return;
        }
    }

    private void c()
    {
        fa.a(d, e);
    }

    public Map a(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        Map map;
        b();
        map = c.a(e);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        a();
        this;
        JVM INSTR monitorexit ;
        return map;
        Exception exception;
        exception;
        throw exception;
    }

    public void a()
    {
        this;
        JVM INSTR monitorenter ;
        d.delete();
        e = null;
        a = true;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        a = true;
        b(s);
        c();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

}
