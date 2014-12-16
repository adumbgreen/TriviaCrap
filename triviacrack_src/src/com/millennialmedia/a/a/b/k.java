// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;


// Referenced classes of package com.millennialmedia.a.a.b:
//            p

final class k
{

    private p a;
    private int b;
    private int c;
    private int d;

    k()
    {
    }

    p a()
    {
        p p1 = a;
        if (p1.a != null)
        {
            throw new IllegalStateException();
        } else
        {
            return p1;
        }
    }

    void a(int i)
    {
        b = (-1 + 2 * Integer.highestOneBit(i)) - i;
        d = 0;
        c = 0;
        a = null;
    }

    void a(p p1)
    {
        p1.c = null;
        p1.a = null;
        p1.b = null;
        p1.i = 1;
        if (b > 0 && (1 & d) == 0)
        {
            d = 1 + d;
            b = -1 + b;
            c = 1 + c;
        }
        p1.a = a;
        a = p1;
        d = 1 + d;
        if (b > 0 && (1 & d) == 0)
        {
            d = 1 + d;
            b = -1 + b;
            c = 1 + c;
        }
        int i = 4;
        while ((d & i - 1) == i - 1) 
        {
            if (c == 0)
            {
                p p4 = a;
                p p5 = p4.a;
                p p6 = p5.a;
                p5.a = p6.a;
                a = p5;
                p5.b = p6;
                p5.c = p4;
                p5.i = 1 + p4.i;
                p6.a = p5;
                p4.a = p5;
            } else
            if (c == 1)
            {
                p p2 = a;
                p p3 = p2.a;
                a = p3;
                p3.c = p2;
                p3.i = 1 + p2.i;
                p2.a = p3;
                c = 0;
            } else
            if (c == 2)
            {
                c = 0;
            }
            i *= 2;
        }
    }
}
