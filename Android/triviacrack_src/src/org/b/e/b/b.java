// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.e.b;


// Referenced classes of package org.b.e.b:
//            d, e, a, f

final class b
    implements d
{

    private final String a;

    b(String s)
    {
        a = s;
    }

    public String a()
    {
        return a;
    }

    public d a(String s)
    {
        return new b(org.b.e.b.a.a(a(), s, e.f));
    }

    public d a(f f)
    {
        return new b(org.b.e.b.a.a(a(), f));
    }

    public void b()
    {
        org.b.e.b.a.a(a, e.f);
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (obj instanceof b)
        {
            b b1 = (b)obj;
            return a().equals(b1.a());
        } else
        {
            return false;
        }
    }

    public int hashCode()
    {
        return a().hashCode();
    }
}
