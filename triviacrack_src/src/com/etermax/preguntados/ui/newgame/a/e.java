// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.a;

import com.etermax.gamescommon.h.a.g;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.user.a.f;
import com.etermax.preguntados.datasource.dto.SuggestedOpponentDTO;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.newgame.a:
//            a

class e
    implements g
{

    final a a;

    private e(a a1)
    {
        a = a1;
        super();
    }

    e(a a1, a._cls1 _pcls1)
    {
        this(a1);
    }

    public List a(SuggestedOpponentDTO suggestedopponentdto)
    {
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        ArrayList arraylist2 = new ArrayList();
        if (suggestedopponentdto != null && suggestedopponentdto.getList() != null)
        {
            for (Iterator iterator = suggestedopponentdto.getList().iterator(); iterator.hasNext();)
            {
                UserDTO userdto = (UserDTO)iterator.next();
                if (userdto.getIs_app_user())
                {
                    arraylist1.add(userdto);
                } else
                {
                    arraylist2.add(userdto);
                }
            }

        }
        if (!arraylist1.isEmpty())
        {
            f f1 = new f();
            f1.a(com.etermax.gamescommon.h.a.e.d);
            f1.a(false);
            f1.a(arraylist1);
            arraylist.add(f1);
        }
        if (!arraylist2.isEmpty())
        {
            f f2 = new f();
            f2.a(com.etermax.gamescommon.h.a.e.e);
            f2.a(false);
            f2.a(arraylist2);
            arraylist.add(f2);
        }
        return arraylist;
    }

    public volatile List a(Object obj)
    {
        return a((SuggestedOpponentDTO)obj);
    }
}
