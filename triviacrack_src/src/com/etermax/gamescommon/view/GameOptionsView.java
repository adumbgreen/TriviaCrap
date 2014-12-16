// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.etermax.i;
import com.etermax.k;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.etermax.gamescommon.view:
//            e, GameOptionButton, f

public class GameOptionsView extends LinearLayout
    implements android.view.View.OnClickListener
{

    private Map a;
    private f b;

    public GameOptionsView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = new HashMap();
        a(context);
    }

    public void a(Context context)
    {
        if (!isInEditMode())
        {
            inflate(context, k.game_options_layout, this);
            a.put(e.a, (GameOptionButton)findViewById(i.game_option_profile));
            a.put(e.b, (GameOptionButton)findViewById(i.game_option_chat));
            a.put(e.c, (GameOptionButton)findViewById(i.game_option_poke));
            a.put(e.d, (GameOptionButton)findViewById(i.game_option_reject));
            a.put(e.e, (GameOptionButton)findViewById(i.game_option_resign));
            a.put(e.f, (GameOptionButton)findViewById(i.game_option_delete));
            a.put(e.g, (GameOptionButton)findViewById(i.game_option_rematch));
            a.put(e.h, (GameOptionButton)findViewById(i.game_option_publish));
            e e1;
            for (Iterator iterator = a.keySet().iterator(); iterator.hasNext(); ((GameOptionButton)a.get(e1)).setOnClickListener(this))
            {
                e1 = (e)iterator.next();
            }

            setOnClickListener(null);
        }
    }

    public void onClick(View view)
    {
        if (b != null)
        {
            int j = view.getId();
            if (j == i.game_option_profile)
            {
                b.a();
            } else
            {
                if (j == i.game_option_chat)
                {
                    b.b();
                    return;
                }
                if (j == i.game_option_poke)
                {
                    b.c();
                    return;
                }
                if (j == i.game_option_reject)
                {
                    b.d();
                    return;
                }
                if (j == i.game_option_resign)
                {
                    b.e();
                    return;
                }
                if (j == i.game_option_delete)
                {
                    b.f();
                    return;
                }
                if (j == i.game_option_rematch)
                {
                    b.g();
                    return;
                }
                if (j == i.game_option_publish)
                {
                    b.h();
                    return;
                }
            }
        }
    }
}
