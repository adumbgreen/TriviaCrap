// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.b;

import android.view.View;
import android.widget.GridView;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.CustomFontTextView;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.newgame.b:
//            c, d, b, e

public class a extends b
{

    GameDTO a;
    GridView b;
    CustomFontTextView c;
    CustomFontTextView d;

    public a()
    {
    }

    public static a a(GameDTO gamedto)
    {
        return com.etermax.preguntados.ui.newgame.b.c.c().a(gamedto).a();
    }

    public com.etermax.preguntados.ui.newgame.b.b a()
    {
        return new com.etermax.preguntados.ui.newgame.b.b() {

            final a a;

            public void b(GameDTO gamedto)
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    void a(View view)
    {
        ((com.etermax.preguntados.ui.newgame.b.b)mCallbacks).b(a);
    }

    public void b()
    {
        c.setText(Integer.toString(a.getMaxReward()));
        d.setText(Integer.toString(a.getDuelPlayers().size()));
        e e1 = new e(getActivity(), a.getDuelPlayers());
        b.setAdapter(e1);
        b.setOverScrollMode(2);
    }

    public Object getDummyCallbacks()
    {
        return a();
    }
}
