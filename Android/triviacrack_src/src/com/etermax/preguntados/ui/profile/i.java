// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.content.Intent;
import android.content.res.Resources;
import android.support.v4.app.Fragment;
import com.etermax.gamescommon.b.an;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.login.datasource.dto.UserListDTO;
import com.etermax.gamescommon.profile.ui.c;
import com.etermax.gamescommon.user.UserGridView;
import com.etermax.gamescommon.user.a;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            j, k, ProfileActivity

public class i extends c
    implements a
{

    protected long e;
    protected String f;
    protected com.etermax.gamescommon.login.datasource.a g;
    protected d h;
    private final int i = 500;
    private final int j = 1;
    private boolean k;

    public i()
    {
        k = true;
    }

    public static Fragment a(long l, String s)
    {
        return com.etermax.preguntados.ui.profile.j.e().a(l).a(s).a();
    }

    static void a(i l, Object obj)
    {
        l.a(obj);
    }

    protected String a(boolean flag)
    {
        if (flag)
        {
            return getString(o.error_find_users);
        }
        if (g.e() == e)
        {
            return getString(o.empty_user_friendlist);
        } else
        {
            String s = getString(o.empty_other_friendlist);
            Object aobj[] = new Object[1];
            aobj[0] = f;
            return String.format(s, aobj);
        }
    }

    public void a(Long long1)
    {
        if (long1.longValue() != 0L)
        {
            startActivity(com.etermax.preguntados.ui.profile.ProfileActivity.a(getActivity(), long1.longValue(), an.d.toString()));
        }
    }

    protected void b()
    {
        (new com.etermax.tools.i.a(getResources().getString(o.loading)) {

            final i a;

            public Object a()
            {
                return a.h.f(a.e);
            }

            protected void a(i l, UserListDTO userlistdto)
            {
                super.a(l, userlistdto);
                if (userlistdto.getList() == null)
                {
                    userlistdto.setList(new ArrayList());
                }
                if (userlistdto.getList().size() > 500)
                {
                    userlistdto.setList(userlistdto.getList().subList(0, 500));
                }
                for (Iterator iterator = userlistdto.getList().iterator(); iterator.hasNext(); ((UserDTO)iterator.next()).setIs_app_user(true)) { }
                com.etermax.preguntados.ui.profile.i.a(a, userlistdto.getList());
            }

            protected void a(i l, Exception exception)
            {
                super.a(l, exception);
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((i)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((i)obj, (UserListDTO)obj1);
            }

            
            {
                a = i.this;
                super(s);
            }
        }).a(this);
    }

    protected boolean c()
    {
        return k;
    }

    protected void d()
    {
        a(getString(o.friend_plural));
        b.setListener(this);
    }

    public void onActivityResult(int l, int i1, Intent intent)
    {
        super.onActivityResult(l, i1, intent);
        if (l == 1)
        {
            k = false;
        }
    }

    public void onResume()
    {
        super.onResume();
        k = true;
    }
}
