// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.a.c;

import com.etermax.tools.b.e;
import org.json.JSONObject;

public abstract class b extends RuntimeException
    implements e
{

    private int a;
    private String b;

    public b(int i, String s, Exception exception)
    {
        super(exception);
        a = i;
        b = s;
    }

    public b(org.b.e.a.b b1)
    {
        super(b1);
        try
        {
            JSONObject jsonobject = new JSONObject(b1.c());
            a = jsonobject.getInt("code");
            b = jsonobject.getString("message");
            return;
        }
        catch (Exception exception)
        {
            throw b1;
        }
    }

    public final int c()
    {
        return a;
    }

    public final String getMessage()
    {
        return b;
    }
}
