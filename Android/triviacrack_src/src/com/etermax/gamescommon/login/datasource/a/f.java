// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource.a;

import com.etermax.gamescommon.login.datasource.dto.SocialAccountDTO;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.login.datasource.dto.UserInfo;
import com.etermax.gamescommon.login.datasource.dto.UserListDTO;
import java.util.HashMap;
import java.util.List;
import org.a.a.a.a;
import org.b.c.b;
import org.b.c.b.j;
import org.b.c.l;
import org.b.e.a.k;

// Referenced classes of package com.etermax.gamescommon.login.datasource.a:
//            e

public final class f
    implements e
{

    private k a;
    private String b;
    private a c;

    public f()
    {
        a = new k();
        b = "";
        a.c().add(new j());
    }

    public UserDTO a(Long long1, SocialAccountDTO socialaccountdto)
    {
        b b1 = new b(socialaccountdto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", long1);
        UserDTO userdto;
        try
        {
            userdto = (UserDTO)a.a(b.concat("/users/{userId}/check-social-account"), org.b.c.f.b, b1, com/etermax/gamescommon/login/datasource/dto/UserDTO, hashmap).b();
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
        return userdto;
    }

    public UserListDTO a(String s)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("email", s);
        UserListDTO userlistdto;
        try
        {
            userlistdto = (UserListDTO)a.a(b.concat("/search?email={email}"), org.b.c.f.a, null, com/etermax/gamescommon/login/datasource/dto/UserListDTO, hashmap).b();
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
        return userlistdto;
    }

    public void a(UserInfo userinfo)
    {
        b b1 = new b(userinfo);
        try
        {
            a.a(b.concat("/reset-password"), org.b.c.f.b, b1, null, new Object[0]);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(Long long1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", long1);
        try
        {
            a.a(b.concat("/users/{userId}/logout"), org.b.c.f.b, null, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(Long long1, String s)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", long1);
        hashmap.put("network", s);
        try
        {
            a.a(b.concat("/users/{userId}/link?network={network}"), org.b.c.f.f, null, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(k k1)
    {
        a = k1;
    }

    public void b(String s)
    {
        b = s;
    }
}
