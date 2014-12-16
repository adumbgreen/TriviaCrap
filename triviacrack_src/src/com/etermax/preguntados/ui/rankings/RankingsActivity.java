// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import com.etermax.gamescommon.b.an;
import com.etermax.preguntados.sharing.ShareView;
import com.etermax.preguntados.sharing.m;
import com.etermax.preguntados.ui.profile.ProfileActivity;
import com.etermax.tools.navigation.BaseFragmentActivity;
import com.etermax.tools.social.a.b;

// Referenced classes of package com.etermax.preguntados.ui.rankings:
//            f, j, RankingsActivity_, d, 
//            e

public class RankingsActivity extends BaseFragmentActivity
    implements f, j
{

    b a;
    m b;

    public RankingsActivity()
    {
    }

    public static Intent a(Context context)
    {
        return com.etermax.preguntados.ui.rankings.RankingsActivity_.b(context).a();
    }

    protected Fragment a()
    {
        return com.etermax.preguntados.ui.rankings.e.b();
    }

    public void a(ShareView shareview)
    {
        b.a(shareview);
    }

    public void a(Long long1)
    {
        startActivity(ProfileActivity.a(getApplicationContext(), long1.longValue(), an.l.toString()));
    }

    public void b()
    {
    }

    protected void onActivityResult(int i, int k, Intent intent)
    {
        a.a(this, i, k, intent);
        super.onActivityResult(i, k, intent);
    }
}
