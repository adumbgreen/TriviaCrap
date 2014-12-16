// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.b;

import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;
import org.b.c.b;
import org.b.c.d;
import org.b.c.g;
import org.b.c.k;
import org.b.d.a;
import org.b.d.e;
import org.b.d.h;
import org.b.d.j;

// Referenced classes of package org.b.c.b:
//            f, b, j, i, 
//            d, h

public class c
    implements f
{

    private static final byte a[] = {
        45, 95, 49, 50, 51, 52, 53, 54, 55, 56, 
        57, 48, 97, 98, 99, 100, 101, 102, 103, 104, 
        105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 
        115, 116, 117, 118, 119, 120, 121, 122, 65, 66, 
        67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 
        77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
        87, 88, 89, 90
    };
    private final Random b = new Random();
    private Charset c;
    private List d;
    private List e;

    public c()
    {
        c = Charset.forName("UTF-8");
        d = new ArrayList();
        e = new ArrayList();
        d.add(k.d);
        d.add(k.m);
        e.add(new org.b.c.b.b());
        org.b.c.b.j j1 = new org.b.c.b.j();
        j1.a(false);
        e.add(j1);
        e.add(new i());
    }

    private void a(OutputStream outputstream)
    {
        outputstream.write(13);
        outputstream.write(10);
    }

    private void a(OutputStream outputstream, h h1, byte abyte0[])
    {
        for (Iterator iterator = h1.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            String s = (String)entry.getKey();
            Iterator iterator1 = ((List)entry.getValue()).iterator();
            while (iterator1.hasNext()) 
            {
                Object obj = iterator1.next();
                a(abyte0, outputstream);
                a(s, b(obj), outputstream);
                a(outputstream);
            }
        }

    }

    private void a(String s, b b1, OutputStream outputstream)
    {
        Object obj = b1.b();
        Class class1 = obj.getClass();
        org.b.c.c c1 = b1.a();
        k k1 = c1.c();
        for (Iterator iterator = e.iterator(); iterator.hasNext();)
        {
            f f1 = (f)iterator.next();
            if (f1.b(class1, k1))
            {
                org.b.c.b.d d1 = new org.b.c.b.d(this, outputstream);
                d1.d().a(s, a(obj));
                if (!c1.isEmpty())
                {
                    d1.d().putAll(c1);
                }
                f1.a(obj, k1, d1);
                return;
            }
        }

        throw new org.b.c.b.h((new StringBuilder()).append("Could not write request: no suitable HttpMessageConverter found for request type [").append(class1.getName()).append("]").toString());
    }

    static void a(c c1, OutputStream outputstream)
    {
        c1.a(outputstream);
    }

    private void a(h h1, g g1)
    {
        byte abyte0[] = b();
        java.util.Map map = Collections.singletonMap("boundary", new String(abyte0, "US-ASCII"));
        k k1 = new k(k.m, map);
        g1.d().a(k1);
        a(g1.a(), h1, abyte0);
        b(abyte0, g1.a());
    }

    private void a(byte abyte0[], OutputStream outputstream)
    {
        outputstream.write(45);
        outputstream.write(45);
        outputstream.write(abyte0);
        a(outputstream);
    }

    private boolean a(h h1, k k1)
    {
        if (k1 != null)
        {
            return k.m.equals(k1);
        }
        Iterator iterator = h1.keySet().iterator();
label0:
        do
        {
            if (iterator.hasNext())
            {
                Iterator iterator1 = ((List)h1.get((String)iterator.next())).iterator();
                Object obj;
                do
                {
                    if (!iterator1.hasNext())
                    {
                        continue label0;
                    }
                    obj = iterator1.next();
                } while (obj == null || (obj instanceof String));
                break;
            } else
            {
                return false;
            }
        } while (true);
        return true;
    }

    private b b(Object obj)
    {
        if (obj instanceof b)
        {
            return (b)obj;
        } else
        {
            return new b(obj);
        }
    }

    private void b(h h1, k k1, g g1)
    {
        Charset charset;
        StringBuilder stringbuilder;
        Iterator iterator;
        if (k1 != null)
        {
            g1.d().a(k1);
            String s;
            Iterator iterator1;
            String s1;
            Charset charset1;
            if (k1.e() != null)
            {
                charset1 = k1.e();
            } else
            {
                charset1 = c;
            }
            charset = charset1;
        } else
        {
            g1.d().a(k.d);
            charset = c;
        }
        stringbuilder = new StringBuilder();
        iterator = h1.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            s = (String)iterator.next();
            iterator1 = ((List)h1.get(s)).iterator();
            do
            {
                if (!iterator1.hasNext())
                {
                    break;
                }
                s1 = (String)iterator1.next();
                stringbuilder.append(URLEncoder.encode(s, charset.name()));
                if (s1 != null)
                {
                    stringbuilder.append('=');
                    stringbuilder.append(URLEncoder.encode(s1, charset.name()));
                    if (iterator1.hasNext())
                    {
                        stringbuilder.append('&');
                    }
                }
            } while (true);
            if (iterator.hasNext())
            {
                stringbuilder.append('&');
            }
        } while (true);
        byte abyte0[] = stringbuilder.toString().getBytes(charset.name());
        g1.d().a(abyte0.length);
        org.b.d.e.a(abyte0, g1.a());
    }

    private void b(byte abyte0[], OutputStream outputstream)
    {
        outputstream.write(45);
        outputstream.write(45);
        outputstream.write(abyte0);
        outputstream.write(45);
        outputstream.write(45);
        a(outputstream);
    }

    public Object a(Class class1, d d1)
    {
        return b(class1, d1);
    }

    protected String a(Object obj)
    {
        if (obj instanceof org.b.b.a.e)
        {
            return ((org.b.b.a.e)obj).c();
        } else
        {
            return null;
        }
    }

    public List a()
    {
        return Collections.unmodifiableList(d);
    }

    public volatile void a(Object obj, k k1, g g1)
    {
        a((h)obj, k1, g1);
    }

    public final void a(f f1)
    {
        org.b.d.a.a(f1, "'partConverter' must not be NULL");
        e.add(f1);
    }

    public void a(h h1, k k1, g g1)
    {
        if (!a(h1, k1))
        {
            b(h1, k1, g1);
            return;
        } else
        {
            a(h1, g1);
            return;
        }
    }

    public boolean a(Class class1, k k1)
    {
        if (!org/b/d/h.isAssignableFrom(class1))
        {
            return false;
        }
        if (k1 == null)
        {
            return true;
        }
        for (Iterator iterator = a().iterator(); iterator.hasNext();)
        {
            k k2 = (k)iterator.next();
            if (!k2.equals(k.m) && k2.a(k1))
            {
                return true;
            }
        }

        return false;
    }

    public h b(Class class1, d d1)
    {
        k k1 = d1.d().c();
        Charset charset;
        String as[];
        org.b.d.g g1;
        int l;
        int i1;
        if (k1.e() != null)
        {
            charset = k1.e();
        } else
        {
            charset = c;
        }
        as = j.b(org.b.d.e.a(new InputStreamReader(d1.e(), charset)), "&");
        g1 = new org.b.d.g(as.length);
        l = as.length;
        i1 = 0;
        while (i1 < l) 
        {
            String s = as[i1];
            int j1 = s.indexOf('=');
            if (j1 == -1)
            {
                g1.a(URLDecoder.decode(s, charset.name()), null);
            } else
            {
                g1.a(URLDecoder.decode(s.substring(0, j1), charset.name()), URLDecoder.decode(s.substring(j1 + 1), charset.name()));
            }
            i1++;
        }
        return g1;
    }

    public boolean b(Class class1, k k1)
    {
        if (!org/b/d/h.isAssignableFrom(class1))
        {
            return false;
        }
        if (k1 == null || k.a.equals(k1))
        {
            return true;
        }
        for (Iterator iterator = a().iterator(); iterator.hasNext();)
        {
            if (((k)iterator.next()).b(k1))
            {
                return true;
            }
        }

        return false;
    }

    protected byte[] b()
    {
        byte abyte0[] = new byte[30 + b.nextInt(11)];
        for (int l = 0; l < abyte0.length; l++)
        {
            abyte0[l] = a[b.nextInt(a.length)];
        }

        return abyte0;
    }

}
