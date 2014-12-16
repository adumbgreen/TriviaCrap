// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.e.a;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import org.b.c.i;

// Referenced classes of package org.b.e.a:
//            j

public abstract class e extends j
{

    private static final Charset a = Charset.forName("ISO-8859-1");
    private final i b;
    private final String c;
    private final byte d[];
    private final Charset e;

    protected e(i k, String s, byte abyte0[], Charset charset)
    {
        super((new StringBuilder()).append(k.a()).append(" ").append(s).toString());
        b = k;
        c = s;
        if (abyte0 == null)
        {
            abyte0 = new byte[0];
        }
        d = abyte0;
        if (charset == null)
        {
            charset = a;
        }
        e = charset;
    }

    public i a()
    {
        return b;
    }

    public String b()
    {
        return c;
    }

    public String c()
    {
        String s;
        try
        {
            s = new String(d, e.name());
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new InternalError(unsupportedencodingexception.getMessage());
        }
        return s;
    }

}
