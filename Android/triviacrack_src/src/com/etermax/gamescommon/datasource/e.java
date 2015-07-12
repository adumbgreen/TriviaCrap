// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource;

import android.text.TextUtils;
import com.etermax.a.a;
import com.etermax.gamescommon.d;
import com.etermax.gamescommon.datasource.dto.AchievementDTO;
import com.etermax.gamescommon.datasource.dto.AdsDTO;
import com.etermax.gamescommon.datasource.dto.ChatHeaderListDTO;
import com.etermax.gamescommon.datasource.dto.MessagingPanelDTO;
import com.etermax.gamescommon.datasource.dto.MessagingPanelSearchDTO;
import com.etermax.gamescommon.datasource.dto.PreferencesDTO;
import com.etermax.gamescommon.gifting.dto.GiftActionDTO;
import com.etermax.gamescommon.gifting.dto.GiftsDTO;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.login.datasource.dto.UserListDTO;
import com.etermax.gamescommon.mediation.MediationManager;
import com.etermax.gamescommon.shop.dto.ConfirmationListDTO;
import com.etermax.gamescommon.shop.dto.ProductListDTO;
import com.etermax.gamescommon.shop.dto.TransactionInfo;
import com.etermax.tools.a.a.j;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import org.b.b.a.c;
import org.b.d.g;
import org.b.d.h;

// Referenced classes of package com.etermax.gamescommon.datasource:
//            h, j, g, f

public class e extends d
{

    protected com.etermax.gamescommon.datasource.a.a c;
    protected j d;
    com.etermax.gamescommon.datasource.j e;
    MediationManager f;
    private ArrayList g;

    public e()
    {
    }

    static com.etermax.gamescommon.login.datasource.a a(e e1)
    {
        return e1.b;
    }

    static ArrayList b(e e1)
    {
        return e1.g;
    }

    static com.etermax.gamescommon.login.datasource.a c(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a d(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a e(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a f(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a g(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a h(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a i(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a j(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a k(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a l(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a m(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a n(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a o(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a p(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a q(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a r(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a s(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a t(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a u(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a v(e e1)
    {
        return e1.b;
    }

    static com.etermax.gamescommon.login.datasource.a w(e e1)
    {
        return e1.b;
    }

    public ChatHeaderListDTO a(int i1)
    {
        return (ChatHeaderListDTO)a(new com.etermax.tools.a.a.c(i1) {

            final int a;
            final e b;

            public ChatHeaderListDTO a()
            {
                return b.c.a(com.etermax.gamescommon.datasource.e.g(b).e(), a);
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = e.this;
                a = i1;
                super();
            }
        });
    }

    public MessagingPanelSearchDTO a(String s1)
    {
        if (TextUtils.isEmpty(s1) || s1.length() < 3)
        {
            return null;
        } else
        {
            return (MessagingPanelSearchDTO)a(new com.etermax.tools.a.a.c(s1) {

                final String a;
                final e b;

                public MessagingPanelSearchDTO a()
                {
                    return b.c.a(e.k(b).e(), a);
                }

                public Object b()
                {
                    return a();
                }

            
            {
                b = e.this;
                a = s1;
                super();
            }
            });
        }
    }

    public ConfirmationListDTO a(String s1, String s2)
    {
        return (ConfirmationListDTO)a(new com.etermax.tools.a.a.c(new TransactionInfo(s1, s2)) {

            final TransactionInfo a;
            final e b;

            public ConfirmationListDTO a()
            {
                return b.c.a(e.r(b).e(), a);
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = e.this;
                a = transactioninfo;
                super();
            }
        });
    }

    public Void a(long l1)
    {
        return (Void)a(new com.etermax.tools.a.a.c(l1) {

            final long a;
            final e b;

            public Void a()
            {
                UserDTO userdto = new UserDTO();
                userdto.setId(Long.valueOf(a));
                b.c.a(com.etermax.gamescommon.datasource.e.a(b).e(), userdto);
                if (e.b(b) != null)
                {
                    for (Iterator iterator = e.b(b).iterator(); iterator.hasNext(); ((f)iterator.next()).a(Long.valueOf(a))) { }
                }
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = e.this;
                a = l1;
                super();
            }
        });
    }

    public Void a(File file)
    {
        g g1 = new g();
        g1.a("fileToUpload", new c(file));
        return (Void)a(new com.etermax.tools.a.a.c(g1) {

            final h a;
            final e b;

            public Void a()
            {
                try
                {
                    b.c.a(e.u(b).e(), a);
                }
                catch (Exception exception) { }
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = e.this;
                a = h1;
                super();
            }
        });
    }

    public void a(long l1, GiftActionDTO giftactiondto)
    {
        a(new com.etermax.tools.a.a.c(l1, giftactiondto) {

            final long a;
            final GiftActionDTO b;
            final e c;

            public Void a()
            {
                c.c.a(Long.valueOf(e.q(c).e()), a, b);
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                c = e.this;
                a = l1;
                b = giftactiondto;
                super();
            }
        });
    }

    void a(AdsDTO adsdto, Class class1, com.etermax.gamescommon.datasource.h h1, com.etermax.gamescommon.datasource.g g1)
    {
        String s2;
        String s1 = null;
        AdsDTO adsdto1;
        try
        {
            adsdto1 = (AdsDTO)h1.b();
        }
        catch (Exception exception)
        {
            s1 = "Exception in ads request. Using saved one";
            com.etermax.a.a.c("ADS", (new StringBuilder()).append(s1).append(": ").append(exception.getMessage()).toString());
            adsdto1 = adsdto;
        }
        if (adsdto1 != null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        adsdto1 = (AdsDTO)class1.newInstance();
        adsdto1.setLastUpdateTime(System.currentTimeMillis());
        f.setMediationConf(adsdto1.getMediationconf());
        e.a("com.etermax.ads", adsdto1);
        s2 = s1;
_L2:
        if (g1 != null)
        {
            a(g1, s2);
        }
        return;
        Exception exception1;
        exception1;
        com.etermax.a.a.c("ADS", (new StringBuilder()).append("Exception in ads!").append(" ").append(exception1.getMessage()).toString());
        s2 = "Exception in ads!";
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void a(PreferencesDTO preferencesdto)
    {
        a(new com.etermax.tools.a.a.c(preferencesdto) {

            final PreferencesDTO a;
            final e b;

            public Void a()
            {
                b.c.a(Long.valueOf(e.n(b).e()), a);
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = e.this;
                a = preferencesdto;
                super();
            }
        });
    }

    public void a(f f1)
    {
        if (g == null)
        {
            g = new ArrayList();
        }
        g.add(f1);
    }

    void a(com.etermax.gamescommon.datasource.g g1, String s1)
    {
        if (g1 != null)
        {
            g1.a(s1);
        }
    }

    public void a(GiftActionDTO giftactiondto)
    {
        a(new com.etermax.tools.a.a.c(giftactiondto) {

            final GiftActionDTO a;
            final e b;

            public Void a()
            {
                b.c.a(Long.valueOf(e.p(b).e()), a);
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = e.this;
                a = giftactiondto;
                super();
            }
        });
    }

    public void a(Class class1, com.etermax.gamescommon.datasource.h h1, boolean flag, com.etermax.gamescommon.datasource.g g1)
    {
        AdsDTO adsdto = (AdsDTO)e.a("com.etermax.ads", class1);
        if (flag || adsdto == null || adsdto.getLastUpdateTime() <= 0L || System.currentTimeMillis() - adsdto.getLastUpdateTime() > (long)(1000 * adsdto.getTtl()))
        {
            a(adsdto, class1, h1, g1);
        } else
        if (g1 != null)
        {
            g1.a("Request not needed");
            return;
        }
    }

    public void a(Long long1)
    {
        a(new com.etermax.tools.a.a.c(long1) {

            final Long a;
            final e b;

            public Void a()
            {
                UserDTO userdto = new UserDTO(a);
                b.c.c(e.w(b).e(), userdto);
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = e.this;
                a = long1;
                super();
            }
        });
    }

    public void a(boolean flag, com.etermax.gamescommon.datasource.g g1)
    {
        a(com/etermax/gamescommon/datasource/dto/AdsDTO, new com.etermax.gamescommon.datasource.h() {

            final e a;

            public AdsDTO a()
            {
                return a.c.b();
            }

            public Object b()
            {
                return a();
            }

            
            {
                a = e.this;
                super();
            }
        }, flag, g1);
    }

    public AchievementDTO[] a(com.etermax.gamescommon.datasource.dto.AchievementDTO.Status status)
    {
        return (AchievementDTO[])a(new com.etermax.tools.a.a.c(status) {

            final com.etermax.gamescommon.datasource.dto.AchievementDTO.Status a;
            final e b;

            public AchievementDTO[] a()
            {
                return b.c.a(e.t(b).e(), a);
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = e.this;
                a = status;
                super();
            }
        });
    }

    public MessagingPanelDTO b(int i1)
    {
        return (MessagingPanelDTO)a(new com.etermax.tools.a.a.c(i1) {

            final int a;
            final e b;

            public MessagingPanelDTO a()
            {
                return b.c.a(e.i(b).e(), "mf", a);
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = e.this;
                a = i1;
                super();
            }
        });
    }

    public Void b(long l1)
    {
        return (Void)a(new com.etermax.tools.a.a.c(l1) {

            final long a;
            final e b;

            public Void a()
            {
                b.c.a(com.etermax.gamescommon.datasource.e.c(b).e(), a);
                if (e.b(b) != null)
                {
                    for (Iterator iterator = e.b(b).iterator(); iterator.hasNext(); ((f)iterator.next()).b(Long.valueOf(a))) { }
                }
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = e.this;
                a = l1;
                super();
            }
        });
    }

    public void b(String s1, String s2)
    {
        a(new com.etermax.tools.a.a.c(new TransactionInfo("AMAZON", s1, s2)) {

            final TransactionInfo a;
            final e b;

            public Void a()
            {
                b.c.a(e.s(b).e(), a);
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = e.this;
                a = transactioninfo;
                super();
            }
        });
    }

    public MessagingPanelDTO c(int i1)
    {
        return (MessagingPanelDTO)a(new com.etermax.tools.a.a.c(i1) {

            final int a;
            final e b;

            public MessagingPanelDTO a()
            {
                return b.c.a(com.etermax.gamescommon.datasource.e.j(b).e(), "so", a);
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = e.this;
                a = i1;
                super();
            }
        });
    }

    public Void c(long l1)
    {
        return (Void)a(new com.etermax.tools.a.a.c(l1) {

            final long a;
            final e b;

            public Void a()
            {
                UserDTO userdto = new UserDTO();
                userdto.setId(Long.valueOf(a));
                b.c.b(e.e(b).e(), userdto);
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = e.this;
                a = l1;
                super();
            }
        });
    }

    public void c()
    {
        c.a(F());
    }

    protected com.etermax.tools.a.b.a d()
    {
        return new com.etermax.gamescommon.datasource.b.a();
    }

    public Void d(long l1)
    {
        return (Void)a(new com.etermax.tools.a.a.c(l1) {

            final long a;
            final e b;

            public Void a()
            {
                b.c.b(e.f(b).e(), a);
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = e.this;
                a = l1;
                super();
            }
        });
    }

    public void e()
    {
        c.a(d.b());
    }

    public void e(long l1)
    {
        a(new com.etermax.tools.a.a.c(l1) {

            final long a;
            final e b;

            public Void a()
            {
                b.c.a(Long.valueOf(e.l(b).e()), Long.valueOf(a));
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = e.this;
                a = l1;
                super();
            }
        });
    }

    public UserListDTO f()
    {
        return (UserListDTO)a(new com.etermax.tools.a.a.c() {

            final e a;

            public UserListDTO a()
            {
                return a.c.a(com.etermax.gamescommon.datasource.e.d(a).e());
            }

            public Object b()
            {
                return a();
            }

            
            {
                a = e.this;
                super();
            }
        });
    }

    public MessagingPanelDTO g()
    {
        return (MessagingPanelDTO)a(new com.etermax.tools.a.a.c() {

            final e a;

            public MessagingPanelDTO a()
            {
                return a.c.b(com.etermax.gamescommon.datasource.e.h(a).e());
            }

            public Object b()
            {
                return a();
            }

            
            {
                a = e.this;
                super();
            }
        });
    }

    public PreferencesDTO h()
    {
        return (PreferencesDTO)a(new com.etermax.tools.a.a.c() {

            final e a;

            public PreferencesDTO a()
            {
                return a.c.a(Long.valueOf(e.m(a).e()));
            }

            public Object b()
            {
                return a();
            }

            
            {
                a = e.this;
                super();
            }
        });
    }

    public GiftsDTO i()
    {
        return (GiftsDTO)a(new com.etermax.tools.a.a.c() {

            final e a;

            public GiftsDTO a()
            {
                return a.c.b(Long.valueOf(e.o(a).e()));
            }

            public Object b()
            {
                return a();
            }

            
            {
                a = e.this;
                super();
            }
        });
    }

    public ProductListDTO j()
    {
        return c.a();
    }

    public void k()
    {
        a(new com.etermax.tools.a.a.c() {

            final e a;

            public Void a()
            {
                a.c.c(e.v(a).e());
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                a = e.this;
                super();
            }
        });
    }

    public void l()
    {
        a(false, ((com.etermax.gamescommon.datasource.g) (null)));
    }
}
