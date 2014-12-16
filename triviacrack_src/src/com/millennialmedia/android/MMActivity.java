// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;

// Referenced classes of package com.millennialmedia.android:
//            MMBaseActivity, MMAdImplController, MMLog

public class MMActivity extends Activity
{

    long a;
    GestureDetector b;
    private MMBaseActivity c;

    public MMActivity()
    {
    }

    void a()
    {
        super.onDestroy();
    }

    void a(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
    }

    void a(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
    }

    void a(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    void a(boolean flag)
    {
        super.onWindowFocusChanged(flag);
    }

    boolean a(int i, KeyEvent keyevent)
    {
        return super.onKeyDown(i, keyevent);
    }

    boolean a(MotionEvent motionevent)
    {
        return super.dispatchTouchEvent(motionevent);
    }

    void b()
    {
        super.onStart();
    }

    void b(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
    }

    void c()
    {
        super.onStop();
    }

    void c(Bundle bundle)
    {
        super.onRestoreInstanceState(bundle);
    }

    void d()
    {
        super.onRestart();
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        if (b != null)
        {
            b.onTouchEvent(motionevent);
        }
        if (c != null)
        {
            return c.dispatchTouchEvent(motionevent);
        } else
        {
            return super.dispatchTouchEvent(motionevent);
        }
    }

    void e()
    {
        super.onResume();
    }

    void f()
    {
        super.onPause();
    }

    public void finish()
    {
        if (c != null)
        {
            c.finish();
            return;
        } else
        {
            MMSDK.Event.e(MMAdImplController.a(a));
            super.finish();
            return;
        }
    }

    public void finishSuper()
    {
        MMSDK.Event.e(MMAdImplController.a(a));
        super.finish();
    }

    Object g()
    {
        return super.onRetainNonConfigurationInstance();
    }

    protected MMBaseActivity h()
    {
        return c;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (c != null)
        {
            c.a(i, j, intent);
            return;
        } else
        {
            super.onActivityResult(i, j, intent);
            return;
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        if (c != null)
        {
            c.onConfigurationChanged(configuration);
            return;
        } else
        {
            super.onConfigurationChanged(configuration);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        String s = null;
        a = getIntent().getLongExtra("internalId", -4L);
        try
        {
            s = getIntent().getStringExtra("class");
            c = (MMBaseActivity)Class.forName(s).newInstance();
            c.c = this;
            c.onCreate(bundle);
            b = new GestureDetector(getApplicationContext(), new InterstitialGestureListener());
            return;
        }
        catch (Exception exception)
        {
            MMLog.a("MMActivity", String.format("Could not start activity for %s. ", new Object[] {
                s
            }), exception);
            exception.printStackTrace();
            finish();
            return;
        }
    }

    protected void onDestroy()
    {
        if (c != null)
        {
            c.onDestroy();
            return;
        } else
        {
            super.onDestroy();
            return;
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (c != null)
        {
            return c.onKeyDown(i, keyevent);
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    protected void onPause()
    {
        if (c != null)
        {
            c.e();
            return;
        } else
        {
            super.onPause();
            return;
        }
    }

    protected void onRestart()
    {
        if (c != null)
        {
            c.k();
            return;
        } else
        {
            super.onRestart();
            return;
        }
    }

    protected void onRestoreInstanceState(Bundle bundle)
    {
        if (c != null)
        {
            c.b(bundle);
            return;
        } else
        {
            super.onRestoreInstanceState(bundle);
            return;
        }
    }

    protected void onResume()
    {
        if (c != null)
        {
            c.d();
            return;
        } else
        {
            super.onResume();
            return;
        }
    }

    public Object onRetainNonConfigurationInstance()
    {
        if (c != null)
        {
            return c.onRetainNonConfigurationInstance();
        } else
        {
            return super.onRetainNonConfigurationInstance();
        }
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        if (c != null)
        {
            c.a(bundle);
            return;
        } else
        {
            super.onSaveInstanceState(bundle);
            return;
        }
    }

    protected void onStart()
    {
        if (c != null)
        {
            c.a();
            return;
        } else
        {
            super.onStart();
            return;
        }
    }

    protected void onStop()
    {
        if (c != null)
        {
            c.f();
            return;
        } else
        {
            super.onStop();
            return;
        }
    }

    public void onWindowFocusChanged(boolean flag)
    {
        if (c != null)
        {
            c.onWindowFocusChanged(flag);
            return;
        } else
        {
            super.onWindowFocusChanged(flag);
            return;
        }
    }

    private class InterstitialGestureListener extends android.view.GestureDetector.SimpleOnGestureListener
    {

        WeakReference a;

        public boolean onSingleTapConfirmed(MotionEvent motionevent)
        {
            MMActivity mmactivity = (MMActivity)a.get();
            if (mmactivity != null)
            {
                MMSDK.Event.a(MMAdImplController.a(mmactivity.a));
            }
            return false;
        }

        public InterstitialGestureListener()
        {
            a = new WeakReference(MMActivity.this);
        }
    }

}
