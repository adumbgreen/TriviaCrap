// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource.a;

import com.etermax.gamescommon.login.datasource.dto.SocialAccountDTO;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.login.datasource.dto.UserInfo;
import java.util.List;
import org.a.a.a.a;
import org.b.c.b;
import org.b.c.b.j;
import org.b.c.f;
import org.b.c.l;
import org.b.e.a.k;

// Referenced classes of package com.etermax.gamescommon.login.datasource.a:
//            c

public final class d
    implements c
{

    private k a;
    private String b;
    private a c;

    public d()
    {
        a = new k();
        b = "";
        a.c().add(new j());
    }

    public l a(SocialAccountDTO socialaccountdto)
    {
        b b1 = new b(socialaccountdto);
        l l;
        try
        {
            l = a.a(b.concat("/social-login"), f.b, b1, com/etermax/gamescommon/login/datasource/dto/UserDTO, new Object[0]);
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return l;
    }

    public l a(UserInfo userinfo)
    {
        b b1 = new b(userinfo);
        l l;
        try
        {
            l = a.a(b.concat("/login"), f.b, b1, com/etermax/gamescommon/login/datasource/dto/UserDTO, new Object[0]);
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return l;
    }

    public void a(String s)
    {
        b = s;
    }

    public void a(k k1)
    {
        a = k1;
    }

    public l b(SocialAccountDTO socialaccountdto)
    {
        b b1 = new b(socialaccountdto);
        l l;
        try
        {
            l = a.a(b.concat("/social-users"), f.b, b1, com/etermax/gamescommon/login/datasource/dto/UserDTO, new Object[0]);
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return l;
    }

    public l b(UserInfo userinfo)
    {
        b b1 = new b(userinfo);
        l l;
        try
        {
            l = a.a(b.concat("/users"), f.b, b1, com/etermax/gamescommon/login/datasource/dto/UserDTO, new Object[0]);
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return l;
    }
}
