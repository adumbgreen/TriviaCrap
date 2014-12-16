// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.coupon;

import android.os.IBinder;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.etermax.o;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.b.c;

// Referenced classes of package com.etermax.gamescommon.coupon:
//            b

public class a extends b
{

    protected EditText a;
    private int b;

    public a()
    {
        b = 6;
    }

    static void a(a a1)
    {
        a1.e();
    }

    private void e()
    {
        a(a.getWindowToken());
        String s = a.getText().toString();
        if (TextUtils.isEmpty(s) || s.length() < b)
        {
            com.etermax.tools.widget.b.c.c(getString(o.invalid_coupon), getString(o.enter_coupon_again), getString(o.accept), null).show(getFragmentManager(), "error_code");
            return;
        } else
        {
            ((com.etermax.gamescommon.coupon.b)mCallbacks).a(a.getText().toString());
            return;
        }
    }

    protected void a()
    {
        a.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final a a;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                switch (i)
                {
                default:
                    return false;

                case 4: // '\004'
                    a.a(a);
                    break;
                }
                return true;
            }

            
            {
                a = a.this;
                super();
            }
        });
    }

    public void a(IBinder ibinder)
    {
        InputMethodManager inputmethodmanager = (InputMethodManager)getActivity().getSystemService("input_method");
        if (inputmethodmanager != null)
        {
            inputmethodmanager.hideSoftInputFromWindow(ibinder, 0);
        }
    }

    protected void b()
    {
        e();
    }

    protected void c()
    {
        ((com.etermax.gamescommon.coupon.b)mCallbacks).b();
    }

    public com.etermax.gamescommon.coupon.b d()
    {
        return new com.etermax.gamescommon.coupon.b() {

            final a a;

            public void a(String s)
            {
            }

            public void b()
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    public Object getDummyCallbacks()
    {
        return d();
    }
}
