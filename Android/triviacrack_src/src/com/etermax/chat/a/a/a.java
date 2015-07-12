// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.a.a;

import com.etermax.chat.ui.f;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.etermax.chat.a.a:
//            d, b

public class a
    implements f
{

    private b a;
    private ArrayList b;
    private ArrayList c;

    public a(d d1, long l)
    {
        a = d1.b(l);
        b = d1.c(l);
        c = d1.a(l);
    }

    public List a()
    {
        return b;
    }

    public void a(d d1)
    {
        d1.a(a);
        d1.a(b);
        d1.a(c);
    }

    public void a(ArrayList arraylist)
    {
        b = arraylist;
    }

    public ArrayList b()
    {
        return c;
    }

    public void b(d d1)
    {
        d1.b(c);
    }

    public void b(ArrayList arraylist)
    {
        c = arraylist;
    }
}
