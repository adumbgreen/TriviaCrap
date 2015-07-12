// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.social;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.etermax.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.tools.widget.CustomFontTextView;

public class TileImageView extends RelativeLayout
{

    private CustomFontTextView a;
    private CustomFontTextView b;

    public TileImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public TileImageView(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
        a();
    }

    private void a()
    {
        inflate(getContext(), k.tile_avatar_layout, this);
        setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-2, -2));
        setBackgroundResource(h.chat_tile);
        a = (CustomFontTextView)findViewById(i.tile_image_big_letter);
        b = (CustomFontTextView)findViewById(i.tile_image_number_value);
        setFocusableInTouchMode(false);
    }

    public void setBigLetter(String s)
    {
        a.setText(s);
    }

    public void setImageIcon(Bitmap bitmap)
    {
        ImageView imageview = (ImageView)findViewById(i.tile_image_downloaded);
        if (imageview != null)
        {
            imageview.setImageBitmap(bitmap);
            setBackgroundColor(0);
        }
        a.setVisibility(8);
        b.setVisibility(8);
    }
}
