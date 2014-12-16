// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.b.a;

import com.google.code.rome.android.repackaged.com.sun.syndication.feed.synd.SyndFeed;
import com.google.code.rome.android.repackaged.com.sun.syndication.io.FeedException;
import com.google.code.rome.android.repackaged.com.sun.syndication.io.SyndFeedInput;
import com.google.code.rome.android.repackaged.com.sun.syndication.io.SyndFeedOutput;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import org.b.c.b.h;
import org.b.c.c;
import org.b.c.d;
import org.b.c.g;
import org.b.c.k;
import org.b.d.j;

public class a extends org.b.c.b.a
{

    public static final Charset a = Charset.forName("UTF-8");

    public a()
    {
        k ak[] = new k[2];
        ak[0] = k.c;
        ak[1] = k.b;
        super(ak);
        if (android.os.Build.VERSION.SDK_INT < 8)
        {
            Thread.currentThread().setContextClassLoader(getClass().getClassLoader());
        }
    }

    protected void a(SyndFeed syndfeed, g g1)
    {
        String s = syndfeed.getEncoding();
        if (!j.a(s))
        {
            s = a.name();
        }
        k k1 = g1.d().c();
        if (k1 != null)
        {
            Charset charset = Charset.forName(s);
            k k2 = new k(k1.a(), k1.c(), charset);
            g1.d().a(k2);
        }
        SyndFeedOutput syndfeedoutput = new SyndFeedOutput();
        try
        {
            syndfeedoutput.output(syndfeed, new OutputStreamWriter(g1.a(), s));
            return;
        }
        catch (FeedException feedexception)
        {
            throw new h((new StringBuilder()).append("Could not write SyndFeed: ").append(feedexception.getMessage()).toString(), feedexception);
        }
    }

    protected volatile void a(Object obj, g g1)
    {
        a((SyndFeed)obj, g1);
    }

    protected boolean a(Class class1)
    {
        return com/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed.isAssignableFrom(class1);
    }

    protected Object b(Class class1, d d1)
    {
        return c(class1, d1);
    }

    protected SyndFeed c(Class class1, d d1)
    {
        SyndFeedInput syndfeedinput = new SyndFeedInput();
        k k1 = d1.d().c();
        Charset charset;
        SyndFeed syndfeed;
        if (k1 != null && k1.e() != null)
        {
            charset = k1.e();
        } else
        {
            charset = a;
        }
        try
        {
            syndfeed = syndfeedinput.build(new InputStreamReader(d1.e(), charset));
        }
        catch (FeedException feedexception)
        {
            throw new org.b.c.b.g((new StringBuilder()).append("Could not read SyndFeed: ").append(feedexception.getMessage()).toString(), feedexception);
        }
        return syndfeed;
    }

}
