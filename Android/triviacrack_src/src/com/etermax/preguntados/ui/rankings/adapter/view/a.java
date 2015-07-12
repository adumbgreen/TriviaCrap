// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings.adapter.view;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.a.b;
import com.etermax.h;
import com.etermax.j;
import com.etermax.o;
import com.etermax.preguntados.ui.game.duelmode.adapter.f;
import java.util.Locale;
import java.util.Random;

public class a extends LinearLayout
    implements f
{

    View a;
    ImageView b;
    View c;
    TextView d;
    TextView e;
    TextView f;
    TextView g;
    TextView h;

    public a(Context context)
    {
        super(context);
    }

    protected void a()
    {
        int i = getResources().getInteger(j.rankings_image_count);
        int k = 1 + Math.abs((new Random(System.currentTimeMillis())).nextInt()) % i;
        Locale locale = Locale.US;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(k);
        String s = String.format(locale, "%02d", aobj);
        int l = com.etermax.a.b.c(getContext(), (new StringBuilder()).append("ranking_").append(s).append("_semanal").toString());
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            setBackground(getResources().getDrawable(h.ranking_bg));
        } else
        {
            setBackgroundDrawable(getResources().getDrawable(h.ranking_bg));
        }
        c.setVisibility(0);
        b.setImageDrawable(getResources().getDrawable(l));
        h.setText(getResources().getString(o.time_unit_day_plural));
    }

    public void a(long l)
    {
        int i = (int)(l / 0x36ee80L) / 24;
        int k = (int)(l / 0x36ee80L) % 24;
        int i1 = (int)((l / 60000L) % 60L);
        int j1 = (int)(l / 1000L) % 60;
        TextView textview = d;
        Locale locale = Locale.US;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i);
        textview.setText(String.format(locale, "%02d", aobj));
        TextView textview1 = e;
        Locale locale1 = Locale.US;
        Object aobj1[] = new Object[1];
        aobj1[0] = Integer.valueOf(k);
        textview1.setText(String.format(locale1, "%02d", aobj1));
        TextView textview2 = f;
        Locale locale2 = Locale.US;
        Object aobj2[] = new Object[1];
        aobj2[0] = Integer.valueOf(i1);
        textview2.setText(String.format(locale2, "%02d", aobj2));
        TextView textview3 = g;
        Locale locale3 = Locale.US;
        Object aobj3[] = new Object[1];
        aobj3[0] = Integer.valueOf(j1);
        textview3.setText(String.format(locale3, "%02d", aobj3));
    }
}
