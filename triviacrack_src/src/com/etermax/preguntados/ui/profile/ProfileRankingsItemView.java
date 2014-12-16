// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            l

public class ProfileRankingsItemView extends LinearLayout
{

    TextView a;
    ImageView b;
    TextView c;

    public ProfileRankingsItemView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public void a(l l1, int i)
    {
        a.setText(getResources().getString(l1.a()));
        b.setImageDrawable(getResources().getDrawable(l1.b()));
        c.setText(String.valueOf(i));
    }
}
