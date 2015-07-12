// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.support.v4.app.Fragment;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.SuggestedOpponentDTO;
import com.etermax.tools.i.a;
import java.util.ArrayList;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            r, o

public class q extends a
{

    final o a;
    private String b;
    private r c;

    public q(o o1, String s, r r1)
    {
        a = o1;
        super();
        b = s;
        c = r1;
    }

    public Object a()
    {
        return b();
    }

    public void a(Fragment fragment, SuggestedOpponentDTO suggestedopponentdto)
    {
        super.a(fragment, suggestedopponentdto);
        if (suggestedopponentdto.getList() == null)
        {
            suggestedopponentdto.setList(new ArrayList());
        }
        c.a(suggestedopponentdto);
    }

    public volatile void a(Object obj, Object obj1)
    {
        a((Fragment)obj, (SuggestedOpponentDTO)obj1);
    }

    public SuggestedOpponentDTO b()
    {
        return a.a.a(b);
    }
}
