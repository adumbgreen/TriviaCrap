// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.widget.a;

import android.content.Context;
import android.graphics.drawable.Drawable;

public abstract class a
{

    public String c;

    public a(String s)
    {
        c = s;
    }

    public abstract Drawable a(Context context);

    public String toString()
    {
        return c;
    }
}
