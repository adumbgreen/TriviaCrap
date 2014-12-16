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
    implements f
{

    final a a;

    public void a()
    {
        String s = (new StringBuilder()).append("https://graph.facebook.com/").append(a.a.g.j()).append("/picture?width=%s&height=%s").toString();
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(640);
        aobj[1] = Integer.valueOf(640);
        String s1 = String.format(s, aobj);
        a.a.c = j.a(a.a.getApplicationContext(), a.a, s1, a.a);
        com.etermax.preguntados.ui.profile.ProfileActivity.b(a.a);
    }

    public void a(String s)
    {
        a.a.c = j.a(a.a.getApplicationContext(), a.a, s, a.a);
        com.etermax.preguntados.ui.profile.ProfileActivity.b(a.a);
    }

    public void b(String s)
    {
        com.etermax.preguntados.ui.profile.ProfileActivity.b(a.a);
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/etermax/preguntados/ui/profile/ProfileActivity$1

/* anonymous class */
    class ProfileActivity._cls1
        implements c
    {

        final ProfileDTO a;
        final ProfileActivity b;

        public void a()
        {
            com.etermax.preguntados.ui.profile.ProfileActivity.a(b);
            b.i.a(new ProfileActivity._cls1._cls1(this));
        }

        public void b()
        {
        }

        public void c()
        {
        }

            
            {
                b = profileactivity;
                a = profiledto;
                super();
            }
    }

}
