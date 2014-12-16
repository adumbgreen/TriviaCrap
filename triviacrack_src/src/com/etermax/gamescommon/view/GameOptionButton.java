// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.k;
import com.etermax.q;

public class GameOptionButton extends RelativeLayout
{

    private ImageView a;
    private TextView b;

    public GameOptionButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context, attributeset);
    }

    public GameOptionButton(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
        a(context, attributeset);
    }

    private void a(Context context, AttributeSet attributeset)
    {
        inflate(context, k.game_option_button, this);
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, q.GameOptionButton);
        int j = typedarray.getResourceId(0, 0);
        int l = typedarray.getResourceId(1, 0);
        typedarray.recycle();
        a = (ImageView)findViewById(i.game_option_image);
        b = (TextView)findViewById(i.game_option_label);
        if (j > 0)
        {
            a.setImageResource(j);
        }
        if (l > 0)
        {
            b.setText(l);
        }
    }

    public void setText(String s)
    {
        b.setText(s);
    }
}
