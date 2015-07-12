// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.image;

import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Environment;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.etermax.gamescommon.datasource.dto.PreferencesDTO;
import com.etermax.gamescommon.datasource.e;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.h;
import com.etermax.o;
import com.etermax.tools.social.a.b;
import eu.janmuller.android.simplecropimage.CropImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.profile.image:
//            c, b, e, d, 
//            InternalStorageContentProvider

public class a
{

    protected e a;
    protected b b;
    protected com.etermax.tools.b.a c;
    protected c d;
    protected com.etermax.gamescommon.login.datasource.a e;
    protected com.etermax.tools.f.a f;
    private AlertDialog g;
    private File h;
    private Fragment i;
    private com.etermax.gamescommon.profile.image.c j;

    public a()
    {
    }

    static void a(a a1)
    {
        a1.d();
    }

    public static void a(InputStream inputstream, OutputStream outputstream)
    {
        byte abyte0[] = new byte[1024];
        do
        {
            int k = inputstream.read(abyte0);
            if (k != -1)
            {
                outputstream.write(abyte0, 0, k);
            } else
            {
                return;
            }
        } while (true);
    }

    static com.etermax.gamescommon.profile.image.c b(a a1)
    {
        return a1.j;
    }

    static File c(a a1)
    {
        return a1.h;
    }

    private void d()
    {
        if (!TextUtils.isEmpty(e.i()))
        {
            (new com.etermax.tools.i.a(i.getString(o.loading)) {

                final a a;

                public Object a()
                {
                    a.a.k();
                    return null;
                }

                protected void a(Fragment fragment, Exception exception)
                {
                    super.a(fragment, exception);
                }

                protected void a(Fragment fragment, Void void1)
                {
                    super.a(fragment, void1);
                    a.e.e(null);
                    a.a(a);
                }

                protected volatile void a(Object obj, Exception exception)
                {
                    a((Fragment)obj, exception);
                }

                protected volatile void a(Object obj, Object obj1)
                {
                    a((Fragment)obj, (Void)obj1);
                }

            
            {
                a = a.this;
                super(s);
            }
            }).a(i);
            return;
        }
        if (TextUtils.isEmpty(e.j()))
        {
            (new com.etermax.gamescommon.j.c(i.getString(o.loading), b, d, e, f, "profile") {

                final a a;

                protected void a(FragmentActivity fragmentactivity)
                {
                    super.a(fragmentactivity);
                    a.e.c(true);
                    if (com.etermax.gamescommon.profile.image.a.b(a) != null)
                    {
                        com.etermax.gamescommon.profile.image.a.b(a).a(null);
                    }
                }

                protected void b()
                {
                    super.b();
                    a.e.c(true);
                    if (com.etermax.gamescommon.profile.image.a.b(a) != null)
                    {
                        com.etermax.gamescommon.profile.image.a.b(a).a(null);
                    }
                }

            
            {
                a = a.this;
                super(s, b1, c1, a2, a3, s1);
            }
            }).a(i);
            return;
        } else
        {
            e();
            return;
        }
    }

    private void e()
    {
        if (!e.m())
        {
            (new com.etermax.tools.i.a() {

                final a a;

                public Object a()
                {
                    PreferencesDTO preferencesdto = new PreferencesDTO();
                    preferencesdto.setFBShowPicture(true);
                    a.a.a(preferencesdto);
                    return null;
                }

                protected void a(Fragment fragment, Void void1)
                {
                    super.a(fragment, void1);
                    a.e.c(true);
                    if (com.etermax.gamescommon.profile.image.a.b(a) != null)
                    {
                        com.etermax.gamescommon.profile.image.a.b(a).a(null);
                    }
                }

                protected volatile void a(Object obj, Object obj1)
                {
                    a((Fragment)obj, (Void)obj1);
                }

            
            {
                a = a.this;
                super();
            }
            }).a(i);
        } else
        if (j != null)
        {
            j.a(null);
            return;
        }
    }

    private void f()
    {
        Intent intent = new Intent(i.getActivity(), eu/janmuller/android/simplecropimage/CropImage);
        intent.putExtra("image-path", h.getPath());
        intent.putExtra("scale", true);
        intent.putExtra("base64", true);
        intent.putExtra("aspectX", 1);
        intent.putExtra("aspectY", 1);
        intent.putExtra("minOutputX", 160);
        intent.putExtra("minOutputY", 160);
        intent.putExtra("maxOutputX", 720);
        intent.putExtra("maxOutputY", 720);
        i.startActivityForResult(intent, 784);
    }

    public void a()
    {
        g.show();
    }

    public void a(int k, int l, Intent intent)
    {
        if (l == -1)
        {
            switch (k)
            {
            default:
                return;

            case 272: 
                try
                {
                    InputStream inputstream = i.getActivity().getContentResolver().openInputStream(intent.getData());
                    FileOutputStream fileoutputstream = new FileOutputStream(h);
                    a(inputstream, ((OutputStream) (fileoutputstream)));
                    fileoutputstream.close();
                    inputstream.close();
                    f();
                    return;
                }
                catch (Exception exception)
                {
                    return;
                }

            case 528: 
                f();
                return;

            case 784: 
                break;
            }
            if (intent.getStringExtra("image-path") != null)
            {
                (new com.etermax.tools.i.a(i.getString(o.loading)) {

                    final a a;

                    public Object a()
                    {
                        return a.a.a(com.etermax.gamescommon.profile.image.a.c(a));
                    }

                    protected void a(Fragment fragment, Exception exception1)
                    {
                        super.a(fragment, exception1);
                    }

                    protected void a(Fragment fragment, String s)
                    {
                        super.a(fragment, s);
                        if (com.etermax.gamescommon.profile.image.a.b(a) != null)
                        {
                            com.etermax.gamescommon.profile.image.a.b(a).a(s);
                        }
                    }

                    protected volatile void a(Object obj, Exception exception1)
                    {
                        a((Fragment)obj, exception1);
                    }

                    protected volatile void a(Object obj, Object obj1)
                    {
                        a((Fragment)obj, (String)obj1);
                    }

            
            {
                a = a.this;
                super(s);
            }
                }).a(i);
                return;
            }
        }
    }

    public void a(Fragment fragment, com.etermax.gamescommon.profile.image.c c1)
    {
        i = fragment;
        j = c1;
        Intent intent;
        PackageManager packagemanager;
        List list;
        ArrayList arraylist;
        if ("mounted".equals(Environment.getExternalStorageState()))
        {
            h = new File(Environment.getExternalStorageDirectory(), "temp_photo.jpg");
        } else
        {
            h = new File(fragment.getActivity().getFilesDir(), "temp_photo.jpg");
        }
        intent = new Intent("android.intent.action.PICK");
        intent.setType("image/*");
        packagemanager = fragment.getActivity().getPackageManager();
        list = packagemanager.queryIntentActivities(intent, 0);
        arraylist = new ArrayList();
        ResolveInfo resolveinfo1;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(new com.etermax.gamescommon.profile.image.b(this, e.a, resolveinfo1.loadLabel(packagemanager).toString(), resolveinfo1.loadIcon(packagemanager), resolveinfo1.activityInfo.packageName, resolveinfo1.activityInfo.name)))
        {
            resolveinfo1 = (ResolveInfo)iterator.next();
        }

        ResolveInfo resolveinfo;
        for (Iterator iterator1 = packagemanager.queryIntentActivities(new Intent("android.media.action.IMAGE_CAPTURE"), 0x10000).iterator(); iterator1.hasNext(); arraylist.add(new com.etermax.gamescommon.profile.image.b(this, com.etermax.gamescommon.profile.image.e.c, resolveinfo.loadLabel(packagemanager).toString(), resolveinfo.loadIcon(packagemanager), resolveinfo.activityInfo.packageName, resolveinfo.activityInfo.name)))
        {
            resolveinfo = (ResolveInfo)iterator1.next();
        }

        if (TextUtils.isEmpty(e.j()) || !e.m() || !TextUtils.isEmpty(e.i()))
        {
            arraylist.add(new com.etermax.gamescommon.profile.image.b(this, com.etermax.gamescommon.profile.image.e.b, fragment.getString(o.facebook), fragment.getResources().getDrawable(h.icon_fb), "", ""));
        }
        if (!TextUtils.isEmpty(e.i()))
        {
            arraylist.add(new com.etermax.gamescommon.profile.image.b(this, e.d, fragment.getString(o.delete_), fragment.getResources().getDrawable(h.icon_close), "", ""));
        }
        d d1 = new d(this, fragment.getActivity(), 0x1090011, 0x1020014, arraylist);
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(fragment.getActivity());
        builder.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

            final a a;

            public void onCancel(DialogInterface dialoginterface)
            {
            }

            
            {
                a = a.this;
                super();
            }
        });
        builder.setAdapter(d1, new android.content.DialogInterface.OnClickListener(arraylist) {

            final List a;
            final a b;

            public void onClick(DialogInterface dialoginterface, int k)
            {
                dialoginterface.dismiss();
                com.etermax.gamescommon.profile.image.b b1 = (com.etermax.gamescommon.profile.image.b)a.get(k);
                class _cls8
                {

                    static final int a[];

                    static 
                    {
                        a = new int[com.etermax.gamescommon.profile.image.e.values().length];
                        try
                        {
                            a[e.a.ordinal()] = 1;
                        }
                        catch (NoSuchFieldError nosuchfielderror) { }
                        try
                        {
                            a[com.etermax.gamescommon.profile.image.e.c.ordinal()] = 2;
                        }
                        catch (NoSuchFieldError nosuchfielderror1) { }
                        try
                        {
                            a[e.d.ordinal()] = 3;
                        }
                        catch (NoSuchFieldError nosuchfielderror2) { }
                        try
                        {
                            a[com.etermax.gamescommon.profile.image.e.b.ordinal()] = 4;
                        }
                        catch (NoSuchFieldError nosuchfielderror3)
                        {
                            return;
                        }
                    }
                }

                switch (_cls8.a[((com.etermax.gamescommon.profile.image.b)a.get(k)).a.ordinal()])
                {
                default:
                    return;

                case 1: // '\001'
                    b.a(b1.d, b1.e);
                    return;

                case 2: // '\002'
                    b.b();
                    return;

                case 3: // '\003'
                    b.c();
                    return;

                case 4: // '\004'
                    a.a(b);
                    break;
                }
            }

            
            {
                b = a.this;
                a = list;
                super();
            }
        });
        g = builder.create();
    }

    public void a(String s, String s1)
    {
        Intent intent = new Intent("android.intent.action.PICK");
        intent.setType("image/*");
        intent.setClassName(s, s1);
        i.startActivityForResult(intent, 272);
    }

    public void b()
    {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        Uri uri;
        if (!"mounted".equals(Environment.getExternalStorageState()))
        {
            break MISSING_BLOCK_LABEL_60;
        }
        uri = Uri.fromFile(h);
_L1:
        intent.putExtra("output", uri);
        intent.putExtra("return-data", true);
        i.startActivityForResult(intent, 528);
        return;
        try
        {
            uri = InternalStorageContentProvider.a;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            return;
        }
          goto _L1
    }

    public void c()
    {
        (new com.etermax.tools.i.a(i.getString(o.loading)) {

            final a a;

            public Object a()
            {
                a.a.k();
                return null;
            }

            protected void a(Fragment fragment, Exception exception)
            {
                super.a(fragment, exception);
            }

            protected void a(Fragment fragment, Void void1)
            {
                super.a(fragment, void1);
                if (com.etermax.gamescommon.profile.image.a.b(a) != null)
                {
                    com.etermax.gamescommon.profile.image.a.b(a).a();
                }
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((Fragment)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((Fragment)obj, (Void)obj1);
            }

            
            {
                a = a.this;
                super(s);
            }
        }).a(i);
    }
}
