// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.e.b;

import java.io.Serializable;
import java.net.URI;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

// Referenced classes of package org.b.e.b:
//            l, h, a

public class k
    implements Serializable
{

    private static final Pattern a = Pattern.compile("\\{([^/]+?)\\}");
    private final a b;
    private final List c;
    private final Pattern d;
    private final String e;

    public k(String s)
    {
        l l1 = new l(s);
        e = s;
        c = l.a(l1);
        d = l.b(l1);
        b = h.a(s).a();
    }

    static Pattern a()
    {
        return a;
    }

    public URI a(Map map)
    {
        return b.a(map).h().j();
    }

    public transient URI a(Object aobj[])
    {
        return b.a(aobj).h().j();
    }

    public String toString()
    {
        return e;
    }

}
