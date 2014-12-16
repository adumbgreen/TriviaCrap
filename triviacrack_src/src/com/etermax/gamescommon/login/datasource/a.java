// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource;

import android.content.Context;
import com.etermax.gamescommon.login.accountmanager.shared.SharedAccountManager;
import com.etermax.tools.nationality.Nationality;
import java.util.Date;
import java.util.UUID;

public class a
{

    protected Context a;
    private com.etermax.gamescommon.login.accountmanager.a b;
    private com.etermax.gamescommon.login.accountmanager.a c;

    public a()
    {
    }

    private long a(long l1, long l2)
    {
        if (l2 != 0L && l2 != l1)
        {
            return l2;
        } else
        {
            s();
            return 0L;
        }
    }

    private com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender a(com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender gender, com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender gender1)
    {
        if (gender1 != null && gender1 != gender)
        {
            return gender1;
        } else
        {
            s();
            return null;
        }
    }

    private Nationality a(Nationality nationality, Nationality nationality1)
    {
        if (nationality1 != null && nationality1 != nationality)
        {
            return nationality1;
        } else
        {
            s();
            return null;
        }
    }

    private String a(String s1, String s2)
    {
        if (s2 != null && !s2.equals(s1))
        {
            return s2;
        } else
        {
            s();
            return null;
        }
    }

    private Date a(Date date, Date date1)
    {
        if (date1 != null && date1 != date)
        {
            return date1;
        } else
        {
            s();
            return null;
        }
    }

    private void s()
    {
        if (b.p() && !c.p())
        {
            c.a(b.c(), b.d(), b.e(), b.f(), b.g(), b.h(), b.i(), b.j(), b.k(), b.l(), b.m(), b.n(), b.o());
        }
    }

    protected void a()
    {
        b = new com.etermax.gamescommon.login.accountmanager.a.a(a);
        c = new SharedAccountManager(a);
    }

    public void a(Nationality nationality)
    {
        b.a(nationality);
        s();
        c.a(nationality);
    }

    public void a(String s1)
    {
        b.b(s1);
        s();
        c.b(s1);
    }

    public void a(String s1, long l1, String s2, String s3, boolean flag, String s4, 
            String s5, String s6, boolean flag1, boolean flag2, com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender gender, Date date, Nationality nationality)
    {
        com.etermax.a.a.c("CredentialsManager", (new StringBuilder()).append("cookie: ").append(s1).append("\nuserid: ").append(l1).append("\nemail: ").append(s2).append("\nusername: ").append(s3).append("\nfacebookid: ").append(s5).toString());
        b.a(s1, l1, s2, s3, flag, s4, s5, s6, flag1, flag2, gender, date, nationality);
        if (s1 != null && s2 != null)
        {
            c.a(s1, l1, s2, s3, flag, s4, s5, s6, flag1, flag2, gender, date, nationality);
            c.f(b.b());
        }
    }

    public void a(boolean flag)
    {
        b.a(flag);
        s();
        c.a(flag);
    }

    public void b()
    {
        b.a();
        c.a();
    }

    public void b(String s1)
    {
        b.g(s1);
        s();
        c.a(b.c(), b.d(), s1, b.f(), b.g(), b.h(), b.i(), b.j(), b.k(), b.l(), b.m(), b.n(), b.o());
    }

    public void b(boolean flag)
    {
        b.b(flag);
        s();
        c.b(flag);
    }

    public void c(String s1)
    {
        b.c(s1);
        s();
        c.c(s1);
    }

    public void c(boolean flag)
    {
        b.c(flag);
        s();
        c.c(flag);
    }

    public boolean c()
    {
        return b.b() != null;
    }

    public String d()
    {
        String s1 = b.c();
        String s2 = a(s1, c.c());
        if (s2 != null)
        {
            b.a(s2);
            return s2;
        } else
        {
            return s1;
        }
    }

    public String d(boolean flag)
    {
        String s1 = b.b();
        String s2 = c.b();
        if (s1 == null && s2 != null)
        {
            return s2;
        }
        if (s1 != null && s2 == null)
        {
            return s1;
        }
        if (s1 == null && s2 == null)
        {
            if (flag)
            {
                return UUID.randomUUID().toString();
            } else
            {
                return null;
            }
        } else
        {
            return s1;
        }
    }

    public void d(String s1)
    {
        b.d(s1);
        s();
        c.d(s1);
    }

    public long e()
    {
        long l1 = b.d();
        long l2 = a(l1, c.d());
        if (l2 > 0L)
        {
            ((com.etermax.gamescommon.login.accountmanager.a.a)b).a(l2);
            l1 = l2;
        }
        return l1;
    }

    public void e(String s1)
    {
        b.e(s1);
        s();
        c.e(s1);
    }

    public String f()
    {
        String s1 = b.e();
        String s2 = a(s1, c.e());
        if (s2 != null)
        {
            ((com.etermax.gamescommon.login.accountmanager.a.a)b).g(s2);
            s1 = s2;
        }
        return s1;
    }

    public void f(String s1)
    {
        b.f(s1);
        c.f(s1);
    }

    public String g()
    {
        String s1 = b.f();
        String s2 = a(s1, c.f());
        if (s2 != null)
        {
            b.b(s2);
            return s2;
        } else
        {
            return s1;
        }
    }

    public boolean h()
    {
        boolean flag;
        if (c.p())
        {
            flag = c.g();
            if (flag != b.g())
            {
                b.a(flag);
            }
        } else
        {
            flag = b.g();
        }
        s();
        return flag;
    }

    public String i()
    {
        String s1 = b.h();
        String s2 = a(s1, c.h());
        if (s2 != null)
        {
            b.e(s2);
            return s2;
        } else
        {
            return s1;
        }
    }

    public String j()
    {
        String s1 = b.i();
        String s2 = a(s1, c.i());
        if (s2 != null)
        {
            b.c(s2);
            return s2;
        } else
        {
            return s1;
        }
    }

    public String k()
    {
        String s1 = b.j();
        String s2 = a(s1, c.j());
        if (s2 != null)
        {
            b.c(s2);
        } else
        {
            s2 = s1;
        }
        if (s2 == null)
        {
            s2 = g();
        }
        return s2;
    }

    public boolean l()
    {
        boolean flag;
        if (c.p())
        {
            flag = c.k();
            if (flag != b.k())
            {
                b.b(flag);
            }
        } else
        {
            flag = b.k();
        }
        s();
        return flag;
    }

    public boolean m()
    {
        boolean flag;
        if (c.p())
        {
            flag = c.l();
            if (flag != b.l())
            {
                b.c(flag);
            }
        } else
        {
            flag = b.l();
        }
        s();
        return flag;
    }

    public Nationality n()
    {
        Nationality nationality = b.o();
        Nationality nationality1 = a(nationality, c.o());
        if (nationality1 != null)
        {
            ((com.etermax.gamescommon.login.accountmanager.a.a)b).a(nationality1);
            nationality = nationality1;
        }
        return nationality;
    }

    public com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender o()
    {
        com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender gender = b.m();
        com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender gender1 = a(gender, c.m());
        if (gender1 != null)
        {
            ((com.etermax.gamescommon.login.accountmanager.a.a)b).a(gender1);
            gender = gender1;
        }
        return gender;
    }

    public Date p()
    {
        Date date = b.n();
        Date date1 = a(date, c.n());
        if (date1 != null)
        {
            ((com.etermax.gamescommon.login.accountmanager.a.a)b).a(date1);
            date = date1;
        }
        return date;
    }

    public boolean q()
    {
        return e() > 0L;
    }

    public boolean r()
    {
        return f() == null;
    }
}
