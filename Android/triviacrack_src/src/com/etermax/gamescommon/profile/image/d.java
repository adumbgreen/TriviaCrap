// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.image;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.profile.image:
//            b, a

class d extends ArrayAdapter
{

    final a a;

    public d(a a1, Context context, int i, int j, List list)
    {
        a = a1;
        super(context, i, j, list);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        View view1 = super.getView(i, view, viewgroup);
        TextView textview = (TextView)view1.findViewById(0x1020014);
        b b1 = (b)getItem(i);
        int j = (int)(0.5F + 32F * getContext().getResources().getDisplayMetrics().density);
        b1.c.setBounds(0, 0, j, j);
        textview.setCompoundDrawables(b1.c, null, null, null);
        textview.setCompoundDrawablePadding((int)(0.5F + 5F * getContext().getResources().getDisplayMetrics().density));
        return view1;
    }
}
