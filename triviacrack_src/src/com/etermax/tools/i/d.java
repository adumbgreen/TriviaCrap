// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.i;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.widget.Toast;
import com.etermax.a.b;
import com.etermax.o;
import com.etermax.tools.g.a;
import com.etermax.tools.widget.b.c;

// Referenced classes of package com.etermax.tools.i:
//            f

public abstract class d extends f
{

    private boolean a;

    public d()
    {
        a = true;
    }

    private void c(FragmentActivity fragmentactivity)
    {
        if (!fragmentactivity.isFinishing())
        {
            c c1 = (c)fragmentactivity.getSupportFragmentManager().findFragmentByTag("no_connection_dialog");
            if (c1 == null)
            {
                c1 = com.etermax.tools.widget.b.c.b(fragmentactivity.getString(o.no_internet_connection), fragmentactivity.getString(o.ok));
            }
            if (!c1.isAdded())
            {
                c1.show(fragmentactivity.getSupportFragmentManager(), "no_connection_dialog");
            }
        }
    }

    protected void a(Exception exception, String s)
    {
        if (a)
        {
            if (com.etermax.tools.g.a.a())
            {
                exception.printStackTrace();
            }
            com.etermax.a.a.c("ErrorManagedAsyncTask", s);
            Toast.makeText(j(), s, 1).show();
        }
    }

    protected void a(Object obj, Exception exception)
    {
        super.a(obj, exception);
        com.etermax.tools.b.c c1 = com.etermax.tools.b.c.a(j());
        String s = c1.a(obj.getClass(), exception);
        c1.a(obj.getClass(), exception, a);
        a(exception, s);
    }

    public void b(boolean flag)
    {
        a = flag;
    }

    protected boolean b(FragmentActivity fragmentactivity)
    {
        if (com.etermax.a.b.g(fragmentactivity))
        {
            return super.b(fragmentactivity);
        } else
        {
            c(fragmentactivity);
            return false;
        }
    }
}
