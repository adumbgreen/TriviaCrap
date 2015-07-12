// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.achievements.ui;

import android.support.v4.app.Fragment;
import android.widget.GridView;
import android.widget.ListView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.datasource.e;
import com.etermax.tools.navigation.b;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.achievements.ui:
//            f, a, i, j, 
//            k, h, l

public class g extends b
{

    e a;
    k b;
    protected ListView c;
    protected ViewSwitcher d;
    protected GridView e;
    protected ViewSwitcher f;
    final int g = 0;
    final int h = 1;

    public g()
    {
    }

    static void a(g g1, List list)
    {
        g1.a(list);
    }

    private void a(List list)
    {
        c.setAdapter(new f(getActivity(), list));
        e.setAdapter(new a(getActivity(), list));
        f.setDisplayedChild(0);
    }

    public static Fragment b()
    {
        return i.f().a();
    }

    public h a()
    {
        return new h() {

            final g a;

            
            {
                a = g.this;
                super();
            }
        };
    }

    void c()
    {
        b.a(new l() {

            final g a;

            public void a(List list)
            {
                g.a(a, list);
            }

            
            {
                a = g.this;
                super();
            }
        });
    }

    public void d()
    {
        f.setDisplayedChild(1);
        d.setDisplayedChild(1);
    }

    public void e()
    {
        f.setDisplayedChild(0);
        d.setDisplayedChild(0);
    }

    public Object getDummyCallbacks()
    {
        return a();
    }
}
