// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.suggestedopponent;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.etermax.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.tools.widget.CustomFontTextView;

public class FacebookSimpleItemView extends RelativeLayout
{

    private CustomFontTextView a;
    private CustomFontTextView b;
    private ImageView c;

    public FacebookSimpleItemView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public FacebookSimpleItemView(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
        a();
    }

    private void a()
    {
        inflate(getContext(), k.facebook_simple_item_layout, this);
        a = (CustomFontTextView)findViewById(i.facebook_simple_item_title);
        b = (CustomFontTextView)findViewById(i.facebook_simple_item_description);
        c = (ImageView)findViewById(i.facebook_simple_item_image);
        setBackgroundResource(h.fb_button_background);
    }

    public void setCapitalizedFirstLetterTitle(String s)
    {
        a.setText(com.etermax.tools.j.i.a(s));
    }

    public void setDescription(String s)
    {
        b.setText(s);
    }

    public void setTitle(String s)
    {
        a.setText(s);
    }
}
