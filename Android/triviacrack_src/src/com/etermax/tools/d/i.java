// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.d;

import android.os.Bundle;
import android.support.v4.app.Fragment;

public class i extends Fragment
{

    private Object a;

    public i()
    {
    }

    public Object a()
    {
        return a;
    }

    public void a(Object obj)
    {
        a = obj;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRetainInstance(true);
    }
}
