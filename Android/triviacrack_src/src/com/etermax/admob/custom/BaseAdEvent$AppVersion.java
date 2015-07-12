// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.custom;


// Referenced classes of package com.etermax.admob.custom:
//            BaseAdEvent

public class versionName
    implements Comparable
{

    final BaseAdEvent this$0;
    String versionName;

    public int compareTo(versionName versionname)
    {
        if (versionname != null) goto _L2; else goto _L1
_L1:
        int k = 1;
_L4:
        return k;
_L2:
        String as[] = get().split("\\.");
        String as1[] = versionname.get().split("\\.");
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

    public volatile int compareTo(Object obj)
    {
        return compareTo((compareTo)obj);
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
            if (compareTo((compareTo)obj) != 0)
            {
                return false;
            }
        }
        return true;
    }

    public String get()
    {
        return versionName;
    }

    public (String s)
    {
        this$0 = BaseAdEvent.this;
        super();
        if (s == null || !s.matches("[0-9]+(\\.[0-9]+)*"))
        {
            versionName = "0";
            return;
        } else
        {
            versionName = s;
            return;
        }
    }
}
