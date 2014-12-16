// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;


// Referenced classes of package com.millennialmedia.a.a.b:
//            p

class l
{

    private p a;

    l()
    {
    }

    public p a()
    {
        p p1 = a;
        if (p1 == null)
        {
            return null;
        }
        p p2 = p1.a;
        p1.a = null;
        p p4;
        for (p p3 = p1.c; p3 != null; p3 = p4)
        {
            p3.a = p2;
            p4 = p3.b;
            p2 = p3;
        }

        a = p2;
        return p1;
    }

    void a(p p1)
    {
        p p2 = null;
        p p3;
        for (; p1 != null; p1 = p3)
        {
            p1.a = p2;
            p3 = p1.b;
            p2 = p1;
        }

        a = p2;
    }
}
