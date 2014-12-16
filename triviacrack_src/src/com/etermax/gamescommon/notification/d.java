// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.notification;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.notification:
//            b

public class d
{

    private List a;

    public d()
    {
        a = new ArrayList();
    }

    public void a(b b1)
    {
        a.add(b1);
    }

    public boolean a(Bundle bundle)
    {
        Iterator iterator = a.iterator();
        boolean flag = false;
        while (iterator.hasNext()) 
        {
            boolean flag1;
            if (((b)iterator.next()).a_(bundle))
            {
                flag1 = flag | true;
            } else
            {
                flag1 = flag;
            }
            flag = flag1;
        }
        return flag;
    }

    public void b(b b1)
    {
        a.remove(b1);
    }
}
