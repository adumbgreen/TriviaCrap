// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.janmuller.android.simplecropimage;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.FaceDetector;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.StatFs;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.Toast;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package eu.janmuller.android.simplecropimage:
//            MonitoredActivity, c, CropImageView, k, 
//            e, a, j

public class CropImage extends MonitoredActivity
{

    final int a = 1024;
    boolean b;
    boolean c;
    e d;
    Runnable e;
    private android.graphics.Bitmap.CompressFormat f;
    private Uri g;
    private boolean h;
    private boolean i;
    private final Handler j = new Handler();
    private boolean k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private boolean t;
    private CropImageView u;
    private ContentResolver v;
    private Bitmap w;
    private String x;
    private boolean y;
    private final c z = new c();

    public CropImage()
    {
        f = android.graphics.Bitmap.CompressFormat.JPEG;
        g = null;
        h = true;
        i = false;
        y = true;
        e = new Runnable() {

            float a;
            Matrix b;
            android.media.FaceDetector.Face c[];
            int d;
            final CropImage e;

            private void a()
            {
                e e1 = new e(CropImage.c(e), CropImage.f(e));
                int i1 = CropImage.b(e).getWidth();
                int j1 = CropImage.b(e).getHeight();
                Rect rect = new Rect(0, 0, i1, j1);
                int k1 = (4 * Math.min(i1, j1)) / 5;
                int l1;
                int i2;
                int j2;
                int k2;
                RectF rectf;
                Matrix matrix;
                boolean flag;
                int l2;
                boolean flag1;
                if (CropImage.h(e) != 0 && eu.janmuller.android.simplecropimage.CropImage.i(e) != 0)
                {
                    if (CropImage.h(e) > eu.janmuller.android.simplecropimage.CropImage.i(e))
                    {
                        l1 = (k1 * eu.janmuller.android.simplecropimage.CropImage.i(e)) / CropImage.h(e);
                        i2 = k1;
                    } else
                    {
                        i2 = (k1 * CropImage.h(e)) / eu.janmuller.android.simplecropimage.CropImage.i(e);
                        l1 = k1;
                    }
                } else
                {
                    l1 = k1;
                    i2 = k1;
                }
                j2 = (i1 - i2) / 2;
                k2 = (j1 - l1) / 2;
                rectf = new RectF(j2, k2, i2 + j2, l1 + k2);
                matrix = b;
                flag = CropImage.g(e);
                l2 = CropImage.h(e);
                flag1 = false;
                if (l2 != 0)
                {
                    int i3 = eu.janmuller.android.simplecropimage.CropImage.i(e);
                    flag1 = false;
                    if (i3 != 0)
                    {
                        flag1 = true;
                    }
                }
                e1.a(matrix, rect, rectf, flag, flag1);
                CropImage.c(e).a.clear();
                CropImage.c(e).a(e1);
            }

            private void a(android.media.FaceDetector.Face face)
            {
                PointF pointf = new PointF();
                int i1 = 2 * (int)(face.eyesDistance() * a);
                face.getMidPoint(pointf);
                pointf.x = pointf.x * a;
                pointf.y = pointf.y * a;
                int j1 = (int)pointf.x;
                int k1 = (int)pointf.y;
                e e1 = new e(CropImage.c(e), CropImage.f(e));
                Rect rect = new Rect(0, 0, CropImage.b(e).getWidth(), CropImage.b(e).getHeight());
                RectF rectf = new RectF(j1, k1, j1, k1);
                rectf.inset(-i1, -i1);
                if (rectf.left < 0.0F)
                {
                    rectf.inset(-rectf.left, -rectf.left);
                }
                if (rectf.top < 0.0F)
                {
                    rectf.inset(-rectf.top, -rectf.top);
                }
                if (rectf.right > (float)rect.right)
                {
                    rectf.inset(rectf.right - (float)rect.right, rectf.right - (float)rect.right);
                }
                if (rectf.bottom > (float)rect.bottom)
                {
                    rectf.inset(rectf.bottom - (float)rect.bottom, rectf.bottom - (float)rect.bottom);
                }
                Matrix matrix = b;
                boolean flag = CropImage.g(e);
                int l1 = CropImage.h(e);
                boolean flag1 = false;
                if (l1 != 0)
                {
                    int i2 = eu.janmuller.android.simplecropimage.CropImage.i(e);
                    flag1 = false;
                    if (i2 != 0)
                    {
                        flag1 = true;
                    }
                }
                e1.a(matrix, rect, rectf, flag, flag1);
                CropImage.c(e).a(e1);
            }

            static void a(_cls7 _pcls7)
            {
                _pcls7.a();
            }

            static void a(_cls7 _pcls7, android.media.FaceDetector.Face face)
            {
                _pcls7.a(face);
            }

            private Bitmap b()
            {
                if (CropImage.b(e) == null)
                {
                    return null;
                }
                if (CropImage.b(e).getWidth() > 256)
                {
                    a = 256F / (float)CropImage.b(e).getWidth();
                }
                Matrix matrix = new Matrix();
                matrix.setScale(a, a);
                return Bitmap.createBitmap(CropImage.b(e), 0, 0, CropImage.b(e).getWidth(), CropImage.b(e).getHeight(), matrix, true);
            }

            public void run()
            {
                b = CropImage.c(e).getImageMatrix();
                Bitmap bitmap = b();
                a = 1.0F / a;
                if (bitmap != null && CropImage.j(e))
                {
                    d = (new FaceDetector(bitmap.getWidth(), bitmap.getHeight(), c.length)).findFaces(bitmap, c);
                }
                if (bitmap != null && bitmap != CropImage.b(e))
                {
                    bitmap.recycle();
                }
                CropImage.d(e).post(new Runnable(this) {

                    final _cls7 a;

                    public void run()
                    {
                        CropImage cropimage = a.e;
                        boolean flag;
                        if (a.d > 1)
                        {
                            flag = true;
                        } else
                        {
                            flag = false;
                        }
                        cropimage.b = flag;
                        if (a.d > 0)
                        {
                            for (int i1 = 0; i1 < a.d; i1++)
                            {
                                _cls7.a(a, a.c[i1]);
                            }

                        } else
                        {
                            _cls7.a(a);
                        }
                        CropImage.c(a.e).invalidate();
                        if (CropImage.c(a.e).a.size() == 1)
                        {
                            a.e.d = (e)CropImage.c(a.e).a.get(0);
                            a.e.d.a(true);
                        }
                        if (a.d > 1)
                        {
                            Toast.makeText(a.e, "Multi face crop help", 0).show();
                        }
                    }

            
            {
                a = _pcls7;
                super();
            }
                });
            }

            
            {
                e = CropImage.this;
                super();
                a = 1.0F;
                c = new android.media.FaceDetector.Face[3];
            }
        };
    }

    static Bitmap a(CropImage cropimage, Bitmap bitmap)
    {
        cropimage.w = bitmap;
        return bitmap;
    }

    private Uri a(String s1)
    {
        return Uri.fromFile(new File(s1));
    }

    private void a()
    {
        if (isFinishing())
        {
            return;
        } else
        {
            u.a(w, true);
            eu.janmuller.android.simplecropimage.k.a(this, null, "Please wait\u2026", new Runnable() {

                final CropImage a;

                public void run()
                {
                    CountDownLatch countdownlatch = new CountDownLatch(1);
                    Bitmap bitmap = CropImage.b(a);
                    CropImage.d(a).post(new Runnable(this, bitmap, countdownlatch) {

                        final Bitmap a;
                        final CountDownLatch b;
                        final _cls5 c;

                        public void run()
                        {
                            if (a != CropImage.b(c.a) && a != null)
                            {
                                CropImage.c(c.a).a(a, true);
                                CropImage.b(c.a).recycle();
                                CropImage.a(c.a, a);
                            }
                            if (CropImage.c(c.a).a() == 1.0F)
                            {
                                CropImage.c(c.a).a(true, true);
                            }
                            b.countDown();
                        }

            
            {
                c = _pcls5;
                a = bitmap;
                b = countdownlatch;
                super();
            }
                    });
                    try
                    {
                        countdownlatch.await();
                    }
                    catch (InterruptedException interruptedexception)
                    {
                        throw new RuntimeException(interruptedexception);
                    }
                    a.e.run();
                }

            
            {
                a = CropImage.this;
                super();
            }
            }, j);
            return;
        }
    }

    public static void a(Activity activity)
    {
        a(activity, b(activity));
    }

    public static void a(Activity activity, int i1)
    {
        if (i1 != -1) goto _L2; else goto _L1
_L1:
        String s1;
        if (Environment.getExternalStorageState().equals("checking"))
        {
            s1 = activity.getString(o.preparing_card);
        } else
        {
            s1 = activity.getString(o.no_storage_card);
        }
_L4:
        if (s1 != null)
        {
            Toast.makeText(activity, s1, 5000).show();
        }
        return;
_L2:
        s1 = null;
        if (i1 < 1)
        {
            s1 = activity.getString(o.not_enough_space);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void a(Bitmap bitmap)
    {
        if (g == null) goto _L2; else goto _L1
_L1:
        OutputStream outputstream = null;
        outputstream = v.openOutputStream(g);
        if (outputstream == null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        bitmap.compress(f, 90, outputstream);
        eu.janmuller.android.simplecropimage.k.a(outputstream);
        Bundle bundle = new Bundle();
        Intent intent = new Intent(g.toString());
        intent.putExtras(bundle);
        intent.putExtra("image-path", x);
        intent.putExtra("orientation_in_degrees", eu.janmuller.android.simplecropimage.k.a(this));
        setResult(-1, intent);
_L4:
        bitmap.recycle();
        finish();
        return;
        IOException ioexception;
        ioexception;
        Log.e("CropImage", (new StringBuilder()).append("Cannot open file: ").append(g).toString(), ioexception);
        setResult(0);
        finish();
        eu.janmuller.android.simplecropimage.k.a(outputstream);
        return;
        Exception exception;
        exception;
        eu.janmuller.android.simplecropimage.k.a(outputstream);
        throw exception;
_L2:
        Log.e("CropImage", "not defined image url");
        if (true) goto _L4; else goto _L3
_L3:
    }

    static void a(CropImage cropimage)
    {
        cropimage.b();
    }

    public static int b(Activity activity)
    {
        if (!"mounted".equals(Environment.getExternalStorageState())) goto _L2; else goto _L1
_L1:
        String s2 = Environment.getExternalStorageDirectory().toString();
_L3:
        StatFs statfs = new StatFs(s2);
        return (int)(((float)statfs.getAvailableBlocks() * (float)statfs.getBlockSize()) / 400000F);
_L2:
        String s1 = activity.getFilesDir().toString();
        s2 = s1;
          goto _L3
        Exception exception;
        exception;
        return -2;
    }

    static Bitmap b(CropImage cropimage)
    {
        return cropimage.w;
    }

    private Bitmap b(String s1)
    {
        int i1;
        Uri uri;
        i1 = 1;
        uri = a(s1);
        Bitmap bitmap;
        InputStream inputstream = v.openInputStream(uri);
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputstream, null, options);
        inputstream.close();
        if (options.outHeight > 1024 || options.outWidth > 1024)
        {
            i1 = (int)Math.pow(2D, (int)Math.round(Math.log(1024D / (double)Math.max(options.outHeight, options.outWidth)) / Math.log(0.5D)));
        }
        android.graphics.BitmapFactory.Options options1 = new android.graphics.BitmapFactory.Options();
        options1.inSampleSize = i1;
        InputStream inputstream1 = v.openInputStream(uri);
        bitmap = BitmapFactory.decodeStream(inputstream1, null, options1);
        inputstream1.close();
        return bitmap;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        Log.e("CropImage", (new StringBuilder()).append("file ").append(s1).append(" not found").toString());
_L2:
        return null;
        IOException ioexception;
        ioexception;
        Log.e("CropImage", (new StringBuilder()).append("file ").append(s1).append(" not found").toString());
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void b()
    {
_L2:
        return;
        if (c || d == null) goto _L2; else goto _L1
_L1:
        Rect rect;
        int i1;
        int j1;
        c = true;
        rect = d.b();
        i1 = rect.width();
        j1 = rect.height();
        android.graphics.Bitmap.Config config;
        if (!i)
        {
            break MISSING_BLOCK_LABEL_310;
        }
        config = android.graphics.Bitmap.Config.ARGB_8888;
_L3:
        Bitmap bitmap = Bitmap.createBitmap(i1, j1, config);
        if (bitmap != null)
        {
            Canvas canvas = new Canvas(bitmap);
            Rect rect1 = new Rect(0, 0, i1, j1);
            canvas.drawBitmap(w, rect, rect1, null);
            if (i)
            {
                Canvas canvas1 = new Canvas(bitmap);
                Path path = new Path();
                path.addCircle((float)i1 / 2.0F, (float)j1 / 2.0F, (float)i1 / 2.0F, android.graphics.Path.Direction.CW);
                canvas1.clipPath(path, android.graphics.Region.Op.DIFFERENCE);
                canvas1.drawColor(0, android.graphics.PorterDuff.Mode.CLEAR);
            }
            Exception exception;
            Bitmap bitmap1;
            Bundle bundle;
            if (n != 0 && o != 0)
            {
                if (t)
                {
                    bitmap1 = eu.janmuller.android.simplecropimage.k.a(new Matrix(), bitmap, n, o, y);
                    if (bitmap != bitmap1)
                    {
                        bitmap.recycle();
                    }
                } else
                {
                    bitmap1 = Bitmap.createBitmap(n, o, android.graphics.Bitmap.Config.RGB_565);
                    Canvas canvas2 = new Canvas(bitmap1);
                    Rect rect2 = d.b();
                    Rect rect3 = new Rect(0, 0, n, o);
                    int k1 = (rect2.width() - rect3.width()) / 2;
                    int l1 = (rect2.height() - rect3.height()) / 2;
                    rect2.inset(Math.max(0, k1), Math.max(0, l1));
                    rect3.inset(Math.max(0, -k1), Math.max(0, -l1));
                    canvas2.drawBitmap(w, rect2, rect3, null);
                    bitmap.recycle();
                }
            } else
            if (r != 0 && s != 0 && t && (bitmap.getHeight() > s || bitmap.getWidth() > r))
            {
                bitmap1 = eu.janmuller.android.simplecropimage.k.a(new Matrix(), bitmap, r, s, y);
                if (bitmap != bitmap1)
                {
                    bitmap.recycle();
                }
            } else
            {
                bitmap1 = bitmap;
            }
            bundle = getIntent().getExtras();
            if (bundle != null && (bundle.getParcelable("data") != null || bundle.getBoolean("return-data")))
            {
                Bundle bundle1 = new Bundle();
                bundle1.putParcelable("data", bitmap1);
                setResult(-1, (new Intent()).setAction("inline-data").putExtras(bundle1));
                finish();
                return;
            } else
            {
                eu.janmuller.android.simplecropimage.k.a(this, null, getString(o.saving_image), new Runnable(bitmap1) {

                    final Bitmap a;
                    final CropImage b;

                    public void run()
                    {
                        if (CropImage.e(b))
                        {
                            CropImage.b(b, a);
                            return;
                        } else
                        {
                            CropImage.c(b, a);
                            return;
                        }
                    }

            
            {
                b = CropImage.this;
                a = bitmap;
                super();
            }
                }, j);
                return;
            }
        }
          goto _L2
        try
        {
            config = android.graphics.Bitmap.Config.RGB_565;
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            throw exception;
        }
          goto _L3
    }

    private void b(Bitmap bitmap)
    {
        if (g == null) goto _L2; else goto _L1
_L1:
        OutputStream outputstream = null;
        ByteArrayOutputStream bytearrayoutputstream;
        outputstream = v.openOutputStream(g);
        bytearrayoutputstream = new ByteArrayOutputStream();
        if (outputstream == null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        bitmap.compress(f, 90, bytearrayoutputstream);
        byte abyte0[] = bytearrayoutputstream.toByteArray();
        bytearrayoutputstream.close();
        new byte[abyte0.length];
        outputstream.write(Base64.encode(abyte0, 0));
        eu.janmuller.android.simplecropimage.k.a(outputstream);
        Bundle bundle = new Bundle();
        Intent intent = new Intent(g.toString());
        intent.putExtras(bundle);
        intent.putExtra("image-path", x);
        intent.putExtra("orientation_in_degrees", eu.janmuller.android.simplecropimage.k.a(this));
        setResult(-1, intent);
_L4:
        bitmap.recycle();
        finish();
        return;
        IOException ioexception;
        ioexception;
        Log.e("CropImage", (new StringBuilder()).append("Cannot open file: ").append(g).toString(), ioexception);
        setResult(0);
        finish();
        eu.janmuller.android.simplecropimage.k.a(outputstream);
        return;
        Exception exception;
        exception;
        eu.janmuller.android.simplecropimage.k.a(outputstream);
        throw exception;
_L2:
        Log.e("CropImage", "not defined image url");
        if (true) goto _L4; else goto _L3
_L3:
    }

    static void b(CropImage cropimage, Bitmap bitmap)
    {
        cropimage.b(bitmap);
    }

    static CropImageView c(CropImage cropimage)
    {
        return cropimage.u;
    }

    static void c(CropImage cropimage, Bitmap bitmap)
    {
        cropimage.a(bitmap);
    }

    static Handler d(CropImage cropimage)
    {
        return cropimage.j;
    }

    static boolean e(CropImage cropimage)
    {
        return cropimage.k;
    }

    static int f(CropImage cropimage)
    {
        return cropimage.p;
    }

    static boolean g(CropImage cropimage)
    {
        return cropimage.i;
    }

    static int h(CropImage cropimage)
    {
        return cropimage.l;
    }

    static int i(CropImage cropimage)
    {
        return cropimage.m;
    }

    static boolean j(CropImage cropimage)
    {
        return cropimage.h;
    }

    public void onCreate(Bundle bundle)
    {
label0:
        {
label1:
            {
label2:
                {
                    super.onCreate(bundle);
                    v = getContentResolver();
                    requestWindowFeature(1);
                    setContentView(k.cropimage);
                    u = (CropImageView)findViewById(i.image);
                    a(this);
                    Bundle bundle1 = getIntent().getExtras();
                    if (bundle1 != null)
                    {
                        if (bundle1.getString("circleCrop") != null)
                        {
                            if (android.os.Build.VERSION.SDK_INT > 11)
                            {
                                u.setLayerType(1, null);
                            }
                            i = true;
                            l = 1;
                            m = 1;
                        }
                        x = bundle1.getString("image-path");
                        g = a(x);
                        w = b(x);
                        if (!bundle1.containsKey("aspectX") || !(bundle1.get("aspectX") instanceof Integer))
                        {
                            break label2;
                        }
                        l = bundle1.getInt("aspectX");
                        if (!bundle1.containsKey("aspectY") || !(bundle1.get("aspectY") instanceof Integer))
                        {
                            break label1;
                        }
                        m = bundle1.getInt("aspectY");
                        n = bundle1.getInt("outputX");
                        o = bundle1.getInt("outputY");
                        p = bundle1.getInt("minOutputX");
                        q = bundle1.getInt("minOutputY");
                        r = bundle1.getInt("maxOutputX");
                        s = bundle1.getInt("maxOutputY");
                        t = bundle1.getBoolean("scale", true);
                        y = bundle1.getBoolean("scaleUpIfNeeded", true);
                        k = bundle1.getBoolean("base64", false);
                    }
                    if (w == null)
                    {
                        Log.d("CropImage", "finish!!!");
                        finish();
                        return;
                    }
                    break label0;
                }
                throw new IllegalArgumentException("aspect_x must be integer");
            }
            throw new IllegalArgumentException("aspect_y must be integer");
        }
        if (w.getWidth() < p || w.getHeight() < q)
        {
            Toast.makeText(this, "La imagen seleccionada no tiene el tama\361o m\355nimo requerido", 1).show();
            finish();
            return;
        } else
        {
            getWindow().addFlags(1024);
            findViewById(i.discard).setOnClickListener(new android.view.View.OnClickListener() {

                final CropImage a;

                public void onClick(View view)
                {
                    a.setResult(0);
                    a.finish();
                }

            
            {
                a = CropImage.this;
                super();
            }
            });
            findViewById(i.save).setOnClickListener(new android.view.View.OnClickListener() {

                final CropImage a;

                public void onClick(View view)
                {
                    try
                    {
                        CropImage.a(a);
                        return;
                    }
                    catch (Exception exception)
                    {
                        a.finish();
                    }
                }

            
            {
                a = CropImage.this;
                super();
            }
            });
            findViewById(i.rotateLeft).setOnClickListener(new android.view.View.OnClickListener() {

                final CropImage a;

                public void onClick(View view)
                {
                    CropImage.a(a, eu.janmuller.android.simplecropimage.k.a(CropImage.b(a), -90F));
                    j j1 = new j(CropImage.b(a));
                    CropImage.c(a).a(j1, true);
                    a.e.run();
                }

            
            {
                a = CropImage.this;
                super();
            }
            });
            findViewById(i.rotateRight).setOnClickListener(new android.view.View.OnClickListener() {

                final CropImage a;

                public void onClick(View view)
                {
                    CropImage.a(a, eu.janmuller.android.simplecropimage.k.a(CropImage.b(a), 90F));
                    j j1 = new j(CropImage.b(a));
                    CropImage.c(a).a(j1, true);
                    a.e.run();
                }

            
            {
                a = CropImage.this;
                super();
            }
            });
            a();
            return;
        }
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if (w != null)
        {
            w.recycle();
        }
    }

    protected void onPause()
    {
        super.onPause();
        eu.janmuller.android.simplecropimage.a.a().a(z);
    }
}
