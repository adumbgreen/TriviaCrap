// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.b;

import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.SortedMap;
import org.b.c.c;
import org.b.c.d;
import org.b.c.g;
import org.b.c.k;
import org.b.d.e;

// Referenced classes of package org.b.c.b:
//            a

public class j extends a
{

    private final Charset a;
    private final List b;
    private boolean c;

    public j()
    {
        this(Charset.forName("ISO-8859-1"));
    }

    public j(Charset charset)
    {
        this(charset, ((List) (new ArrayList(Charset.availableCharsets().values()))));
    }

    public j(Charset charset, List list)
    {
        k ak[] = new k[2];
        ak[0] = new k("text", "plain", charset);
        ak[1] = k.a;
        super(ak);
        c = true;
        a = charset;
        b = list;
    }

    private Charset c(k k1)
    {
        if (k1 != null && k1.e() != null)
        {
            return k1.e();
        } else
        {
            return b();
        }
    }

    protected volatile Long a(Object obj, k k1)
    {
        return a((String)obj, k1);
    }

    protected Long a(String s, k k1)
    {
        Charset charset = c(k1);
        Long long1;
        try
        {
            long1 = Long.valueOf(s.getBytes(charset.displayName()).length);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new InternalError(unsupportedencodingexception.getMessage());
        }
        return long1;
    }

    protected volatile void a(Object obj, g g1)
    {
        a((String)obj, g1);
    }

    protected void a(String s, g g1)
    {
        if (c)
        {
            g1.d().b(c());
        }
        Charset charset = c(g1.d().c());
        e.a(s, new OutputStreamWriter(g1.a(), charset));
    }

    public void a(boolean flag)
    {
        c = flag;
    }

    public boolean a(Class class1)
    {
        return java/lang/String.equals(class1);
    }

    protected Object b(Class class1, d d1)
    {
        return c(class1, d1);
    }

    public Charset b()
    {
        return a;
    }

    protected String c(Class class1, d d1)
    {
        Charset charset = c(d1.d().c());
        return e.a(new InputStreamReader(d1.e(), charset));
    }

    protected List c()
    {
        return b;
    }
}
