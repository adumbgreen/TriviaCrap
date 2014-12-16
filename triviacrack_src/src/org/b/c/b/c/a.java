// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.b.c;

import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import org.b.c.c;
import org.b.c.d;
import org.b.c.g;
import org.b.c.k;

public abstract class a extends org.b.c.b.a
{

    private final TransformerFactory a = TransformerFactory.newInstance();

    protected a()
    {
        k ak[] = new k[3];
        ak[0] = k.h;
        ak[1] = k.p;
        ak[2] = new k("application", "*+xml");
        super(ak);
    }

    protected abstract Object a(Class class1, c c, Source source);

    protected abstract void a(Object obj, c c, Result result);

    protected final void a(Object obj, g g1)
    {
        a(obj, g1.d(), ((Result) (new StreamResult(g1.a()))));
    }

    protected void a(Source source, Result result)
    {
        a.newTransformer().transform(source, result);
    }

    public final Object b(Class class1, d d1)
    {
        return a(class1, d1.d(), new StreamSource(d1.e()));
    }
}
