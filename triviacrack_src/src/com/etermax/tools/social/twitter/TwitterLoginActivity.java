// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.social.twitter;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.etermax.a.a;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.tools.widget.b.f;

// Referenced classes of package com.etermax.tools.social.twitter:
//            TwitterLoginActivity_, a

public class TwitterLoginActivity extends FragmentActivity
{

    public static String a = "url";
    public static String b = "scheme";
    private static String d = "twitter_web_loading";
    com.etermax.tools.social.twitter.a c;

    public TwitterLoginActivity()
    {
    }

    public static Intent a(Context context, String s, String s1)
    {
        Intent intent = new Intent(context, com/etermax/tools/social/twitter/TwitterLoginActivity_);
        intent.putExtra(a, s);
        intent.putExtra(b, s1);
        return intent;
    }

    protected void a(FragmentManager fragmentmanager)
    {
        f.a(getString(o.loading)).show(fragmentmanager, d);
    }

    protected void b(FragmentManager fragmentmanager)
    {
        DialogFragment dialogfragment;
        dialogfragment = (DialogFragment)fragmentmanager.findFragmentByTag(d);
        if (dialogfragment == null)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        dialogfragment.dismiss();
        return;
        IllegalStateException illegalstateexception;
        illegalstateexception;
        com.etermax.a.a.b("TwitterLoginActivity", illegalstateexception.getMessage());
        return;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(k.twitter_login_activity);
        String s = getIntent().getExtras().getString(a);
        String s1 = getIntent().getExtras().getString(b);
        WebView webview = (WebView)findViewById(i.webview);
        webview.setWebChromeClient(new WebChromeClient() {

            final TwitterLoginActivity a;

            public void onProgressChanged(WebView webview1, int j)
            {
                if (j == 100)
                {
                    a.b(a.getSupportFragmentManager());
                }
            }

            
            {
                a = TwitterLoginActivity.this;
                super();
            }
        });
        webview.setWebViewClient(new WebViewClient(s1) {

            final String a;
            final TwitterLoginActivity b;

            public void onReceivedError(WebView webview1, int j, String s2, String s3)
            {
                b.b(b.getSupportFragmentManager());
                b.finish();
                Toast.makeText(b, s2, 1).show();
            }

            public boolean shouldOverrideUrlLoading(WebView webview1, String s2)
            {
                if (s2.contains(a))
                {
                    String s3 = Uri.parse(s2).getQueryParameter("oauth_verifier");
                    b.c.a(s3);
                    b.finish();
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                b = TwitterLoginActivity.this;
                a = s;
                super();
            }
        });
        a(getSupportFragmentManager());
        webview.loadUrl(s);
    }

}
