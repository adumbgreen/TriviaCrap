// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.navigation;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.k;
import java.util.Locale;

public class NavigationPanelSectionView extends LinearLayout
{

    public NavigationPanelSectionView(Context context)
    {
        super(context);
        a();
    }

    public NavigationPanelSectionView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    private void a()
    {
        inflate(getContext(), k.navigation_panel_section_layout, this);
    }

    public void setText(String s)
    {
        TextView textview = (TextView)findViewById(i.title);
        if (textview != null)
        {
            textview.setText(s.toUpperCase(Locale.ENGLISH));
        }
    }
}
