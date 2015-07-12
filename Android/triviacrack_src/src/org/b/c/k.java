// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c;

import java.nio.charset.Charset;
import java.util.BitSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import org.b.d.a;
import org.b.d.c;
import org.b.d.f;
import org.b.d.j;

public class k
    implements Comparable
{

    public static final k a = b("*/*");
    public static final k b = b("application/atom+xml");
    public static final k c = b("application/rss+xml");
    public static final k d = b("application/x-www-form-urlencoded");
    public static final k e = b("application/json");
    public static final k f = b("application/octet-stream");
    public static final k g = b("application/xhtml+xml");
    public static final k h = b("application/xml");
    public static final k i = b("application/*+xml");
    public static final k j = b("image/gif");
    public static final k k = b("image/jpeg");
    public static final k l = b("image/png");
    public static final k m = b("multipart/form-data");
    public static final k n = b("text/html");
    public static final k o = b("text/plain");
    public static final k p = b("text/xml");
    public static final Comparator q = new Comparator() {

        public int a(k k1, k k2)
        {
            byte byte0 = -1;
            if (k1.b() && !k2.b())
            {
                byte0 = 1;
            } else
            if (!k2.b() || k1.b())
            {
                if (!k1.a().equals(k2.a()))
                {
                    return 0;
                }
                if (k1.d() && !k2.d())
                {
                    return 1;
                }
                if (!k2.d() || k1.d())
                {
                    if (!k1.c().equals(k2.c()))
                    {
                        return 0;
                    }
                    double d1 = k1.f();
                    int j1 = Double.compare(k2.f(), d1);
                    if (j1 != 0)
                    {
                        return j1;
                    }
                    int l1 = k.d(k1).size();
                    int i2 = k.d(k2).size();
                    if (i2 >= l1)
                    {
                        return i2 != l1 ? 1 : 0;
                    }
                }
            }
            return byte0;
        }

        public int compare(Object obj, Object obj1)
        {
            return a((k)obj, (k)obj1);
        }

    };
    public static final Comparator r = new Comparator() {

        public int a(k k1, k k2)
        {
            int j1 = -1;
            double d1 = k1.f();
            int l1 = Double.compare(k2.f(), d1);
            if (l1 != 0)
            {
                j1 = l1;
            } else
            {
                if (k1.b() && !k2.b())
                {
                    return 1;
                }
                if (!k2.b() || k1.b())
                {
                    if (!k1.a().equals(k2.a()))
                    {
                        return 0;
                    }
                    if (k1.d() && !k2.d())
                    {
                        return 1;
                    }
                    if (!k2.d() || k1.d())
                    {
                        if (!k1.c().equals(k2.c()))
                        {
                            return 0;
                        }
                        int i2 = k.d(k1).size();
                        int j2 = k.d(k2).size();
                        if (j2 >= i2)
                        {
                            return j2 != i2 ? 1 : 0;
                        }
                    }
                }
            }
            return j1;
        }

        public int compare(Object obj, Object obj1)
        {
            return a((k)obj, (k)obj1);
        }

    };
    private static final BitSet s;
    private final String t;
    private final String u;
    private final Map v;

    public k(String s1, String s2)
    {
        this(s1, s2, Collections.emptyMap());
    }

    public k(String s1, String s2, Charset charset)
    {
        this(s1, s2, Collections.singletonMap("charset", charset.displayName()));
    }

    public k(String s1, String s2, Map map)
    {
        org.b.d.a.a(s1, "'type' must not be empty");
        org.b.d.a.a(s2, "'subtype' must not be empty");
        d(s1);
        d(s2);
        t = s1.toLowerCase(Locale.ENGLISH);
        u = s2.toLowerCase(Locale.ENGLISH);
        if (!org.b.d.c.a(map))
        {
            f f1 = new f(map.size(), Locale.ENGLISH);
            String s3;
            String s4;
            for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); f1.put(s3, s4))
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                s3 = (String)entry.getKey();
                s4 = (String)entry.getValue();
                a(s3, s4);
            }

            v = Collections.unmodifiableMap(f1);
            return;
        } else
        {
            v = Collections.emptyMap();
            return;
        }
    }

    public k(k k1, Map map)
    {
        this(k1.a(), k1.c(), map);
    }

    public static String a(Collection collection)
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ((k)iterator.next()).a(stringbuilder);
            if (iterator.hasNext())
            {
                stringbuilder.append(", ");
            }
        } while (true);
        return stringbuilder.toString();
    }

    private void a(String s1, String s2)
    {
        org.b.d.a.a(s1, "parameter attribute must not be empty");
        org.b.d.a.a(s2, "parameter value must not be empty");
        d(s1);
        if ("q".equals(s1))
        {
            String s3 = f(s2);
            double d1 = Double.parseDouble(s3);
            boolean flag;
            if (d1 >= 0.0D && d1 <= 1.0D)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            org.b.d.a.a(flag, (new StringBuilder()).append("Invalid quality value \"").append(s3).append("\": should be between 0.0 and 1.0").toString());
        } else
        {
            if ("charset".equals(s1))
            {
                Charset.forName(f(s2));
                return;
            }
            if (!e(s2))
            {
                d(s2);
                return;
            }
        }
    }

    private void a(StringBuilder stringbuilder)
    {
        stringbuilder.append(t);
        stringbuilder.append('/');
        stringbuilder.append(u);
        a(v, stringbuilder);
    }

    public static void a(List list)
    {
        org.b.d.a.a(list, "'mediaTypes' must not be null");
        if (list.size() > 1)
        {
            Collections.sort(list, q);
        }
    }

    private void a(Map map, StringBuilder stringbuilder)
    {
        java.util.Map.Entry entry;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); stringbuilder.append((String)entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
            stringbuilder.append(';');
            stringbuilder.append((String)entry.getKey());
            stringbuilder.append('=');
        }

    }

    public static k b(String s1)
    {
        return c(s1);
    }

    public static k c(String s1)
    {
        org.b.d.a.a(s1, "'mediaType' must not be empty");
        String as[] = org.b.d.j.b(s1, ";");
        String s2 = as[0].trim();
        if ("*".equals(s2))
        {
            s2 = "*/*";
        }
        int i1 = s2.indexOf('/');
        if (i1 == -1)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("\"").append(s1).append("\" does not contain '/'").toString());
        }
        if (i1 == -1 + s2.length())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("\"").append(s1).append("\" does not contain subtype after '/'").toString());
        }
        String s3 = s2.substring(0, i1);
        String s4 = s2.substring(i1 + 1, s2.length());
        if ("*".equals(s3) && !"*".equals(s4))
        {
            throw new IllegalArgumentException("A wildcard type is legal only in '*/*' (all media types).");
        }
        int j1 = as.length;
        LinkedHashMap linkedhashmap = null;
        if (j1 > 1)
        {
            LinkedHashMap linkedhashmap1 = new LinkedHashMap(-1 + as.length);
            for (int k1 = 1; k1 < as.length; k1++)
            {
                String s5 = as[k1];
                int l1 = s5.indexOf('=');
                if (l1 != -1)
                {
                    linkedhashmap1.put(s5.substring(0, l1), s5.substring(l1 + 1, s5.length()));
                }
            }

            linkedhashmap = linkedhashmap1;
        }
        return new k(s3, s4, linkedhashmap);
    }

    static Map d(k k1)
    {
        return k1.v;
    }

    private void d(String s1)
    {
        for (int i1 = 0; i1 < s1.length(); i1++)
        {
            char c1 = s1.charAt(i1);
            if (!s.get(c1))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Invalid token character '").append(c1).append("' in token \"").append(s1).append("\"").toString());
            }
        }

    }

    private boolean e(String s1)
    {
        return s1.length() > 1 && s1.startsWith("\"") && s1.endsWith("\"");
    }

    private String f(String s1)
    {
        if (s1 == null)
        {
            s1 = null;
        } else
        if (e(s1))
        {
            return s1.substring(1, -1 + s1.length());
        }
        return s1;
    }

    public String a()
    {
        return t;
    }

    public String a(String s1)
    {
        return (String)v.get(s1);
    }

    public boolean a(k k1)
    {
        if (k1 != null)
        {
            if (b())
            {
                return true;
            }
            if (t.equals(k1.t))
            {
                if (u.equals(k1.u) || d())
                {
                    return true;
                }
                int i1 = u.indexOf('+');
                int j1 = k1.u.indexOf('+');
                if (i1 != -1 && j1 != -1)
                {
                    String s1 = u.substring(0, i1);
                    if (u.substring(i1 + 1).equals(k1.u.substring(j1 + 1)) && "*".equals(s1))
                    {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public boolean b()
    {
        return "*".equals(t);
    }

    public boolean b(k k1)
    {
        if (k1 != null)
        {
            if (b() || k1.b())
            {
                return true;
            }
            if (t.equals(k1.t))
            {
                if (u.equals(k1.u) || d() || k1.d())
                {
                    return true;
                }
                int i1 = u.indexOf('+');
                int j1 = k1.u.indexOf('+');
                if (i1 != -1 && j1 != -1)
                {
                    String s1 = u.substring(0, i1);
                    String s2 = k1.u.substring(0, j1);
                    if (u.substring(i1 + 1).equals(k1.u.substring(j1 + 1)) && ("*".equals(s1) || "*".equals(s2)))
                    {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public int c(k k1)
    {
        int i1 = t.compareToIgnoreCase(k1.t);
        if (i1 == 0)
        {
            if ((i1 = u.compareToIgnoreCase(k1.u)) == 0 && (i1 = v.size() - k1.v.size()) == 0)
            {
                TreeSet treeset = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                treeset.addAll(v.keySet());
                TreeSet treeset1 = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                treeset1.addAll(k1.v.keySet());
                Iterator iterator = treeset.iterator();
                Iterator iterator1 = treeset1.iterator();
                while (iterator.hasNext()) 
                {
                    String s1 = (String)iterator.next();
                    String s2 = (String)iterator1.next();
                    int j1 = s1.compareToIgnoreCase(s2);
                    if (j1 != 0)
                    {
                        return j1;
                    }
                    String s3 = (String)v.get(s1);
                    String s4 = (String)k1.v.get(s2);
                    if (s4 == null)
                    {
                        s4 = "";
                    }
                    int l1 = s3.compareTo(s4);
                    if (l1 != 0)
                    {
                        return l1;
                    }
                }
                return 0;
            }
        }
        return i1;
    }

    public String c()
    {
        return u;
    }

    public int compareTo(Object obj)
    {
        return c((k)obj);
    }

    public boolean d()
    {
        return "*".equals(u);
    }

    public Charset e()
    {
        String s1 = a("charset");
        if (s1 != null)
        {
            return Charset.forName(f(s1));
        } else
        {
            return null;
        }
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof k))
            {
                return false;
            }
            k k1 = (k)obj;
            if (!t.equalsIgnoreCase(k1.t) || !u.equalsIgnoreCase(k1.u) || !v.equals(k1.v))
            {
                return false;
            }
        }
        return true;
    }

    public double f()
    {
        String s1 = a("q");
        if (s1 != null)
        {
            return Double.parseDouble(f(s1));
        } else
        {
            return 1.0D;
        }
    }

    public int hashCode()
    {
        return 31 * (31 * t.hashCode() + u.hashCode()) + v.hashCode();
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        a(stringbuilder);
        return stringbuilder.toString();
    }

    static 
    {
        BitSet bitset = new BitSet(128);
        for (int i1 = 0; i1 <= 31; i1++)
        {
            bitset.set(i1);
        }

        bitset.set(127);
        BitSet bitset1 = new BitSet(128);
        bitset1.set(40);
        bitset1.set(41);
        bitset1.set(60);
        bitset1.set(62);
        bitset1.set(64);
        bitset1.set(44);
        bitset1.set(59);
        bitset1.set(58);
        bitset1.set(92);
        bitset1.set(34);
        bitset1.set(47);
        bitset1.set(91);
        bitset1.set(93);
        bitset1.set(63);
        bitset1.set(61);
        bitset1.set(123);
        bitset1.set(125);
        bitset1.set(32);
        bitset1.set(9);
        s = new BitSet(128);
        s.set(0, 128);
        s.andNot(bitset);
        s.andNot(bitset1);
    }
}
