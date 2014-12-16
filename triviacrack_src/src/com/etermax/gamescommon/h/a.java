// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.h;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.view.FlagsLayout;
import com.etermax.gamescommon.view.c;
import com.etermax.k;
import com.etermax.tools.navigation.b;
import java.util.Arrays;

// Referenced classes of package com.etermax.gamescommon.h:
//            b

public abstract class a extends b
    implements c
{

    protected Language a;
    public FlagsLayout b;

    public a()
    {
    }

    public com.etermax.gamescommon.h.b a()
    {
        return new com.etermax.gamescommon.h.b() {

            final a a;

            public void a(Language language)
            {
            }

            public void b(Language language)
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    protected void a(Language language)
    {
        android.content.SharedPreferences.Editor editor = getActivity().getSharedPreferences("last_played_language", 0).edit();
        editor.putString("selected_flag_item_tag", language.name());
        editor.commit();
    }

    protected void b()
    {
        b.setCallback(this);
        b.setAvailableLanguages(Arrays.asList(c()));
    }

    public void b(Language language)
    {
        a = language;
    }

    protected abstract Language[] c();

    protected void d()
    {
        a(a);
        ((com.etermax.gamescommon.h.b)mCallbacks).a(a);
    }

    protected void e()
    {
        a(a);
        ((com.etermax.gamescommon.h.b)mCallbacks).b(a);
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(k.new_game_fragment_layout, viewgroup, false);
    }
}
