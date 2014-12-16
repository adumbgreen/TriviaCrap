// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.bugcatcher;

import android.app.Activity;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import java.io.File;

// Referenced classes of package com.etermax.tools.bugcatcher:
//            c

public class CrashActivity extends Activity
{

    public static final String a = (new StringBuilder()).append(Environment.getExternalStorageDirectory().toString()).append("/").append("screenshot.jpg").toString();
    private String b;
    private String c;
    private boolean d;

    public CrashActivity()
    {
    }

    private void a()
    {
        Intent intent = new Intent();
        intent.setType("text/html");
        intent.putExtra("android.intent.extra.SUBJECT", (new StringBuilder()).append("Crash: ").append(b).toString());
        intent.putExtra("android.intent.extra.TEXT", c);
        if (d)
        {
            intent.setType("image/png");
            intent.putExtra("android.intent.extra.STREAM", Uri.parse((new StringBuilder()).append("file://").append(a).toString()));
        }
        startActivity(Intent.createChooser(intent, "Send Email"));
    }

    static void a(CrashActivity crashactivity)
    {
        crashactivity.a();
    }

    private void b()
    {
        if (d)
        {
            (new c(this, a, true)).show();
            return;
        } else
        {
            (new c(this, c)).show();
            return;
        }
    }

    static void b(CrashActivity crashactivity)
    {
        crashactivity.b();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(o.jira_crash);
        setContentView(k.activity_crash);
        d = getIntent().getExtras().getBoolean("image", false);
        b = getIntent().getExtras().getString("message");
        c = getIntent().getExtras().getString("stacktrace");
        ((Button)findViewById(i.email_button)).setOnClickListener(new android.view.View.OnClickListener() {

            final CrashActivity a;

            public void onClick(View view)
            {
                CrashActivity.a(a);
            }

            
            {
                a = CrashActivity.this;
                super();
            }
        });
        ((Button)findViewById(i.jira_button)).setOnClickListener(new android.view.View.OnClickListener() {

            final CrashActivity a;

            public void onClick(View view)
            {
                CrashActivity.b(a);
            }

            
            {
                a = CrashActivity.this;
                super();
            }
        });
        if (d)
        {
            android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
            options.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
            ((ImageView)findViewById(i.screenshot)).setImageBitmap(BitmapFactory.decodeFile(a, options));
            findViewById(i.screenshot).setVisibility(0);
            findViewById(i.stacktrace_container).setVisibility(8);
            return;
        } else
        {
            ((TextView)findViewById(i.stacktrace)).setText(c);
            return;
        }
    }

}
