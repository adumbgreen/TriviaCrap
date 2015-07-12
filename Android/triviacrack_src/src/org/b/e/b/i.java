// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.e.b;


// Referenced classes of package org.b.e.b:
//            j, b, d

class i
    implements j
{

    private final StringBuilder a;

    private i(String s)
    {
        a = new StringBuilder(s);
    }

    i(String s, h._cls1 _pcls1)
    {
        this(s);
    }

    public d a()
    {
        return new b(a.toString());
    }

    public j a(String s)
    {
        a.append(s);
        return this;
    }
}
