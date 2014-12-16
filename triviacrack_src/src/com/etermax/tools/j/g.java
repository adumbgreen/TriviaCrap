// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.j;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;

public class g
{

    public static float a(int i, Context context)
    {
        return TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }
}
