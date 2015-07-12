// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import java.io.File;

// Referenced classes of package com.millennialmedia.android:
//            MMActivity

class MMBaseActivity
{

    MMActivity c;

    MMBaseActivity()
    {
    }

    protected void a()
    {
        c.b();
    }

    protected void a(int i, int j, Intent intent)
    {
        c.a(i, j, intent);
    }

    protected void a(Bundle bundle)
    {
        c.b(bundle);
    }

    protected void b(Bundle bundle)
    {
        c.c(bundle);
    }

    protected void d()
    {
        c.e();
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        return c.a(motionevent);
    }

    protected void e()
    {
        c.f();
    }

    protected void f()
    {
        c.c();
    }

    public void finish()
    {
        c.finishSuper();
    }

    public File getCacheDir()
    {
        return c.getCacheDir();
    }

    public ContentResolver getContentResolver()
    {
        return c.getContentResolver();
    }

    public Intent getIntent()
    {
        return c.getIntent();
    }

    public Object getLastNonConfigurationInstance()
    {
        return c.getLastNonConfigurationInstance();
    }

    public Object getSystemService(String s)
    {
        return c.getSystemService(s);
    }

    public Window getWindow()
    {
        return c.getWindow();
    }

    protected void k()
    {
        c.d();
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        c.a(configuration);
    }

    protected void onCreate(Bundle bundle)
    {
        c.a(bundle);
    }

    protected void onDestroy()
    {
        c.a();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        return c.a(i, keyevent);
    }

    public Object onRetainNonConfigurationInstance()
    {
        return c.g();
    }

    public void onWindowFocusChanged(boolean flag)
    {
        c.a(flag);
    }

    public Intent registerReceiver(BroadcastReceiver broadcastreceiver, IntentFilter intentfilter)
    {
        return c.registerReceiver(broadcastreceiver, intentfilter);
    }

    public final boolean requestWindowFeature(int i)
    {
        return c.requestWindowFeature(i);
    }

    public final void runOnUiThread(Runnable runnable)
    {
        c.runOnUiThread(runnable);
    }

    public void setContentView(View view)
    {
        c.setContentView(view);
    }

    public void setRequestedOrientation(int i)
    {
        c.setRequestedOrientation(i);
    }

    public final void setResult(int i)
    {
        c.setResult(i);
    }

    public void setTheme(int i)
    {
        c.setTheme(i);
    }

    public void startActivity(Intent intent)
    {
        c.startActivity(intent);
    }

    public void startActivityForResult(Intent intent, int i)
    {
        c.startActivityForResult(intent, i);
    }

    public void unregisterReceiver(BroadcastReceiver broadcastreceiver)
    {
        c.unregisterReceiver(broadcastreceiver);
    }
}
