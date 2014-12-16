// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource.a;

import com.etermax.gamescommon.login.datasource.dto.DeviceInfo;
import com.etermax.gamescommon.login.datasource.dto.SocialAccountDTO;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.login.datasource.dto.UserInfo;
import java.util.HashMap;
import java.util.List;
import org.a.a.a.a;
import org.b.c.b.j;
import org.b.c.f;
import org.b.c.l;
import org.b.e.a.k;

// Referenced classes of package com.etermax.gamescommon.login.datasource.a:
//            a

public final class b
    implements com.etermax.gamescommon.login.datasource.a.a
{

    private k a;
    private String b;
    private a c;

    public b()
    {
        a = new k();
        b = "";
        a.c().add(new j());
    }

    public UserDTO a(Long long1, SocialAccountDTO socialaccountdto)
    {
        org.b.c.b b1 = new org.b.c.b(socialaccountdto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", long1);
        UserDTO userdto;
        try
        {
            userdto = (UserDTO)a.a(b.concat("/users/{userId}/link"), f.b, b1, com/etermax/gamescommon/login/datasource/dto/UserDTO, hashmap).b();
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

    public void a(Long long1, DeviceInfo deviceinfo)
    {
        org.b.c.b b1 = new org.b.c.b(deviceinfo);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", long1);
        try
        {
            a.a(b.concat("/users/{userId}/devices"), f.b, b1, null, hashmap);
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

    public void a(Long long1, UserInfo userinfo)
    {
        org.b.c.b b1 = new org.b.c.b(userinfo);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", long1);
        try
        {
            a.a(b.concat("/users/{userId}"), f.e, b1, null, hashmap);
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

    public void a(String s)
    {
        b = s;
    }

    public void a(k k1)
    {
        a = k1;
    }

    public UserDTO b(Long long1, SocialAccountDTO socialaccountdto)
    {
        org.b.c.b b1 = new org.b.c.b(socialaccountdto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", long1);
        UserDTO userdto;
        try
        {
            userdto = (UserDTO)a.a(b.concat("/users/{userId}/link?keep=true"), f.b, b1, com/etermax/gamescommon/login/datasource/dto/UserDTO, hashmap).b();
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

    public l b(Long long1, UserInfo userinfo)
    {
        org.b.c.b b1 = new org.b.c.b(userinfo);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", long1);
        l l1;
        try
        {
            l1 = a.a(b.concat("/users/{userId}/account-link"), f.b, b1, com/etermax/gamescommon/login/datasource/dto/UserDTO, hashmap);
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
        return l1;
    }
}
