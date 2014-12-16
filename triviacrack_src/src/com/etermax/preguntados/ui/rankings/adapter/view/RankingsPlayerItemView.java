// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings.adapter.view;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.f;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.preguntados.datasource.dto.UserRankDTO;

public class RankingsPlayerItemView extends LinearLayout
{

    View a;
    TextView b;
    ViewSwitcher c;
    TextView d;
    TextView e;
    TextView f;
    TextView g;
    protected b h;

    public RankingsPlayerItemView(Context context)
    {
        super(context);
        a();
    }

    public RankingsPlayerItemView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public RankingsPlayerItemView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a();
    }

    private void a()
    {
        h = new b();
    }

    public void a(long l, com.etermax.preguntados.ui.rankings.b b1)
    {
        c.setOnClickListener(new android.view.View.OnClickListener(b1, l) {

            final com.etermax.preguntados.ui.rankings.b a;
            final long b;
            final RankingsPlayerItemView c;

            public void onClick(View view)
            {
                a.a(Long.valueOf(b));
            }

            
            {
                c = RankingsPlayerItemView.this;
                a = b1;
                b = l;
                super();
            }
        });
    }

    public void a(UserRankDTO userrankdto)
    {
        Resources resources = getResources();
        b.setText(String.valueOf(userrankdto.getPosition()));
        h.a(c, userrankdto.getUser());
        if (TextUtils.isEmpty(userrankdto.getUser().getFacebook_name()))
        {
            e.setText(userrankdto.getUser().getVisibleUsername());
            f.setVisibility(8);
        } else
        {
            e.setText(userrankdto.getUser().getFacebook_name());
            f.setText(userrankdto.getUser().getVisibleUsername());
            f.setVisibility(0);
        }
        d.setText(String.valueOf(userrankdto.getScore()));
        g.setVisibility(8);
        if (userrankdto.isMe())
        {
            a.setBackgroundColor(resources.getColor(f.rankings_player_background));
            b.setTextColor(resources.getColor(f.white));
            e.setTextColor(resources.getColor(f.white));
            f.setTextColor(resources.getColor(f.white));
            d.setTextColor(resources.getColor(f.white));
            g.setTextColor(resources.getColor(f.white));
            return;
        } else
        {
            a.setBackgroundColor(resources.getColor(f.white));
            b.setTextColor(resources.getColor(f.gray));
            e.setTextColor(resources.getColor(f.grayDark));
            f.setTextColor(resources.getColor(f.gray));
            d.setTextColor(resources.getColor(f.rankings_player_background));
            return;
        }
    }
}
