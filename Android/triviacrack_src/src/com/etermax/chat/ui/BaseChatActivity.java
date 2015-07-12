// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.app.ActionBarActivity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.k;
import com.etermax.l;

// Referenced classes of package com.etermax.chat.ui:
//            a, c

public class BaseChatActivity extends ActionBarActivity
{

    static int a = 0;
    TextView b;
    Boolean c;
    protected a d;

    public BaseChatActivity()
    {
        c = Boolean.valueOf(false);
    }

    public void a()
    {
    }

    protected void a(int j)
    {
        a = j;
        supportInvalidateOptionsMenu();
    }

    protected void a(boolean flag)
    {
        c = Boolean.valueOf(flag);
        supportInvalidateOptionsMenu();
    }

    public void onAttachFragment(Fragment fragment)
    {
        if (fragment instanceof a)
        {
            d = (a)fragment;
        }
        super.onAttachFragment(fragment);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(k.activity_chat);
        if (bundle == null)
        {
            getSupportFragmentManager().beginTransaction().add(i.container, new c()).commit();
        }
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(l.chat, menu);
        MenuItem menuitem = menu.findItem(i.action_friends_pannel);
        android.view.View.OnClickListener onclicklistener = new android.view.View.OnClickListener() {

            final BaseChatActivity a;

            public void onClick(View view1)
            {
                a.a();
            }

            
            {
                a = BaseChatActivity.this;
                super();
            }
        };
        RelativeLayout relativelayout = (RelativeLayout)MenuItemCompat.getActionView(menuitem);
        b = (TextView)relativelayout.findViewById(i.actionbar_notifcation_textview);
        relativelayout.setOnClickListener(onclicklistener);
        View view = relativelayout.findViewById(i.badge_container);
        if (c.booleanValue())
        {
            view.setVisibility(0);
        } else
        {
            view.setVisibility(8);
        }
        relativelayout.findViewById(i.image_icon_friend).setOnClickListener(onclicklistener);
        b.setText(String.valueOf(a));
        relativelayout.findViewById(i.actionbar_notifcation_textview).setOnClickListener(onclicklistener);
        relativelayout.findViewById(i.container).setOnClickListener(onclicklistener);
        return super.onCreateOptionsMenu(menu);
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == i.action_friends_pannel)
        {
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

}
