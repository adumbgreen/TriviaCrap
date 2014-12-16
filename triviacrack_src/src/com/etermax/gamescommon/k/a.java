// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.k;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.etermax.g;
import com.etermax.i;
import com.etermax.k;

public class a
    implements android.view.KeyEvent.Callback
{

    RelativeLayout a;
    View b;
    ImageView c;
    PopupWindow d;
    private final Context e;
    private final LayoutInflater f;

    public a(Context context, View view)
    {
        d = null;
        b = view;
        e = context;
        f = ((Activity)e).getLayoutInflater();
        a = (RelativeLayout)f.inflate(k.common_quick_action, null);
        c = (ImageView)a.findViewById(i.quick_action_arrow);
        a.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-2, -2));
    }

    private void a(int j)
    {
        int l = j - c.getDrawable().getIntrinsicWidth() / 2;
        ((android.view.ViewGroup.MarginLayoutParams)c.getLayoutParams()).leftMargin = l;
    }

    public void a()
    {
        ((TextView)a.findViewById(i.quick_action_title)).setVisibility(8);
    }

    public void a(int j, int l, boolean flag, boolean flag1, boolean flag2)
    {
        int j1;
        float f1;
        float f2;
        a.measure(0, 0);
        int i1 = a.getMeasuredHeight();
        j1 = a.getMeasuredWidth();
        int ai[] = new int[2];
        b.getLocationInWindow(ai);
        d = new PopupWindow(a, j1, i1);
        d.setOutsideTouchable(false);
        a(false, false, false);
        d.showAtLocation(b, 0, l + ai[0], ai[1] - d.getHeight());
        f1 = e.getResources().getDimension(g.quick_action_arrow_left_padding);
        f2 = e.getResources().getDimension(g.quick_action_arrow_right_padding);
        j;
        JVM INSTR tableswitch 0 2: default 164
    //                   0 182
    //                   1 200
    //                   2 190;
           goto _L1 _L2 _L3 _L4
_L1:
        int k1 = b.getWidth() / 2;
_L6:
        a(k1);
        return;
_L2:
        k1 = (int)f1;
        continue; /* Loop/switch isn't completed */
_L4:
        b.getWidth() / 2;
_L3:
        k1 = (int)((float)j1 - f2);
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void a(String s)
    {
        TextView textview = (TextView)a.findViewById(i.quick_action_text);
        textview.setText(s);
        textview.setTypeface(null, 1);
    }

    public void a(boolean flag, boolean flag1, boolean flag2)
    {
        d.setFocusable(flag);
        d.setTouchable(flag1);
        d.setOutsideTouchable(flag2);
        d.setBackgroundDrawable(new ColorDrawable(0));
    }

    public void b()
    {
        if (d != null)
        {
            d.dismiss();
            d = null;
        }
    }

    public boolean onKeyDown(int j, KeyEvent keyevent)
    {
        return false;
    }

    public boolean onKeyLongPress(int j, KeyEvent keyevent)
    {
        return false;
    }

    public boolean onKeyMultiple(int j, int l, KeyEvent keyevent)
    {
        return false;
    }

    public boolean onKeyUp(int j, KeyEvent keyevent)
    {
        return false;
    }
}
