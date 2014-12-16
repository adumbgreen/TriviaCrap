// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings.adapter.view;

import android.content.Context;
import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.etermax.a.b;
import com.etermax.h;
import com.etermax.j;
import java.util.Locale;
import java.util.Random;

public class c extends LinearLayout
{

    ImageView a;

    public c(Context context)
    {
        super(context);
    }

    protected void a()
    {
        int i;
        int k;
        Locale locale;
        Object aobj[];
        String s;
        int l;
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            setBackground(getResources().getDrawable(h.ranking_bg));
        } else
        {
            setBackgroundDrawable(getResources().getDrawable(h.ranking_bg));
        }
        i = getResources().getInteger(j.rankings_image_count);
        k = 1 + Math.abs((new Random(System.currentTimeMillis())).nextInt()) % i;
        locale = Locale.US;
        aobj = new Object[1];
        aobj[0] = Integer.valueOf(k);
        s = String.format(locale, "%02d", aobj);
        l = b.c(getContext(), (new StringBuilder()).append("ranking_").append(s).toString());
        a.setImageDrawable(getResources().getDrawable(l));
    }
}
