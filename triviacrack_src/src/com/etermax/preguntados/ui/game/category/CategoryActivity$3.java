// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.UserLevelDataDTO;
import com.etermax.tools.i.a;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            CategoryActivity

class a extends a
{

    final long a;
    final CategoryActivity b;

    public Object a()
    {
        return b();
    }

    protected void a(CategoryActivity categoryactivity, List list)
    {
        if (list != null && list.size() > 0)
        {
            int i = -1 + list.size();
            categoryactivity.a(com.etermax.preguntados.ui.b.a.a((UserLevelDataDTO)list.get(i)), (new StringBuilder()).append("NEW_LEVEL_").append(((UserLevelDataDTO)list.get(i)).getLevel()).toString(), true);
        }
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((CategoryActivity)obj, (List)obj1);
    }

    public List b()
    {
        return b.n.g(a);
    }

    A(CategoryActivity categoryactivity, long l)
    {
        b = categoryactivity;
        a = l;
        super();
    }
}
