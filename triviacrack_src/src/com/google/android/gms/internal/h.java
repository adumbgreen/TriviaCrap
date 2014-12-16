// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            f, am, fz, fq, 
//            gb, ew, g, al, 
//            gc

public class h
    implements f
{

    private final fz a;

    public h(Context context, ew ew)
    {
        a = fz.a(context, new am(), false, false, null, ew);
    }

    public void a()
    {
        fq.a(a);
    }

    public void a(g g)
    {
        a.f().a(new gc(g) {

            final g a;
            final h b;

            public void a(fz fz1)
            {
                a.a();
            }

            
            {
                b = h.this;
                a = g1;
                super();
            }
        });
    }

    public void a(String s)
    {
        a.loadUrl(s);
    }

    public void a(String s, al al)
    {
        a.f().a(s, al);
    }

    public void a(String s, JSONObject jsonobject)
    {
        a.a(s, jsonobject);
    }

    public void b()
    {
        fq.b(a);
    }

    public void b(String s)
    {
        a.f().a(s, null);
    }
}
