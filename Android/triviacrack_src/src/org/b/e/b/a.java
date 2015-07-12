// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.e.b;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.b.d.c;
import org.b.d.g;
import org.b.d.h;
import org.b.d.j;

// Referenced classes of package org.b.e.b:
//            d, e, f, c, 
//            g

public final class a
{

    static final d a = new d() {

        public String a()
        {
            return null;
        }

        public d a(String s)
        {
            return this;
        }

        public d a(f f1)
        {
            return this;
        }

        public void b()
        {
        }

        public boolean equals(Object obj)
        {
            return this == obj;
        }

        public int hashCode()
        {
            return 42;
        }

    };
    private static final Pattern b = Pattern.compile("\\{([^/]+?)\\}");
    private final String c;
    private final String d;
    private final String e;
    private final int f;
    private final d g;
    private final h h;
    private final String i;
    private final boolean j;

    a(String s, String s1, String s2, int l, d d1, h h1, String s3, 
            boolean flag, boolean flag1)
    {
        c = s;
        d = s1;
        e = s2;
        f = l;
        if (d1 == null)
        {
            d1 = a;
        }
        g = d1;
        if (h1 == null)
        {
            h1 = new g(0);
        }
        h = org.b.d.c.a(h1);
        i = s3;
        j = flag;
        if (flag1)
        {
            k();
        }
    }

    private static String a(Object obj)
    {
        if (obj != null)
        {
            return obj.toString();
        } else
        {
            return "";
        }
    }

    static String a(String s, String s1, e e1)
    {
        if (s == null)
        {
            return null;
        } else
        {
            org.b.d.a.a(s1, "'encoding' must not be empty");
            return new String(a(s.getBytes(s1), e1), "US-ASCII");
        }
    }

    static String a(String s, f f1)
    {
        return b(s, f1);
    }

    private a a(f f1)
    {
        boolean flag;
        String s;
        String s1;
        String s2;
        d d1;
        g g1;
        if (!j)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        org.b.d.a.b(flag, "Cannot expand an already encoded UriComponents object");
        s = b(c, f1);
        s1 = b(d, f1);
        s2 = b(e, f1);
        d1 = g.a(f1);
        g1 = new g(h.size());
        String s4;
        ArrayList arraylist;
        for (Iterator iterator = h.entrySet().iterator(); iterator.hasNext(); g1.put(s4, arraylist))
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            s4 = b((String)entry.getKey(), f1);
            arraylist = new ArrayList(((List)entry.getValue()).size());
            for (Iterator iterator1 = ((List)entry.getValue()).iterator(); iterator1.hasNext(); arraylist.add(b((String)iterator1.next(), f1))) { }
        }

        String s3 = b(i, f1);
        return new a(s, s1, s2, f, d1, g1, s3, false, false);
    }

    static void a(String s, e e1)
    {
        b(s, e1);
    }

    private static byte[] a(byte abyte0[], e e1)
    {
        org.b.d.a.a(abyte0, "'source' must not be null");
        org.b.d.a.a(e1, "'type' must not be null");
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream(abyte0.length);
        int l = 0;
        while (l < abyte0.length) 
        {
            int i1 = abyte0[l];
            if (i1 < 0)
            {
                i1 += 256;
            }
            if (e1.a(i1))
            {
                bytearrayoutputstream.write(i1);
            } else
            {
                bytearrayoutputstream.write(37);
                char c1 = Character.toUpperCase(Character.forDigit(0xf & i1 >> 4, 16));
                char c2 = Character.toUpperCase(Character.forDigit(i1 & 0xf, 16));
                bytearrayoutputstream.write(c1);
                bytearrayoutputstream.write(c2);
            }
            l++;
        }
        return bytearrayoutputstream.toByteArray();
    }

    private static String b(String s)
    {
        int l = s.indexOf(':');
        if (l == -1)
        {
            return s;
        } else
        {
            return s.substring(0, l);
        }
    }

    private static String b(String s, f f1)
    {
        if (s == null)
        {
            s = null;
        } else
        if (s.indexOf('{') != -1)
        {
            Matcher matcher = b.matcher(s);
            StringBuffer stringbuffer = new StringBuffer();
            for (; matcher.find(); matcher.appendReplacement(stringbuffer, Matcher.quoteReplacement(a(f1.a(b(matcher.group(1))))))) { }
            matcher.appendTail(stringbuffer);
            return stringbuffer.toString();
        }
        return s;
    }

    private static void b(String s, e e1)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int l;
        int i1;
        l = s.length();
        i1 = 0;
_L6:
        if (i1 >= l) goto _L1; else goto _L3
_L3:
        char c1;
        c1 = s.charAt(i1);
        if (c1 != '%')
        {
            break MISSING_BLOCK_LABEL_171;
        }
        if (i1 + 2 >= l) goto _L5; else goto _L4
_L4:
        char c2 = s.charAt(i1 + 1);
        char c3 = s.charAt(i1 + 2);
        int j1 = Character.digit(c2, 16);
        int k1 = Character.digit(c3, 16);
        if (j1 == -1 || k1 == -1)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid encoded sequence \"").append(s.substring(i1)).append("\"").toString());
        }
        i1 += 2;
_L7:
        i1++;
          goto _L6
_L5:
        throw new IllegalArgumentException((new StringBuilder()).append("Invalid encoded sequence \"").append(s.substring(i1)).append("\"").toString());
        if (!e1.a(c1))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid character '").append(c1).append("' for ").append(e1.name()).append(" in \"").append(s).append("\"").toString());
        }
          goto _L7
    }

    private void k()
    {
        if (!j)
        {
            return;
        }
        b(c, e.a);
        b(d, org.b.e.b.e.c);
        b(e, e.d);
        g.b();
        for (Iterator iterator = h.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            b((String)entry.getKey(), e.i);
            Iterator iterator1 = ((List)entry.getValue()).iterator();
            while (iterator1.hasNext()) 
            {
                b((String)iterator1.next(), e.i);
            }
        }

        b(i, org.b.e.b.e.j);
    }

    public String a()
    {
        return c;
    }

    public a a(String s)
    {
        org.b.d.a.a(s, "'encoding' must not be empty");
        if (j)
        {
            return this;
        }
        String s1 = a(c, s, e.a);
        String s2 = a(d, s, org.b.e.b.e.c);
        String s3 = a(e, s, e.d);
        d d1 = g.a(s);
        g g1 = new g(h.size());
        String s5;
        ArrayList arraylist;
        for (Iterator iterator = h.entrySet().iterator(); iterator.hasNext(); g1.put(s5, arraylist))
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            s5 = a((String)entry.getKey(), s, e.i);
            arraylist = new ArrayList(((List)entry.getValue()).size());
            for (Iterator iterator1 = ((List)entry.getValue()).iterator(); iterator1.hasNext(); arraylist.add(a((String)iterator1.next(), s, e.i))) { }
        }

        String s4 = a(i, s, org.b.e.b.e.j);
        return new a(s1, s2, s3, f, d1, g1, s4, true, false);
    }

    public a a(Map map)
    {
        org.b.d.a.a(map, "'uriVariables' must not be null");
        return a(((f) (new org.b.e.b.c(map))));
    }

    public transient a a(Object aobj[])
    {
        org.b.d.a.a(((Object) (aobj)), "'uriVariableValues' must not be null");
        return a(((f) (new org.b.e.b.g(aobj))));
    }

    public String b()
    {
        return d;
    }

    public String c()
    {
        return e;
    }

    public int d()
    {
        return f;
    }

    public String e()
    {
        return g.a();
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj instanceof a)
            {
                a a1 = (a)obj;
                if (c == null ? a1.c != null : !c.equals(a1.c))
                {
                    return false;
                }
                if (d == null ? a1.d != null : !d.equals(a1.d))
                {
                    return false;
                }
                if (e == null ? a1.e != null : !e.equals(a1.e))
                {
                    return false;
                }
                if (f != a1.f)
                {
                    return false;
                }
                if (!g.equals(a1.g))
                {
                    return false;
                }
                if (!h.equals(a1.h))
                {
                    return false;
                }
                if (i == null ? a1.i != null : !i.equals(a1.i))
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public String f()
    {
        if (!h.isEmpty())
        {
            StringBuilder stringbuilder = new StringBuilder();
            for (Iterator iterator = h.entrySet().iterator(); iterator.hasNext();)
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                String s = (String)entry.getKey();
                List list = (List)entry.getValue();
                if (org.b.d.c.a(list))
                {
                    if (stringbuilder.length() != 0)
                    {
                        stringbuilder.append('&');
                    }
                    stringbuilder.append(s);
                } else
                {
                    Iterator iterator1 = list.iterator();
                    while (iterator1.hasNext()) 
                    {
                        String s1 = (String)iterator1.next();
                        if (stringbuilder.length() != 0)
                        {
                            stringbuilder.append('&');
                        }
                        stringbuilder.append(s);
                        if (s1 != null)
                        {
                            stringbuilder.append('=');
                            stringbuilder.append(s1.toString());
                        }
                    }
                }
            }

            return stringbuilder.toString();
        } else
        {
            return null;
        }
    }

    public String g()
    {
        return i;
    }

    public a h()
    {
        a a1;
        try
        {
            a1 = a("UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new InternalError("\"UTF-8\" not supported");
        }
        return a1;
    }

    public int hashCode()
    {
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        String s;
        int j2;
        if (c != null)
        {
            l = c.hashCode();
        } else
        {
            l = 0;
        }
        i1 = l * 31;
        if (d != null)
        {
            j1 = d.hashCode();
        } else
        {
            j1 = 0;
        }
        k1 = 31 * (j1 + i1);
        if (e != null)
        {
            l1 = e.hashCode();
        } else
        {
            l1 = 0;
        }
        i2 = 31 * (31 * (31 * (31 * (l1 + k1) + f) + g.hashCode()) + h.hashCode());
        s = i;
        j2 = 0;
        if (s != null)
        {
            j2 = i.hashCode();
        }
        return i2 + j2;
    }

    public String i()
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (c != null)
        {
            stringbuilder.append(c);
            stringbuilder.append(':');
        }
        if (d != null || e != null)
        {
            stringbuilder.append("//");
            if (d != null)
            {
                stringbuilder.append(d);
                stringbuilder.append('@');
            }
            if (e != null)
            {
                stringbuilder.append(e);
            }
            if (f != -1)
            {
                stringbuilder.append(':');
                stringbuilder.append(f);
            }
        }
        String s = e();
        if (org.b.d.j.a(s))
        {
            if (stringbuilder.length() != 0 && s.charAt(0) != '/')
            {
                stringbuilder.append('/');
            }
            stringbuilder.append(s);
        }
        String s1 = f();
        if (s1 != null)
        {
            stringbuilder.append('?');
            stringbuilder.append(s1);
        }
        if (i != null)
        {
            stringbuilder.append('#');
            stringbuilder.append(i);
        }
        return stringbuilder.toString();
    }

    public URI j()
    {
        URI uri;
        try
        {
            if (j)
            {
                return new URI(i());
            }
            String s = e();
            if (org.b.d.j.a(s) && s.charAt(0) != '/')
            {
                s = (new StringBuilder()).append('/').append(s).toString();
            }
            uri = new URI(a(), b(), c(), d(), s, f(), g());
        }
        catch (URISyntaxException urisyntaxexception)
        {
            throw new IllegalStateException((new StringBuilder()).append("Could not create URI object: ").append(urisyntaxexception.getMessage()).toString(), urisyntaxexception);
        }
        return uri;
    }

    public String toString()
    {
        return i();
    }

}
