// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.PodiumDTO;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            l, ProfileRankingsItemView

public class ProfileRankingsView extends LinearLayout
{

    TextView a;
    ProfileRankingsItemView b;
    ProfileRankingsItemView c;
    ProfileRankingsItemView d;

    public ProfileRankingsView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public void setRankings(PodiumDTO podiumdto)
    {
        a.setText(getResources().getString(o.weekly_ranking));
        b.a(l.a, podiumdto.getFirstPlace());
        c.a(l.b, podiumdto.getSecondPlace());
        d.a(l.c, podiumdto.getThirdPlace());
    }
}
