// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.content.res.Resources;
import com.etermax.o;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            a

public class d
{

    final a a;
    private com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender b;

    public d(a a1, com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender gender)
    {
        a = a1;
        super();
        b = gender;
    }

    private a b()
    {
        return a;
    }

    public com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender a()
    {
        return b;
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
            d d1 = (d)obj;
            if (!b().equals(d1.b()))
            {
                return false;
            }
            if (b != d1.b)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i = 31 * (31 + b().hashCode());
        int j;
        if (b == null)
        {
            j = 0;
        } else
        {
            j = b.hashCode();
        }
        return j + i;
    }

    public String toString()
    {
        switch (a._cls5.a[b.ordinal()])
        {
        default:
            return a.getResources().getString(o.female);

        case 2: // '\002'
            return a.getResources().getString(o.male);
        }
    }
}
