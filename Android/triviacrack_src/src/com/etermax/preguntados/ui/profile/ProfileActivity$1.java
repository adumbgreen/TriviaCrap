// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import com.etermax.gamescommon.login.datasource.a;
import com.etermax.gamescommon.social.c;
import com.etermax.preguntados.datasource.dto.ProfileDTO;
import com.etermax.preguntados.sharing.j;
import com.etermax.tools.social.a.b;
import com.etermax.tools.social.a.f;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            ProfileActivity

class a
    implements c
{

    final ProfileDTO a;
    final ProfileActivity b;

    public void a()
    {
        com.etermax.preguntados.ui.profile.ProfileActivity.a(b);
        b.i.a(new f() {

            final ProfileActivity._cls1 a;

            public void a()
            {
                String s = (new StringBuilder()).append("https://graph.facebook.com/").append(a.b.g.j()).append("/picture?width=%s&height=%s").toString();
                Object aobj[] = new Object[2];
                aobj[0] = Integer.valueOf(640);
                aobj[1] = Integer.valueOf(640);
                String s1 = String.format(s, aobj);
                a.b.c = j.a(a.b.getApplicationContext(), a.a, s1, a.b);
                com.etermax.preguntados.ui.profile.ProfileActivity.b(a.b);
            }

            public void a(String s)
            {
                a.b.c = j.a(a.b.getApplicationContext(), a.a, s, a.b);
                com.etermax.preguntados.ui.profile.ProfileActivity.b(a.b);
            }

            public void b(String s)
            {
                com.etermax.preguntados.ui.profile.ProfileActivity.b(a.b);
            }

            
            {
                a = ProfileActivity._cls1.this;
                super();
            }
        });
    }

    public void b()
    {
    }

    public void c()
    {
    }

    _cls1.a(ProfileActivity profileactivity, ProfileDTO profiledto)
    {
        b = profileactivity;
        a = profiledto;
        super();
    }
}
