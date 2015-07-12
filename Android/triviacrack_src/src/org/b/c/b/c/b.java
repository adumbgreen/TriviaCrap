// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.b.c;

import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import org.b.c.b.a;
import org.b.c.b.h;
import org.b.c.c;
import org.b.c.d;
import org.b.c.g;
import org.b.c.k;
import org.simpleframework.xml.Root;
import org.simpleframework.xml.Serializer;
import org.simpleframework.xml.core.Persister;

public class b extends a
{

    public static final Charset a = Charset.forName("UTF-8");
    private Serializer b;

    public b()
    {
        this(((Serializer) (new Persister())));
    }

    public b(Serializer serializer)
    {
        k ak[] = new k[3];
        ak[0] = k.h;
        ak[1] = k.p;
        ak[2] = k.i;
        super(ak);
        a(serializer);
    }

    private Charset a(c c1)
    {
        if (c1 != null && c1.c() != null && c1.c().e() != null)
        {
            return c1.c().e();
        } else
        {
            return a;
        }
    }

    protected void a(Object obj, g g1)
    {
        OutputStreamWriter outputstreamwriter = new OutputStreamWriter(g1.a(), a(g1.d()));
        try
        {
            b.write(obj, outputstreamwriter);
            outputstreamwriter.close();
            return;
        }
        catch (Exception exception)
        {
            throw new h((new StringBuilder()).append("Could not write [").append(obj).append("]").toString(), exception);
        }
    }

    public void a(Serializer serializer)
    {
        org.b.d.a.a(serializer, "'serializer' must not be null");
        b = serializer;
    }

    protected boolean a(Class class1)
    {
        throw new UnsupportedOperationException();
    }

    public boolean a(Class class1, k k1)
    {
        return a(k1);
    }

    protected Object b(Class class1, d d1)
    {
        InputStreamReader inputstreamreader = new InputStreamReader(d1.e(), a(d1.d()));
        Object obj;
        try
        {
            obj = b.read(class1, inputstreamreader);
            if (!class1.isInstance(obj))
            {
                throw new org.b.a.c(obj, class1);
            }
        }
        catch (Exception exception)
        {
            throw new org.b.c.b.g((new StringBuilder()).append("Could not read [").append(class1).append("]").toString(), exception);
        }
        return obj;
    }

    public boolean b(Class class1, k k1)
    {
        return class1.isAnnotationPresent(org/simpleframework/xml/Root) && b(k1);
    }

}
