// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.mopubads.custom;


class b
    implements Comparable
{

    String a;

    public b(String s)
    {
        if (s == null || !s.matches("[0-9]+(\\.[0-9]+)*"))
        {
            a = "0";
            return;
        } else
        {
            a = s;
            return;
        }
    }

    public int a(b b1)
    {
        if (b1 != null) goto _L2; else goto _L1
_L1:
        int k = 1;
_L4:
        return k;
_L2:
        String as[] = a().split("\\.");
        String as1[] = b1.a().split("\\.");
        int i = Math.max(as.length, as1.length);
        int j = 0;
        do
        {
            k = 0;
            if (j >= i)
            {
                continue;
            }
            int l;
            int i1;
            if (j < as.length)
            {
                l = Integer.parseInt(as[j]);
            } else
            {
                l = 0;
            }
            if (j < as1.length)
            {
                i1 = Integer.parseInt(as1[j]);
            } else
            {
                i1 = 0;
            }
            if (l < i1)
            {
                return -1;
            }
            if (l > i1)
            {
                return 1;
            }
            j++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public String a()
    {
        return a;
    }

    public int compareTo(Object obj)
    {
        return a((b)obj);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            if (a((b)obj) != 0)
            {
                return false;
            }
        }
        return true;
    }
}
