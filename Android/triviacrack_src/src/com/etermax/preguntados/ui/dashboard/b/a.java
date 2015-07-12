// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.b;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.etermax.tools.nationality.Nationality;
import com.etermax.tools.nationality.NationalityManager;

public class a extends com.etermax.widget.a.a
{

    private Nationality a;

    public a(String s, Nationality nationality)
    {
        super(s);
        a = nationality;
    }

    public Drawable a(Context context)
    {
        return NationalityManager.getFlag(context, a);
    }

    public Nationality a()
    {
        return a;
    }
}
