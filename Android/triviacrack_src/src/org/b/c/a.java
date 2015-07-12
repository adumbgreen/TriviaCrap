// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c;

import java.util.ArrayList;
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
import org.b.d.c;
import org.b.d.f;
import org.b.d.j;

public class a
    implements Comparable
{

    public static final a a = b("*");
    public static final a b = b("identity");
    public static final a c = b("gzip");
    public static final Comparator d = new Comparator() {

        public int a(a a1, a a2)
        {
            double d1 = a1.c();
            int k = Double.compare(a2.c(), d1);
            if (k != 0)
            {
                return k;
            }
            if (a1.b() && !a2.b())
            {
                return 1;
            }
            if (a2.b() && !a1.b())
            {
                return -1;
            }
            return a1.a().equals(a2.a()) ? 0 : 0;
        }

        public int compare(Object obj, Object obj1)
        {
            return a((a)obj, (a)obj1);
        }

    };
    private static final BitSet e;
    private final String f;
    private final Map g;

    public a(String s, Map map)
    {
        org.b.d.a.a(s, "'type' must not be empty");
        e(s);
        f = s.toLowerCase(Locale.ENGLISH);
        if (!org.b.d.c.a(map))
        {
            f f1 = new f(map.size(), Locale.ENGLISH);
            String s1;
            String s2;
            for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); f1.put(s1, g(s2)))
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                s1 = (String)entry.getKey();
                s2 = (String)entry.getValue();
                a(s1, s2);
            }

            g = Collections.unmodifiableMap(f1);
            return;
        } else
        {
            g = Collections.emptyMap();
            return;
        }
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
            ((a)iterator.next()).a(stringbuilder);
            if (iterator.hasNext())
            {
                stringbuilder.append(", ");
            }
        } while (true);
        return stringbuilder.toString();
    }

    private void a(String s, String s1)
    {
        org.b.d.a.a(s, "parameter attribute must not be empty");
        org.b.d.a.a(s1, "parameter value must not be empty");
        e(s);
        if ("q".equals(s))
        {
            String s2 = g(s1);
            double d1 = Double.parseDouble(s2);
            boolean flag;
            if (d1 >= 0.0D && d1 <= 1.0D)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            org.b.d.a.a(flag, (new StringBuilder()).append("Invalid quality value \"").append(s2).append("\": should be between 0.0 and 1.0").toString());
        } else
        if (!f(s1))
        {
            e(s1);
            return;
        }
    }

    private void a(StringBuilder stringbuilder)
    {
        stringbuilder.append(f);
        a(g, stringbuilder);
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

    public static a b(String s)
    {
        return c(s);
    }

    public static a c(String s)
    {
        int i = 1;
        org.b.d.a.a(s, "'codingType' must not be empty");
        String as[] = j.b(s, ";");
        String s1 = as[0].trim();
        LinkedHashMap linkedhashmap1;
        if (as.length > i)
        {
            LinkedHashMap linkedhashmap = new LinkedHashMap(-1 + as.length);
            for (; i < as.length; i++)
            {
                String s2 = as[i];
                int k = s2.indexOf('=');
                if (k != -1)
                {
                    linkedhashmap.put(s2.substring(0, k), s2.substring(k + 1, s2.length()));
                }
            }

            linkedhashmap1 = linkedhashmap;
        } else
        {
            linkedhashmap1 = null;
        }
        return new a(s1, linkedhashmap1);
    }

    public static List d(String s)
    {
        Object obj;
        if (!j.a(s))
        {
            obj = Collections.emptyList();
        } else
        {
            String as[] = s.split(",");
            obj = new ArrayList(as.length);
            int i = as.length;
            int k = 0;
            while (k < i) 
            {
                ((List) (obj)).add(c(as[k]));
                k++;
            }
        }
        return ((List) (obj));
    }

    private void e(String s)
    {
        for (int i = 0; i < s.length(); i++)
        {
            char c1 = s.charAt(i);
            if (!e.get(c1))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Invalid token character '").append(c1).append("' in token \"").append(s).append("\"").toString());
            }
        }

    }

    private boolean f(String s)
    {
        return s.length() > 1 && s.startsWith("\"") && s.endsWith("\"");
    }

    private String g(String s)
    {
        if (s == null)
        {
            s = null;
        } else
        if (f(s))
        {
            return s.substring(1, -1 + s.length());
        }
        return s;
    }

    public int a(a a1)
    {
        int i = f.compareToIgnoreCase(a1.f);
        if (i == 0)
        {
            if ((i = g.size() - a1.g.size()) == 0)
            {
                TreeSet treeset = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                treeset.addAll(g.keySet());
                TreeSet treeset1 = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                treeset1.addAll(a1.g.keySet());
                Iterator iterator = treeset.iterator();
                Iterator iterator1 = treeset1.iterator();
                while (iterator.hasNext()) 
                {
                    String s = (String)iterator.next();
                    String s1 = (String)iterator1.next();
                    int k = s.compareToIgnoreCase(s1);
                    if (k != 0)
                    {
                        return k;
                    }
                    String s2 = (String)g.get(s);
                    String s3 = (String)a1.g.get(s1);
                    if (s3 == null)
                    {
                        s3 = "";
                    }
                    int l = s2.compareTo(s3);
                    if (l != 0)
                    {
                        return l;
                    }
                }
                return 0;
            }
        }
        return i;
    }

    public String a()
    {
        return f;
    }

    public String a(String s)
    {
        return (String)g.get(s);
    }

    public boolean b()
    {
        return "*".equals(f);
    }

    public double c()
    {
        String s = a("q");
        if (s != null)
        {
            return Double.parseDouble(s);
        } else
        {
            return 1.0D;
        }
    }

    public int compareTo(Object obj)
    {
        return a((a)obj);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof a))
            {
                return false;
            }
            a a1 = (a)obj;
            if (!f.equalsIgnoreCase(a1.f) || !g.equals(a1.g))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return 31 * f.hashCode() + g.hashCode();
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
        for (int i = 0; i <= 31; i++)
        {
            bitset.set(i);
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
        e = new BitSet(128);
        e.set(0, 128);
        e.andNot(bitset);
        e.andNot(bitset1);
    }
}
