// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.j;

import android.content.Context;
import com.google.gson.Gson;

// Referenced classes of package com.etermax.tools.j:
//            b

public class a
{

    private static Gson b;
    Context a;

    public a()
    {
    }

    public static Gson a()
    {
        if (b == null)
        {
            b = new Gson();
        }
        return b;
    }

    public String b()
    {
        if (a instanceof com.etermax.tools.a)
        {
            return ((com.etermax.tools.a)a).d();
        } else
        {
            throw new RuntimeException("Application must implement IApplicationDevice");
        }
    }

    public boolean c()
    {
        if (a instanceof b)
        {
            return ((b)a).y();
        } else
        {
            throw new RuntimeException("Application must implement IApplicationVersion");
        }
    }
}
