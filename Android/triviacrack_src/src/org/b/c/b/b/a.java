// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.b.b;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import org.b.c.b.h;
import org.b.c.c;
import org.b.c.d;
import org.b.c.g;
import org.b.c.k;

public class a extends org.b.c.b.a
{

    public static final Charset a = Charset.forName("UTF-8");
    private Gson b;
    private Type c;
    private boolean d;

    public a()
    {
        this(new Gson());
    }

    public a(Gson gson)
    {
        super(new k("application", "json", a));
        c = null;
        d = false;
        a(gson);
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

    public void a(Gson gson)
    {
        org.b.d.a.a(gson, "'gson' must not be null");
        b = gson;
    }

    protected void a(Object obj, g g1)
    {
        OutputStreamWriter outputstreamwriter = new OutputStreamWriter(g1.a(), a(g1.d()));
        Type type;
        try
        {
            if (d)
            {
                outputstreamwriter.append("{} && ");
            }
            type = b();
        }
        catch (JsonIOException jsonioexception)
        {
            throw new h((new StringBuilder()).append("Could not write JSON: ").append(jsonioexception.getMessage()).toString(), jsonioexception);
        }
        if (type == null)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        b.toJson(obj, type, outputstreamwriter);
_L2:
        outputstreamwriter.close();
        return;
        b.toJson(obj, outputstreamwriter);
        if (true) goto _L2; else goto _L1
_L1:
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
        Type type;
        Object obj;
        try
        {
            type = b();
        }
        catch (JsonSyntaxException jsonsyntaxexception)
        {
            throw new org.b.c.b.g((new StringBuilder()).append("Could not read JSON: ").append(jsonsyntaxexception.getMessage()).toString(), jsonsyntaxexception);
        }
        catch (JsonIOException jsonioexception)
        {
            throw new org.b.c.b.g((new StringBuilder()).append("Could not read JSON: ").append(jsonioexception.getMessage()).toString(), jsonioexception);
        }
        catch (JsonParseException jsonparseexception)
        {
            throw new org.b.c.b.g((new StringBuilder()).append("Could not read JSON: ").append(jsonparseexception.getMessage()).toString(), jsonparseexception);
        }
        if (type == null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        return b.fromJson(inputstreamreader, type);
        obj = b.fromJson(inputstreamreader, class1);
        return obj;
    }

    public Type b()
    {
        return c;
    }

    public boolean b(Class class1, k k1)
    {
        return b(k1);
    }

}
