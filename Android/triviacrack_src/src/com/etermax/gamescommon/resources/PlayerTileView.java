// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.resources;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.ImageView;
import com.etermax.gamescommon.dashboard.c;
import com.etermax.h;
import com.etermax.q;
import com.etermax.tools.j.f;

public class PlayerTileView extends ImageView
    implements c
{

    private String a;
    private int b;
    private boolean c;

    public PlayerTileView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = false;
        a(context, attributeset);
    }

    public PlayerTileView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        c = false;
        a(context, attributeset);
    }

    private static int a(int i, Context context)
    {
        return (int)TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    private void a(Context context, AttributeSet attributeset)
    {
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, q.PlayerTileView);
        a = typedarray.getString(0);
        b = typedarray.getInt(1, 0);
        c = typedarray.getBoolean(2, false);
        typedarray.recycle();
    }

    public void a()
    {
        if (c)
        {
            setImageBitmap(f.b(BitmapFactory.decodeResource(getResources(), h.dashboard_random), a(6, getContext())));
            return;
        } else
        {
            setImageResource(h.dashboard_random);
            return;
        }
    }

    public void a(String s)
    {
        if (!s.contains("@"))
        {
            s = (new StringBuilder()).append("@").append(s).toString();
        }
        int i = 1 + Math.abs(s.hashCode()) % b;
        String s1 = (new StringBuilder()).append(a).append(i).toString();
        int j = getContext().getResources().getIdentifier(s1, "drawable", getContext().getPackageName());
        if (c)
        {
            setImageBitmap(f.a(BitmapFactory.decodeResource(getResources(), j), 0.08F));
            return;
        } else
        {
            setImageResource(j);
            return;
        }
    }

    public void b(String s)
    {
        setBackgroundColor(getResources().getColor(com.etermax.f.dashboard_avatar_waiting));
    }
}
