// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.b.b;

import java.io.IOException;
import java.nio.charset.Charset;
import org.b.c.b.a;
import org.b.c.b.h;
import org.b.c.d;
import org.b.c.g;
import org.b.c.k;
import org.codehaus.jackson.JsonEncoding;
import org.codehaus.jackson.JsonFactory;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.type.JavaType;

public class c extends a
{

    public static final Charset a = Charset.forName("UTF-8");
    private ObjectMapper b;
    private boolean c;

    public c()
    {
        super(new k("application", "json", a));
        b = new ObjectMapper();
        c = false;
    }

    protected void a(Object obj, g g1)
    {
        JsonEncoding jsonencoding = c(g1.d().c());
        JsonGenerator jsongenerator = b.getJsonFactory().createJsonGenerator(g1.a(), jsonencoding);
        try
        {
            if (c)
            {
                jsongenerator.writeRaw("{} && ");
            }
            b.writeValue(jsongenerator, obj);
            return;
        }
        catch (IOException ioexception)
        {
            throw new h((new StringBuilder()).append("Could not write JSON: ").append(ioexception.getMessage()).toString(), ioexception);
        }
    }

    protected boolean a(Class class1)
    {
        throw new UnsupportedOperationException();
    }

    public boolean a(Class class1, k k1)
    {
        JavaType javatype = b(class1);
        return b.canDeserialize(javatype) && a(k1);
    }

    protected Object b(Class class1, d d1)
    {
        JavaType javatype = b(class1);
        Object obj;
        try
        {
            obj = b.readValue(d1.e(), javatype);
        }
        catch (IOException ioexception)
        {
            throw new org.b.c.b.g((new StringBuilder()).append("Could not read JSON: ").append(ioexception.getMessage()).toString(), ioexception);
        }
        return obj;
    }

    protected JavaType b(Class class1)
    {
        return b.getTypeFactory().constructType(class1);
    }

    public boolean b(Class class1, k k1)
    {
        return b.canSerialize(class1) && b(k1);
    }

    protected JsonEncoding c(k k1)
    {
        if (k1 != null && k1.e() != null)
        {
            Charset charset = k1.e();
            JsonEncoding ajsonencoding[] = JsonEncoding.values();
            int i = ajsonencoding.length;
            for (int j = 0; j < i; j++)
            {
                JsonEncoding jsonencoding = ajsonencoding[j];
                if (charset.name().equals(jsonencoding.getJavaName()))
                {
                    return jsonencoding;
                }
            }

        }
        return JsonEncoding.UTF8;
    }

}
