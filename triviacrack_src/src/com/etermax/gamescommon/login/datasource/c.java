// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import com.etermax.a.b;
import com.etermax.gamescommon.e;
import com.etermax.gamescommon.g;
import com.etermax.gamescommon.login.datasource.dto.DeviceInfo;
import com.etermax.gamescommon.login.datasource.dto.SocialAccountDTO;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.login.datasource.dto.UserInfo;
import com.etermax.gamescommon.login.datasource.dto.UserListDTO;
import com.etermax.tools.a.a.a;
import com.etermax.tools.a.a.j;
import com.etermax.tools.i.f;
import com.etermax.tools.nationality.Nationality;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.b.c.l;

// Referenced classes of package com.etermax.gamescommon.login.datasource:
//            a

public class c extends a
{

    protected com.etermax.gamescommon.login.datasource.a.c a;
    protected com.etermax.gamescommon.login.datasource.a.e b;
    protected com.etermax.gamescommon.login.datasource.a.a c;
    protected com.etermax.gamescommon.login.datasource.a d;
    protected com.etermax.tools.social.a.b e;
    protected j f;
    protected e g;
    protected com.etermax.gamescommon.datasource.l h;
    protected com.etermax.gamescommon.notification.c i;
    private String j;
    private AtomicBoolean k;
    private boolean l;

    public c()
    {
        l = false;
    }

    static Context a(c c1)
    {
        return c1.s;
    }

    static Object a(c c1, com.etermax.tools.a.a.c c2)
    {
        return c1.a(c2);
    }

    static void a(c c1, org.b.c.c c2, UserDTO userdto, String s)
    {
        c1.a(c2, userdto, s);
    }

    private void a(org.b.c.c c1, UserDTO userdto, String s)
    {
        String s1 = null;
        if (c1 != null)
        {
            boolean flag = c1.containsKey("Set-Cookie");
            s1 = null;
            if (flag)
            {
                String s2 = c1.a("Set-Cookie");
                s1 = s2.substring(0, s2.indexOf(';'));
            }
        }
        d.a(s1, userdto.getId().longValue(), userdto.getEmail(), userdto.getUsername(), userdto.getHas_pass(), userdto.getPhotoUrl(), userdto.getFacebook_id(), userdto.getFacebook_name(), userdto.getFb_show_name(), userdto.getFb_show_picture(), userdto.getGender(), userdto.getBirthdate(), userdto.getNationality());
        if (s != null)
        {
            d.f(s);
        }
    }

    private String h()
    {
        String s = com.etermax.a.b.c(this.s);
        boolean flag;
        if (s != null && !s.equals("9774d56d682e549c") && !s.toLowerCase(Locale.getDefault()).equals("null"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            return s;
        } else
        {
            return d.d(true);
        }
    }

    private void i()
    {
        if (!H())
        {
            throw new com.etermax.tools.a.c.c();
        } else
        {
            return;
        }
    }

    private DeviceInfo j()
    {
        String s = t.b();
        if (l && Build.MANUFACTURER.equals("Amazon"))
        {
            s = "AMAZON";
        }
        String s1 = h();
        String s2 = d.d(false);
        if (s2 != null && s1.equals(s2))
        {
            s2 = null;
        }
        DeviceInfo deviceinfo = new DeviceInfo(s, s1, s2);
        String s3 = i.a(this.s);
        if (s3.length() > 0)
        {
            deviceinfo.setNotification_id(s3);
        }
        if (((com.etermax.tools.j.b)this.s).y())
        {
            deviceinfo.setAccount_type("PRO");
        }
        return deviceinfo;
    }

    public UserDTO a(String s)
    {
        i();
        DeviceInfo deviceinfo = j();
        UserInfo userinfo = new UserInfo();
        userinfo.setUsername(s);
        userinfo.setUser_device(deviceinfo);
        l l1 = a.a(userinfo);
        a(l1.a(), (UserDTO)l1.b(), deviceinfo.getInstallation_id());
        return (UserDTO)l1.b();
    }

    public UserDTO a(String s, String s1)
    {
        i();
        DeviceInfo deviceinfo = j();
        UserInfo userinfo = new UserInfo(s, s1, deviceinfo);
        userinfo.setValidate_domain(true);
        l l1 = a.a(userinfo);
        a(l1.a(), (UserDTO)l1.b(), deviceinfo.getInstallation_id());
        return (UserDTO)l1.b();
    }

    public UserDTO a(String s, String s1, String s2)
    {
        return a(s, s1, s2, ((String) (null)), ((String) (null)));
    }

    public UserDTO a(String s, String s1, String s2, String s3)
    {
        DeviceInfo deviceinfo = j();
        UserInfo userinfo = new UserInfo();
        userinfo.setUser_device(deviceinfo);
        SocialAccountDTO socialaccountdto = new SocialAccountDTO(s, s1, s2, userinfo, s3);
        l l1 = a.a(socialaccountdto);
        a(l1.a(), (UserDTO)l1.b(), deviceinfo.getInstallation_id());
        return (UserDTO)l1.b();
    }

    public UserDTO a(String s, String s1, String s2, String s3, String s4)
    {
        DeviceInfo deviceinfo = j();
        UserInfo userinfo = new UserInfo();
        userinfo.setUser_device(deviceinfo);
        userinfo.setLanguage(Locale.getDefault().getLanguage());
        userinfo.setEmail(s3);
        userinfo.setPassword(s4);
        SocialAccountDTO socialaccountdto = new SocialAccountDTO(s, s1, s2, userinfo);
        l l1 = a.b(socialaccountdto);
        a(l1.a(), (UserDTO)l1.b(), deviceinfo.getInstallation_id());
        return (UserDTO)l1.b();
    }

    public UserDTO a(String s, String s1, String s2, String s3, boolean flag)
    {
        UserInfo userinfo = new UserInfo();
        DeviceInfo deviceinfo = j();
        userinfo.setUser_device(deviceinfo);
        UserDTO userdto = (UserDTO)a(new com.etermax.tools.a.a.c(flag, new SocialAccountDTO(s, s1, s3, userinfo, s2)) {

            final boolean a;
            final SocialAccountDTO b;
            final c c;

            public UserDTO a()
            {
                if (a)
                {
                    return c.c.b(Long.valueOf(c.d.e()), b);
                } else
                {
                    return c.c.a(Long.valueOf(c.d.e()), b);
                }
            }

            public Object b()
            {
                return a();
            }

            
            {
                c = c.this;
                a = flag;
                b = socialaccountdto;
                super();
            }
        });
        a(((org.b.c.c) (null)), userdto, deviceinfo.getInstallation_id());
        return userdto;
    }

    public void a(Context context)
    {
        com.etermax.tools.g.a.a(null);
        Long long1 = Long.valueOf(d.e());
        j = d.d();
        e.d();
        g.b(g.t, 0L);
        g.b(g.u, "");
        f();
        h.b();
        (new com.etermax.gamescommon.f.a.b(context)).a(com/etermax/gamescommon/f/b/a);
        (new f(long1) {

            final Long a;
            final c b;

            public Object a()
            {
                b.b.a(a);
                return null;
            }

            
            {
                b = c.this;
                a = long1;
                super();
            }
        }).a(context);
        i.a(s, false);
    }

    public void a(Nationality nationality)
    {
        a(d.g(), null, null, null, null, nationality);
    }

    public void a(String s, Context context)
    {
        a(new com.etermax.tools.a.a.c(s) {

            final String a;
            final c b;

            public Void a()
            {
                b.b.a(Long.valueOf(b.d.e()), a);
                b.d.c(null);
                b.d.d(null);
                b.e.d();
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = c.this;
                a = s;
                super();
            }
        });
    }

    public void a(String s, String s1, com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender gender, Date date, Nationality nationality)
    {
        a(s, s1, null, gender, date, nationality);
    }

    public void a(String s, String s1, String s2, com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender gender, Date date, Nationality nationality)
    {
        UserInfo userinfo = new UserInfo();
        userinfo.setUser_device(j());
        userinfo.setUsername(s);
        if (s1 != null && s1.length() > 0)
        {
            userinfo.setNew_password(s1);
        }
        if (s2 != null && s2.length() > 0)
        {
            userinfo.setEmail(s2);
            userinfo.setGuest(true);
        }
        userinfo.setGender(gender);
        userinfo.setBirthdate(date);
        userinfo.setNationality(nationality);
        a(new com.etermax.tools.a.a.c(userinfo, s, s2, s1) {

            final UserInfo a;
            final String b;
            final String c;
            final String d;
            final c e;

            public Void a()
            {
                e.c.a(Long.valueOf(e.d.e()), a);
                if (!e.d.g().equals(b))
                {
                    e.d.a(b);
                }
                if (c != null && !c.equals(e.d.f()))
                {
                    e.d.b(c);
                }
                if (d != null && d.length() > 0)
                {
                    e.d.a(true);
                }
                e.a();
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                e = c.this;
                a = userinfo;
                b = s;
                c = s1;
                d = s2;
                super();
            }
        });
    }

    public boolean a()
    {
        boolean flag = true;
        boolean flag1;
        Exception exception;
        Exception exception1;
        Exception exception2;
        if (!k.compareAndSet(false, flag))
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        this;
        JVM INSTR monitorenter ;
        this;
        JVM INSTR monitorexit ;
        return flag;
        exception2;
        this;
        JVM INSTR monitorexit ;
        throw exception2;
        this;
        JVM INSTR monitorenter ;
        if (d.f() == null) goto _L2; else goto _L1
_L1:
        b(d.f());
_L4:
        k.set(false);
        this;
        JVM INSTR monitorexit ;
        return flag;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
_L2:
        if (d.g() != null)
        {
            a(d.g());
            continue; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_112;
        exception;
        k.set(false);
        throw exception;
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public UserDTO b(String s)
    {
        i();
        DeviceInfo deviceinfo = j();
        UserInfo userinfo = new UserInfo(s, deviceinfo);
        userinfo.setValidate_domain(true);
        l l1 = a.a(userinfo);
        a(l1.a(), (UserDTO)l1.b(), deviceinfo.getInstallation_id());
        return (UserDTO)l1.b();
    }

    public UserDTO b(String s, String s1, String s2)
    {
        return (UserDTO)a(new com.etermax.tools.a.a.c(new SocialAccountDTO(s, s1, s2)) {

            final SocialAccountDTO a;
            final c b;

            public UserDTO a()
            {
                return b.b.a(Long.valueOf(b.d.e()), a);
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = c.this;
                a = socialaccountdto;
                super();
            }
        });
    }

    protected String b()
    {
        if (j != null)
        {
            String s = j;
            j = null;
            return s;
        } else
        {
            return d.d();
        }
    }

    public void b(String s, String s1)
    {
        a(s, s1, null, null, null, null);
    }

    public UserDTO c(String s)
    {
        DeviceInfo deviceinfo = j();
        UserInfo userinfo = new UserInfo(s, deviceinfo);
        userinfo.setAutogenerate_username(true);
        userinfo.setLanguage(Locale.getDefault().getLanguage());
        l l1 = a.b(userinfo);
        a(l1.a(), (UserDTO)l1.b(), deviceinfo.getInstallation_id());
        return (UserDTO)l1.b();
    }

    public void c()
    {
        a.a(F());
        b.a(F());
        c.a(F());
        try
        {
            Class.forName("com.amazon.device.messaging.ADM");
            l = true;
        }
        catch (ClassNotFoundException classnotfoundexception) { }
        if (l && Build.MANUFACTURER.equals("Amazon"))
        {
            i = new com.etermax.gamescommon.notification.adm.a(s);
        } else
        {
            i = new com.etermax.gamescommon.notification.gcm.a();
        }
        k = new AtomicBoolean(false);
    }

    public void c(String s, String s1)
    {
        UserInfo userinfo = new UserInfo();
        userinfo.setEmail(s);
        userinfo.setPassword(s1);
        a(new com.etermax.tools.a.a.c(userinfo) {

            final UserInfo a;
            final c b;

            public Void a()
            {
                l l1 = b.c.b(Long.valueOf(b.d.e()), a);
                b.f();
                com.etermax.gamescommon.login.datasource.c.a(b, l1.a(), (UserDTO)l1.b(), null);
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = c.this;
                a = userinfo;
                super();
            }
        });
    }

    public UserDTO d(String s, String s1)
    {
        UserListDTO userlistdto = b.a(s);
        if (userlistdto.getList() != null && userlistdto.getList().size() == 1)
        {
            UserDTO userdto = (UserDTO)userlistdto.getList().get(0);
            userdto.setEmail(s);
            userdto.setHas_pass(false);
            a(((org.b.c.c) (null)), userdto, null);
            com.etermax.tools.g.a.a(s1);
            return userdto;
        } else
        {
            throw new com.etermax.gamescommon.login.datasource.b.b(303);
        }
    }

    protected com.etermax.tools.a.b.a d()
    {
        return new com.etermax.gamescommon.login.datasource.b.a();
    }

    public void d(String s)
    {
        if (d.q())
        {
            DeviceInfo deviceinfo = j();
            deviceinfo.setNotification_id(s);
            (new AsyncTask(deviceinfo) {

                final DeviceInfo a;
                final c b;

                protected transient Void a(Void avoid[])
                {
                    try
                    {
                        com.etermax.gamescommon.login.datasource.c.a(b, new com.etermax.tools.a.a.c(this) {

                            final _cls4 a;

                            public Void a()
                            {
                                a.b.c.a(Long.valueOf(a.b.d.e()), a.a);
                                a.b.i.a(com.etermax.gamescommon.login.datasource.c.a(a.b), true);
                                if (a.a.getInstallation_id() != null)
                                {
                                    a.b.d.f(a.a.getInstallation_id());
                                }
                                return null;
                            }

                            public Object b()
                            {
                                return a();
                            }

            
            {
                a = _pcls4;
                super();
            }
                        });
                    }
                    catch (Exception exception) { }
                    return null;
                }

                protected Object doInBackground(Object aobj[])
                {
                    return a((Void[])aobj);
                }

            
            {
                b = c.this;
                a = deviceinfo;
                super();
            }
            }).execute(new Void[0]);
        }
    }

    public void e()
    {
        a.a(f.b());
        b.b(f.b());
        c.a(f.b());
    }

    public void e(String s)
    {
        b(d.g(), s);
    }

    public Void f(String s)
    {
        b.a(new UserInfo(s));
        return null;
    }

    public void f()
    {
        d.b();
    }

    public void g()
    {
        i.a(s, this);
    }
}
