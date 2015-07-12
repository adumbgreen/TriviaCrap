// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.widget.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.widget.a:
//            d

public class a extends ArrayAdapter
{

    private List a;

    public a(Context context, int i, List list)
    {
        super(context, i, list);
        a = list;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        View view1 = super.getView(i, view, viewgroup);
        TextView textview = (TextView)view1.findViewById(0x1020014);
        d d1 = (d)a.get(i);
        Drawable drawable = d1.a(getContext());
        int j = drawable.getIntrinsicWidth();
        int k = drawable.getIntrinsicHeight();
        drawable.setBounds(0, 0, (int)(0.5F + (float)((j * 32) / k) * getContext().getResources().getDisplayMetrics().density), (int)(0.5F + 32F * getContext().getResources().getDisplayMetrics().density));
        textview.setCompoundDrawables(drawable, null, null, null);
        textview.setCompoundDrawablePadding((int)(0.5F + 5F * getContext().getResources().getDisplayMetrics().density));
        textview.setText(d1.a());
        textview.setCompoundDrawables(drawable, null, null, null);
        return view1;
    }
}
