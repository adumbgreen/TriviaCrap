// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;

// Referenced classes of package com.google.android.gms.internal:
//            fq, db, fx, dd

public class dc
{

    private final String a;

    public dc(String s)
    {
        a = s;
    }

    public String a()
    {
        return fq.d();
    }

    public boolean a(String s, int i, Intent intent)
    {
        if (s != null && intent != null)
        {
            String s1 = db.b(intent);
            String s2 = db.c(intent);
            if (s1 != null && s2 != null)
            {
                if (!s.equals(db.a(s1)))
                {
                    fx.e("Developer payload not match.");
                    return false;
                }
                if (a != null && !dd.a(a, s1, s2))
                {
                    fx.e("Fail to verify signature.");
                    return false;
                } else
                {
                    return true;
                }
            }
        }
        return false;
    }
}
