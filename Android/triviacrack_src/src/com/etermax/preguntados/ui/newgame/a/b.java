// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.a;

import com.etermax.gamescommon.h.a.e;
import com.etermax.gamescommon.h.a.g;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.user.a.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.newgame.a:
//            a

class b
    implements g
{

    final a a;

    private b(a a1)
    {
        a = a1;
        super();
    }

    b(a a1, a._cls1 _pcls1)
    {
        this(a1);
    }

    public volatile List a(Object obj)
    {
        return a((List)obj);
    }

    public List a(List list)
    {
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        ArrayList arraylist2 = new ArrayList();
        if (list != null)
        {
            for (Iterator iterator = list.iterator(); iterator.hasNext();)
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
        if (arraylist1.size() > 0)
        {
            f f1 = new f();
            f1.a(e.f);
            f1.a(false);
            f1.a(arraylist1);
            arraylist.add(f1);
        }
        if (arraylist2.size() > 0)
        {
            f f2 = new f();
            f2.a(e.g);
            f2.a(false);
            f2.a(arraylist2);
            arraylist.add(f2);
        }
        return arraylist;
    }
}
