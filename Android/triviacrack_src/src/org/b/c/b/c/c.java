// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.b.c;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import org.b.c.b.e;
import org.b.c.b.g;
import org.b.c.b.h;
import org.b.c.k;
import org.xml.sax.InputSource;

// Referenced classes of package org.b.c.b.c:
//            a, d

public class c extends a
{

    public c()
    {
    }

    private ByteArrayInputStream a(Source source)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        a(source, ((Result) (new StreamResult(bytearrayoutputstream))));
        return new ByteArrayInputStream(bytearrayoutputstream.toByteArray());
    }

    protected volatile Long a(Object obj, k k)
    {
        return a((Source)obj, k);
    }

    protected Long a(Source source, k k)
    {
        boolean flag = source instanceof DOMSource;
        Long long1 = null;
        if (flag)
        {
            Long long2;
            try
            {
                d d1 = new d();
                a(source, ((Result) (new StreamResult(d1))));
                long2 = Long.valueOf(d.a(d1));
            }
            catch (TransformerException transformerexception)
            {
                return null;
            }
            long1 = long2;
        }
        return long1;
    }

    protected Object a(Class class1, org.b.c.c c1, Source source)
    {
        return b(class1, c1, source);
    }

    protected volatile void a(Object obj, org.b.c.c c1, Result result)
    {
        a((Source)obj, c1, result);
    }

    protected void a(Source source, org.b.c.c c1, Result result)
    {
        try
        {
            a(source, result);
            return;
        }
        catch (TransformerException transformerexception)
        {
            throw new h((new StringBuilder()).append("Could not transform [").append(source).append("] to [").append(result).append("]").toString(), transformerexception);
        }
    }

    public boolean a(Class class1)
    {
        return javax/xml/transform/dom/DOMSource.equals(class1) || javax/xml/transform/sax/SAXSource.equals(class1) || javax/xml/transform/stream/StreamSource.equals(class1) || javax/xml/transform/Source.equals(class1);
    }

    protected Source b(Class class1, org.b.c.c c1, Source source)
    {
label0:
        {
            SAXSource saxsource;
            try
            {
                if (javax/xml/transform/dom/DOMSource.equals(class1))
                {
                    DOMResult domresult = new DOMResult();
                    a(source, domresult);
                    return new DOMSource(domresult.getNode());
                }
                if (!javax/xml/transform/sax/SAXSource.equals(class1))
                {
                    break label0;
                }
                saxsource = new SAXSource(new InputSource(a(source)));
            }
            catch (TransformerException transformerexception)
            {
                throw new g((new StringBuilder()).append("Could not transform from [").append(source).append("] to [").append(class1).append("]").toString(), transformerexception);
            }
            return saxsource;
        }
        if (javax/xml/transform/stream/StreamSource.equals(class1) || javax/xml/transform/Source.equals(class1))
        {
            return new StreamSource(a(source));
        } else
        {
            throw new e((new StringBuilder()).append("Could not read class [").append(class1).append("]. Only DOMSource, SAXSource, and StreamSource are supported.").toString());
        }
    }
}
