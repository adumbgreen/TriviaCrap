// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.d;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.StringTokenizer;

// Referenced classes of package org.b.d:
//            c

public abstract class j
{

    public static String a(String s, String s1)
    {
        if (!a(s) || !a(s1))
        {
            return s;
        }
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < s.length(); i++)
        {
            char c1 = s.charAt(i);
            if (s1.indexOf(c1) == -1)
            {
                stringbuilder.append(c1);
            }
        }

        return stringbuilder.toString();
    }

    public static String a(String s, String s1, String s2)
    {
        if (!a(s) || !a(s1) || s2 == null)
        {
            return s;
        }
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        int k = s.indexOf(s1);
        int l = s1.length();
        for (; k >= 0; k = s.indexOf(s1, i))
        {
            stringbuilder.append(s.substring(i, k));
            stringbuilder.append(s2);
            i = k + l;
        }

        stringbuilder.append(s.substring(i));
        return stringbuilder.toString();
    }

    private static String a(String s, boolean flag)
    {
        if (s == null || s.length() == 0)
        {
            return s;
        }
        StringBuilder stringbuilder = new StringBuilder(s.length());
        if (flag)
        {
            stringbuilder.append(Character.toUpperCase(s.charAt(0)));
        } else
        {
            stringbuilder.append(Character.toLowerCase(s.charAt(0)));
        }
        stringbuilder.append(s.substring(1));
        return stringbuilder.toString();
    }

    public static String a(Collection collection, String s)
    {
        return a(collection, s, "", "");
    }

    public static String a(Collection collection, String s, String s1, String s2)
    {
        if (org.b.d.c.a(collection))
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            stringbuilder.append(s1).append(iterator.next()).append(s2);
            if (iterator.hasNext())
            {
                stringbuilder.append(s);
            }
        } while (true);
        return stringbuilder.toString();
    }

    public static boolean a(CharSequence charsequence)
    {
        return charsequence != null && charsequence.length() > 0;
    }

    public static boolean a(String s)
    {
        return a(((CharSequence) (s)));
    }

    public static String[] a(String s, String s1, boolean flag, boolean flag1)
    {
        if (s == null)
        {
            return null;
        }
        StringTokenizer stringtokenizer = new StringTokenizer(s, s1);
        ArrayList arraylist = new ArrayList();
        do
        {
            if (!stringtokenizer.hasMoreTokens())
            {
                break;
            }
            String s2 = stringtokenizer.nextToken();
            if (flag)
            {
                s2 = s2.trim();
            }
            if (!flag1 || s2.length() > 0)
            {
                arraylist.add(s2);
            }
        } while (true);
        return a(((Collection) (arraylist)));
    }

    public static String[] a(Collection collection)
    {
        if (collection == null)
        {
            return null;
        } else
        {
            return (String[])collection.toArray(new String[collection.size()]);
        }
    }

    public static boolean b(CharSequence charsequence)
    {
        if (a(charsequence))
        {
            int i = charsequence.length();
            int k = 0;
            while (k < i) 
            {
                if (!Character.isWhitespace(charsequence.charAt(k)))
                {
                    return true;
                }
                k++;
            }
        }
        return false;
    }

    public static boolean b(String s)
    {
        return b(((CharSequence) (s)));
    }

    public static String[] b(String s, String s1)
    {
        return a(s, s1, true, true);
    }

    public static String[] b(String s, String s1, String s2)
    {
        if (s == null)
        {
            return new String[0];
        }
        if (s1 == null)
        {
            return (new String[] {
                s
            });
        }
        ArrayList arraylist = new ArrayList();
        boolean flag = "".equals(s1);
        int i = 0;
        if (flag)
        {
            for (; i < s.length(); i++)
            {
                arraylist.add(a(s.substring(i, i + 1), s2));
            }

        } else
        {
            do
            {
                int k = s.indexOf(s1, i);
                if (k == -1)
                {
                    break;
                }
                arraylist.add(a(s.substring(i, k), s2));
                i = k + s1.length();
            } while (true);
            if (s.length() > 0 && i <= s.length())
            {
                arraylist.add(a(s.substring(i), s2));
            }
        }
        return a(arraylist);
    }

    public static String c(String s)
    {
        return a(s, true);
    }

    public static String[] c(String s, String s1)
    {
        return b(s, s1, null);
    }

    public static String d(String s)
    {
        if (s == null)
        {
            return null;
        }
        String s1 = a(s, "\\", "/");
        int i = s1.indexOf(":");
        String s2 = "";
        if (i != -1)
        {
            s2 = s1.substring(0, i + 1);
            s1 = s1.substring(i + 1);
        }
        if (s1.startsWith("/"))
        {
            s2 = (new StringBuilder()).append(s2).append("/").toString();
            s1 = s1.substring(1);
        }
        String as[] = c(s1, "/");
        LinkedList linkedlist = new LinkedList();
        int k = -1 + as.length;
        int l = 0;
        while (k >= 0) 
        {
            String s3 = as[k];
            if (!".".equals(s3))
            {
                if ("..".equals(s3))
                {
                    l++;
                } else
                if (l > 0)
                {
                    l--;
                } else
                {
                    linkedlist.add(0, s3);
                }
            }
            k--;
        }
        for (int i1 = 0; i1 < l; i1++)
        {
            linkedlist.add(0, "..");
        }

        return (new StringBuilder()).append(s2).append(a(linkedlist, "/")).toString();
    }
}
