// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.a;

import com.etermax.gamescommon.h.a.e;
import com.etermax.gamescommon.h.a.g;
import com.etermax.gamescommon.user.a.f;
import com.etermax.preguntados.datasource.dto.SuggestedOpponentDTO;
import com.etermax.preguntados.datasource.dto.SuggestedOpponentsDTO;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.newgame.a:
//            a

class d
    implements g
{

    final a a;

    private d(a a1)
    {
        a = a1;
        super();
    }

    d(a a1, a._cls1 _pcls1)
    {
        this(a1);
    }

    public List a(SuggestedOpponentsDTO suggestedopponentsdto)
    {
        ArrayList arraylist = new ArrayList();
        if (suggestedopponentsdto.getRecent_opponents() != null && suggestedopponentsdto.getRecent_opponents().getList() != null)
        {
            List list1 = suggestedopponentsdto.getRecent_opponents().getList();
            if (list1 != null && list1.size() > 0)
            {
                f f2 = new f();
                f2.a(e.b);
                f2.a(false);
                f2.a(list1);
                arraylist.add(f2);
            }
        }
        if (suggestedopponentsdto.getSuggested_opponents() != null && suggestedopponentsdto.getSuggested_opponents().getList() != null)
        {
            List list = suggestedopponentsdto.getSuggested_opponents().getList();
            if (list != null && list.size() > 0)
            {
                f f1 = new f();
                f1.a(e.a);
                f1.a(false);
                f1.a(list);
                arraylist.add(f1);
            }
        }
        return arraylist;
    }

    public volatile List a(Object obj)
    {
        return a((SuggestedOpponentsDTO)obj);
    }
}
