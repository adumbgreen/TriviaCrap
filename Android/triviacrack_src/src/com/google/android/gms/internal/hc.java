// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.d;

public final class hc
    implements c
{

    private final d a;

    public hc(d d1)
    {
        a = d1;
    }

    public void a(int i)
    {
        a.m_();
    }

    public void a(Bundle bundle)
    {
        a.a(bundle);
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof hc)
        {
            return a.equals(((hc)obj).a);
        } else
        {
            return a.equals(obj);
        }
    }
}
