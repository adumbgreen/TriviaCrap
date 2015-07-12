// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.navigation;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.widget.DrawerLayout;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import com.etermax.i;
import com.etermax.k;
import com.etermax.l;
import com.etermax.tools.g.a;
import com.etermax.tools.social.a.d;
import com.facebook.Settings;

// Referenced classes of package com.etermax.tools.navigation:
//            c, f, d, a, 
//            e

public abstract class BaseFragmentActivity extends FragmentActivity
    implements c, f
{

    private int a;
    private boolean b;
    private boolean c;
    com.etermax.tools.navigation.d y;

    public BaseFragmentActivity()
    {
    }

    public void A()
    {
        y.d();
    }

    protected abstract Fragment a();

    protected void a(Fragment fragment)
    {
        a(fragment, true);
    }

    protected void a(Fragment fragment, Fragment fragment1, String s1, boolean flag)
    {
        FragmentTransaction fragmenttransaction = getSupportFragmentManager().beginTransaction();
        fragmenttransaction.remove(fragment);
        fragmenttransaction.add(a, fragment1, s1);
        if (flag)
        {
            fragmenttransaction.addToBackStack(s1);
        }
        fragmenttransaction.commitAllowingStateLoss();
    }

    public void a(Fragment fragment, String s1, boolean flag)
    {
        FragmentTransaction fragmenttransaction = getSupportFragmentManager().beginTransaction();
        fragmenttransaction.add(a, fragment, s1);
        if (flag)
        {
            fragmenttransaction.addToBackStack(s1);
        }
        fragmenttransaction.commitAllowingStateLoss();
    }

    protected void a(Fragment fragment, boolean flag)
    {
        FragmentTransaction fragmenttransaction = getSupportFragmentManager().beginTransaction();
        fragmenttransaction.replace(a, fragment);
        if (flag)
        {
            fragmenttransaction.addToBackStack("stack");
        }
        fragmenttransaction.commitAllowingStateLoss();
    }

    protected void a(Fragment fragment, boolean flag, String s1)
    {
        FragmentTransaction fragmenttransaction = getSupportFragmentManager().beginTransaction();
        fragmenttransaction.replace(a, fragment, s1);
        if (flag)
        {
            fragmenttransaction.addToBackStack("stack");
        }
        fragmenttransaction.commitAllowingStateLoss();
    }

    public void a(View view, e e)
    {
        y.a(view, e);
    }

    protected void b(Fragment fragment)
    {
        FragmentTransaction fragmenttransaction = getSupportFragmentManager().beginTransaction();
        fragmenttransaction.remove(fragment);
        fragmenttransaction.commitAllowingStateLoss();
    }

    public void b(View view, e e)
    {
        y.b(view, e);
    }

    public void g()
    {
        y.b();
    }

    public void onAttachedToWindow()
    {
        y.a();
        super.onAttachedToWindow();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setVolumeControlStream(3);
        s();
        t();
        if (bundle == null)
        {
            u();
        }
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        if (com.etermax.tools.g.a.a())
        {
            getMenuInflater().inflate(l.debug_menu, menu);
            return true;
        } else
        {
            return super.onCreateOptionsMenu(menu);
        }
    }

    public boolean onKeyDown(int j, KeyEvent keyevent)
    {
        if (com.etermax.tools.g.a.a())
        {
            if (j == 25)
            {
                b = true;
                if (c)
                {
                    com.etermax.tools.bugcatcher.a.a(this);
                    return true;
                }
            } else
            if (j == 24)
            {
                c = true;
                if (b)
                {
                    com.etermax.tools.bugcatcher.a.a(this);
                    return true;
                }
            }
        }
        return super.onKeyDown(j, keyevent);
    }

    public boolean onKeyUp(int j, KeyEvent keyevent)
    {
        if (!com.etermax.tools.g.a.a()) goto _L2; else goto _L1
_L1:
        if (j != 25) goto _L4; else goto _L3
_L3:
        b = false;
_L2:
        y.a(j, keyevent);
        return super.onKeyUp(j, keyevent);
_L4:
        if (j == 24)
        {
            c = false;
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (com.etermax.tools.g.a.a() && menuitem.getItemId() == i.debug)
        {
            android.content.Context context = getApplicationContext();
            if (context instanceof com.etermax.tools.navigation.a)
            {
                ((com.etermax.tools.navigation.a)context).a(this);
            }
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    protected void onPause()
    {
        super.onPause();
        y.b();
    }

    protected void onResume()
    {
        super.onResume();
        android.content.Context context = getApplicationContext();
        if (context instanceof d)
        {
            String s1 = ((d)context).o();
            Settings.publishInstallAsync(this, s1);
            com.etermax.a.a.c("BaseFragmentActivity", (new StringBuilder()).append("Trackeo de Facebook Install: APPID = ").append(s1).toString());
        }
    }

    protected void s()
    {
        setContentView(k.base_activity_layout);
    }

    protected void t()
    {
        a = i.mainContent;
        y = new com.etermax.tools.navigation.d((DrawerLayout)findViewById(i.drawerLayout), (FrameLayout)findViewById(i.leftPanel), (FrameLayout)findViewById(i.rightPanel));
    }

    protected void u()
    {
        a(a(), false, "main_tag");
    }

    protected Fragment v()
    {
        return getSupportFragmentManager().findFragmentById(a);
    }

    protected void w()
    {
        getSupportFragmentManager().popBackStack("stack", 1);
    }

    public void x()
    {
        y.f();
    }

    public void y()
    {
        y.g();
    }

    public void z()
    {
        y.c();
    }
}
