// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;

public class d extends RelativeLayout
    implements Comparable
{

    TextView a;
    TextView b;
    TextView c;
    ImageView d;
    TextView e;
    int f;

    public d(Context context)
    {
        super(context);
        a();
    }

    public int a(d d1)
    {
        return f > d1.getPercentage() ? -1 : 1;
    }

    protected void a()
    {
        inflate(getContext(), k.profile_category_item, this);
        d = (ImageView)findViewById(i.category_icon);
        a = (TextView)findViewById(i.category_percentage);
        c = (TextView)findViewById(i.category_title);
        b = (TextView)findViewById(i.question_quantity_value);
        e = (TextView)findViewById(i.question_quantity_title);
        e.setText((new StringBuilder()).append(getContext().getString(o.question_plural)).append(":").toString());
    }

    public void b()
    {
        findViewById(i.separator_category).setVisibility(4);
    }

    public int compareTo(Object obj)
    {
        return a((d)obj);
    }

    public int getPercentage()
    {
        return f;
    }

    public void setCategoryTitle(int j)
    {
        c.setText(getContext().getString(j));
    }

    public void setCharacterImage(int j)
    {
        d.setImageResource(j);
    }

    public void setPercentage(int j)
    {
        f = j;
        a.setText((new StringBuilder()).append(String.valueOf(j)).append("%").toString());
    }

    public void setPercentageTextColor(int j)
    {
        a.setTextColor(getContext().getResources().getColor(j));
    }

    public void setQuantity(int j)
    {
        b.setText(String.valueOf(j));
    }
}
