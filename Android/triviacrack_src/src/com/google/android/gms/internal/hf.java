// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.a;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.e;

public final class hf
    implements d
{

    private final e a;

    public hf(e e1)
    {
        a = e1;
    }

    public void a(a a1)
    {
        a.a(a1);
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof hf)
        {
            return a.equals(((hf)obj).a);
        } else
        {
            return a.equals(obj);
        }
    }
}
