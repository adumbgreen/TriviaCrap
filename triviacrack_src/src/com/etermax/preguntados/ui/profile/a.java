// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.content.res.Resources;
import android.support.v4.app.Fragment;
import com.etermax.gamescommon.b.an;
import com.etermax.gamescommon.datasource.e;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.login.datasource.dto.UserListDTO;
import com.etermax.gamescommon.profile.ui.c;
import com.etermax.gamescommon.user.UserGridView;
import com.etermax.gamescommon.user.a.b;
import com.etermax.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            b, c, ProfileActivity

public class a extends c
    implements com.etermax.gamescommon.user.a
{

    public static String e = "user_id_profile";
    protected e f;
    protected com.etermax.gamescommon.login.datasource.a g;
    protected long h;
    private final int i = 500;

    public a()
    {
    }

    public static Fragment a(long l)
    {
        return com.etermax.preguntados.ui.profile.b.f().a(l).a();
    }

    static void a(a a1, Object obj)
    {
        a1.a(obj);
    }

    protected String a(boolean flag)
    {
        if (flag)
        {
            return getString(o.error_find_users);
        } else
        {
            return getString(o.empty_user_blacklist);
        }
    }

    public void a(Long long1)
    {
        if (long1.longValue() != 0L)
        {
            startActivity(ProfileActivity.a(getActivity(), long1.longValue(), an.f.toString()));
        }
    }

    protected void b()
    {
        (new com.etermax.tools.i.a(getResources().getString(o.loading)) {

            final a a;

            public Object a()
            {
                return a.f.f();
            }

            protected void a(a a1, UserListDTO userlistdto)
            {
                super.a(a1, userlistdto);
                if (userlistdto.getList() == null)
                {
                    userlistdto.setList(new ArrayList());
                }
                if (userlistdto.getList().size() > 500)
                {
                    userlistdto.setList(userlistdto.getList().subList(0, 500));
                }
                if (userlistdto.getList() != null && !userlistdto.getList().isEmpty())
                {
                    for (Iterator iterator = userlistdto.getList().iterator(); iterator.hasNext(); ((UserDTO)iterator.next()).setIs_app_user(true)) { }
                }
                a.a(a, userlistdto.getList());
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (UserListDTO)obj1);
            }

            
            {
                a = a.this;
                super(s);
            }
        }).a(this);
    }

    protected boolean c()
    {
        return true;
    }

    public int d()
    {
        if (c != null)
        {
            return -1 + c.getCount();
        } else
        {
            return 0;
        }
    }

    protected void e()
    {
        a(getString(o.blocked_plural));
        b.setListener(this);
    }

}
