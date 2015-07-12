// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.widget;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.f;
import com.etermax.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;

// Referenced classes of package com.etermax.preguntados.ui.dashboard.widget:
//            a

public class b extends a
{

    private View b;
    private TextView c;
    private TextView d;
    private ImageView e;

    public b(Context context, com.etermax.preguntados.ui.dashboard.h h1)
    {
        super(context, h1);
    }

    public void a()
    {
        b = findViewById(i.container);
        c = (TextView)findViewById(i.title);
        d = (TextView)findViewById(i.text);
        e = (ImageView)findViewById(i.image);
    }

    public void b()
    {
        android.graphics.drawable.Drawable drawable;
label0:
        {
            b.setBackgroundColor(getResources().getColor(f.duel_blue));
            c.setText(getResources().getString(o.group_challenge));
            d.setText(getResources().getString(o.friends_challenge_txt));
            drawable = getResources().getDrawable(h.amigos_dashboard);
            if (drawable != null)
            {
                if (android.os.Build.VERSION.SDK_INT >= 16)
                {
                    break label0;
                }
                e.setBackgroundDrawable(drawable);
            }
            return;
        }
        e.setBackground(drawable);
    }

    public void getClickAction()
    {
        a.A();
    }

    public int getLayoutResourceId()
    {
        return k.button_duel_group_layout;
    }
}
