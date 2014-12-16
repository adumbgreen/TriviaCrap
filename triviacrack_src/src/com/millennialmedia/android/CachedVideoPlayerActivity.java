// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Intent;
import android.graphics.BitmapFactory;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.VideoView;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.millennialmedia.android:
//            VideoPlayerActivity, VideoImage, VideoAd, MMLog, 
//            MMWebView, MMActivity, InterstitialWebViewClient, HttpGetRequest, 
//            AdCache, VideoLogEvent

class CachedVideoPlayerActivity extends VideoPlayerActivity
    implements android.os.Handler.Callback
{

    boolean a;
    boolean b;
    private Handler q;
    private VideoAd r;
    private MMWebView s;
    private TextView t;
    private TextView u;
    private RelativeLayout v;
    private int w;
    private boolean x;

    CachedVideoPlayerActivity()
    {
        x = true;
    }

    static MMWebView a(CachedVideoPlayerActivity cachedvideoplayeractivity)
    {
        return cachedvideoplayeractivity.s;
    }

    private void a(long l)
    {
        q.postDelayed(new Runnable() {

            final CachedVideoPlayerActivity a;

            public void run()
            {
                a.m();
            }

            
            {
                a = CachedVideoPlayerActivity.this;
                super();
            }
        }, l);
    }

    private void a(ViewGroup viewgroup)
    {
        u = new TextView(c);
        u.setText(" seconds remaining ...");
        u.setTextColor(-1);
        u.setPadding(0, 0, 5, 0);
        u.setId(402);
        u.setShadowLayer(1.0F, 0.0F, 0.0F, 0xff000000);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(10);
        layoutparams.addRule(11);
        viewgroup.addView(u, layoutparams);
    }

    static void a(CachedVideoPlayerActivity cachedvideoplayeractivity, String s1)
    {
        cachedvideoplayeractivity.f(s1);
    }

    private void b(ViewGroup viewgroup)
    {
        t = new TextView(c);
        t.setText(s());
        t.setTextColor(-1);
        t.setId(401);
        t.setShadowLayer(1.0F, 0.0F, 0.0F, 0xff000000);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(10);
        layoutparams.addRule(0, 402);
        viewgroup.addView(t, layoutparams);
    }

    private void b(VideoImage videoimage)
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(videoimage.p, videoimage.q);
        alphaanimation.setDuration(videoimage.r);
        alphaanimation.setFillEnabled(true);
        alphaanimation.setFillBefore(true);
        alphaanimation.setFillAfter(true);
        videoimage.t.startAnimation(alphaanimation);
    }

    private void f(String s1)
    {
        if (g != null && r != null && !g.isPlaying() && r.j != null && s1.equalsIgnoreCase(r.j))
        {
            a(0);
        }
    }

    private void p()
    {
        if (r != null && r.x != null)
        {
            for (int k = 0; k < r.x.size(); k++)
            {
                VideoImage videoimage = (VideoImage)r.x.get(k);
                if (!videoimage.s)
                {
                    a(videoimage.t, videoimage.p);
                }
                if (videoimage.t.getParent() == null)
                {
                    v.addView(videoimage.t, videoimage.u);
                }
                for (int l = 0; l < r.x.size(); l++)
                {
                    v.bringChildToFront(((VideoImage)r.x.get(l)).t);
                }

                Object aobj[] = new Object[2];
                aobj[0] = Integer.valueOf(k);
                aobj[1] = Float.valueOf(videoimage.p);
                MMLog.a("CachedVideoPlayerActivity", String.format("Button: %d alpha: %f", aobj));
            }

        }
    }

    private void q()
    {
        s = new MMWebView(c, c.a);
        s.setId(413);
        CachedVideoWebViewClientListener cachedvideowebviewclientlistener = new CachedVideoWebViewClientListener();
        s.setWebViewClient(new InterstitialWebViewClient(cachedvideowebviewclientlistener, h));
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        layoutparams.addRule(13);
        s.setLayoutParams(layoutparams);
        s.setBackgroundColor(0);
        c(r.j);
    }

    private void r()
    {
        if (r != null)
        {
            t.setText(String.valueOf(r.q / 1000L));
        }
        u.setVisibility(0);
        t.setVisibility(0);
    }

    private String s()
    {
        if (e != 0)
        {
            return String.valueOf(e / 1000);
        }
        if (r != null)
        {
            return String.valueOf(r.q / 1000L);
        } else
        {
            return "";
        }
    }

    private void t()
    {
        if (u != null)
        {
            u.setVisibility(4);
        }
        if (t != null)
        {
            t.setVisibility(4);
        }
    }

    protected void a()
    {
        super.a();
        if (!a && r != null && r.m && f)
        {
            p();
        }
    }

    protected void a(int k)
    {
        if (r == null)
        {
            Toast.makeText(c, "Sorry. There was a problem playing the video", 1).show();
            return;
        }
        if (!q.hasMessages(2) && r != null)
        {
            q.sendMessageDelayed(Message.obtain(q, 2), 1000L);
        }
        super.a(k);
    }

    protected void a(Bundle bundle)
    {
        bundle.putParcelable("videoAd", r);
        super.a(bundle);
    }

    protected void a(String s1)
    {
        if (r != null)
        {
            HttpGetRequest.a(r.v);
        }
        if (s != null)
        {
            s.loadUrl((new StringBuilder()).append("javascript:MMJS.cachedVideo.setError(").append(s1).append(");").toString());
        }
        super.a(s1);
    }

    protected RelativeLayout b()
    {
        RelativeLayout relativelayout;
        relativelayout = super.b();
        q = new Handler(this);
        setRequestedOrientation(0);
        if (x)
        {
            a(relativelayout);
            b(((ViewGroup) (relativelayout)));
            r();
        }
        if (r == null || r.j == null) goto _L2; else goto _L1
_L1:
        q();
        if (s != null)
        {
            relativelayout.addView(s);
            a = true;
        }
_L6:
        return relativelayout;
_L2:
        a = false;
        v = new RelativeLayout(c);
        v.setId(1000);
        ArrayList arraylist;
        File file;
        int k;
        VideoImage videoimage;
        ImageButton imagebutton;
        Exception exception;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        Object aobj[];
        Message message;
        Message message1;
        android.graphics.Bitmap bitmap;
        if (r != null)
        {
            arraylist = r.x;
        } else
        {
            arraylist = null;
        }
        if (arraylist == null)
        {
            break MISSING_BLOCK_LABEL_722;
        }
        file = AdCache.h(c);
        k = 0;
        if (k >= arraylist.size())
        {
            break MISSING_BLOCK_LABEL_705;
        }
        videoimage = (VideoImage)arraylist.get(k);
        imagebutton = new ImageButton(c);
        videoimage.t = imagebutton;
        bitmap = BitmapFactory.decodeFile((new StringBuilder()).append(file.getAbsolutePath()).append(File.separator).append(r.e()).append(Uri.parse(videoimage.a).getLastPathSegment().replaceFirst("\\.[^\\.]*$", ".dat")).toString());
        if (bitmap == null) goto _L4; else goto _L3
_L3:
        try
        {
            imagebutton.setImageBitmap(bitmap);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            MMLog.a("CachedVideoPlayerActivity", "Problem creating layout with bitmap buttons: ", exception);
        }
        a(imagebutton, videoimage.p);
        imagebutton.setId(k + 1);
        imagebutton.setPadding(0, 0, 0, 0);
        if (videoimage.s)
        {
            imagebutton.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
            imagebutton.setBackgroundColor(0xff000000);
            layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        } else
        {
            imagebutton.setBackgroundColor(0);
            layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            aobj = new Object[5];
            aobj[0] = Integer.valueOf(imagebutton.getId());
            aobj[1] = Integer.valueOf(videoimage.k);
            aobj[2] = Integer.valueOf(videoimage.j);
            aobj[3] = Integer.valueOf(videoimage.m);
            aobj[4] = Integer.valueOf(videoimage.l);
            MMLog.a("CachedVideoPlayerActivity", String.format("Button: %d Anchor: %d Position: %d Anchor2: %d Position2: %d", aobj));
            layoutparams.addRule(videoimage.j, videoimage.k);
            layoutparams.addRule(videoimage.l, videoimage.m);
            layoutparams.setMargins(videoimage.h, videoimage.f, videoimage.i, videoimage.g);
        }
        if (!TextUtils.isEmpty(videoimage.d))
        {
            imagebutton.setOnClickListener(new android.view.View.OnClickListener(imagebutton, videoimage) {

                final ImageButton a;
                final VideoImage b;
                final CachedVideoPlayerActivity c;

                public void onClick(View view)
                {
                    if (a != null)
                    {
                        a.setEnabled(false);
                    }
                    c.h.d = b.e;
                    c.e(b.d);
                    c.a(b);
                }

            
            {
                c = CachedVideoPlayerActivity.this;
                a = imagebutton;
                b = videoimage;
                super();
            }
            });
        }
        if (videoimage.n > 0L)
        {
            videoimage.u = layoutparams;
            message1 = Message.obtain(q, 3, videoimage);
            q.sendMessageDelayed(message1, videoimage.n);
        } else
        {
            v.addView(imagebutton, layoutparams);
        }
        if (videoimage.o > 0L)
        {
            message = Message.obtain(q, 1, videoimage);
            q.sendMessageDelayed(message, videoimage.o + videoimage.n + videoimage.r);
        }
        k++;
        if (false)
        {
            break MISSING_BLOCK_LABEL_453;
        } else
        {
            break MISSING_BLOCK_LABEL_146;
        }
_L4:
        imagebutton.setImageURI(Uri.parse((new StringBuilder()).append(file.getAbsolutePath()).append(File.separator).append(r.e()).append(Uri.parse(videoimage.a).getLastPathSegment().replaceFirst("\\.[^\\.]*$", ".dat")).toString()));
        break MISSING_BLOCK_LABEL_263;
        relativelayout.addView(v, new android.widget.RelativeLayout.LayoutParams(-1, -1));
        if (v != null)
        {
            relativelayout.bringChildToFront(v);
        }
        if (s != null)
        {
            relativelayout.bringChildToFront(s);
            return relativelayout;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void b(Bundle bundle)
    {
        r = (VideoAd)bundle.getParcelable("videoAd");
        super.b(bundle);
    }

    protected void b(String s1)
    {
label0:
        {
            if (s1 != null)
            {
                e(s1);
            }
            if (r != null)
            {
                r.g();
                if (r.m)
                {
                    break label0;
                }
                m();
            }
            return;
        }
        if (!a && r.x != null)
        {
            p();
            if (!r.h())
            {
                m();
            }
        }
        if (s == null || TextUtils.isEmpty(r.k)) goto _L2; else goto _L1
_L1:
        c(r.k);
        s.bringToFront();
_L4:
        if (r.s != 0L)
        {
            a(r.s);
        }
        q.removeMessages(1);
        q.removeMessages(2);
        q.removeMessages(3);
        return;
_L2:
        if (a)
        {
            m();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void c()
    {
        super.c();
        q.removeMessages(1);
        q.removeMessages(2);
        q.removeMessages(3);
    }

    protected void c(Bundle bundle)
    {
        super.c(bundle);
        if (bundle == null)
        {
            String s1 = getIntent().getStringExtra("videoId");
            r = (VideoAd)AdCache.i(c, s1);
            if (r != null)
            {
                d = r.g;
                x = r.n;
            }
            return;
        } else
        {
            r = (VideoAd)bundle.getParcelable("videoAd");
            d = bundle.getBoolean("shouldShowBottomBar");
            w = bundle.getInt("lastVideoPosition");
            e = bundle.getInt("currentVideoPosition");
            x = r.n;
            return;
        }
    }

    void c(String s1)
    {
        (new FetchWebViewContentTask(s1)).execute(new Void[0]);
    }

    protected void d()
    {
        super.d();
        if (s != null)
        {
            s.bringToFront();
        }
        if (v != null)
        {
            v.bringToFront();
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        if (r != null)
        {
            if (q != null)
            {
                q.removeMessages(1);
            }
            if (!a)
            {
                int k = 0;
                while (k < r.x.size()) 
                {
                    VideoImage videoimage = (VideoImage)r.x.get(k);
                    a(videoimage.t, videoimage.p);
                    if (videoimage.o > 0L)
                    {
                        Message message = Message.obtain(q, 1, videoimage);
                        q.sendMessageDelayed(message, videoimage.o);
                    } else
                    if (motionevent.getAction() == 1)
                    {
                        if (j())
                        {
                            AlphaAnimation alphaanimation = new AlphaAnimation(videoimage.p, videoimage.q);
                            alphaanimation.setDuration(videoimage.r);
                            alphaanimation.setFillEnabled(true);
                            alphaanimation.setFillBefore(true);
                            alphaanimation.setFillAfter(true);
                            videoimage.t.startAnimation(alphaanimation);
                        }
                    } else
                    if (motionevent.getAction() == 0)
                    {
                        a(videoimage.t, videoimage.p);
                    }
                    k++;
                }
            }
        }
        return super.dispatchTouchEvent(motionevent);
    }

    protected void g()
    {
        if (r != null)
        {
            if (!q.hasMessages(2))
            {
                q.sendMessageDelayed(Message.obtain(q, 2), 1000L);
            }
            if (!a)
            {
                if (x)
                {
                    long l1 = (r.q - (long)e) / 1000L;
                    int k;
                    VideoImage videoimage;
                    Message message;
                    Message message1;
                    if (l1 > 0L)
                    {
                        if (t != null)
                        {
                            t.setText(String.valueOf(l1));
                        }
                    } else
                    {
                        t();
                    }
                }
                if (r.x != null)
                {
                    k = 0;
                    while (k < r.x.size()) 
                    {
                        videoimage = (VideoImage)r.x.get(k);
                        long l;
                        if (videoimage.n > 0L && v.indexOfChild(videoimage.t) == -1)
                        {
                            message1 = Message.obtain(q, 3, videoimage);
                            l = videoimage.n - (long)e;
                            if (l < 0L)
                            {
                                l = 500L;
                            }
                            q.sendMessageDelayed(message1, l);
                        } else
                        {
                            l = 0L;
                        }
                        if (videoimage.o > 0L)
                        {
                            message = Message.obtain(q, 1, videoimage);
                            q.sendMessageDelayed(message, l + videoimage.o + videoimage.r);
                        }
                        k++;
                    }
                }
            }
        }
        super.g();
    }

    protected void h()
    {
        if (r != null)
        {
            if ((b || r.w) && r.j != null && s != null)
            {
                c(r.j);
                b = false;
            }
            ArrayList arraylist = r.x;
            q.removeMessages(1);
            q.removeMessages(2);
            q.removeMessages(3);
            w = 0;
            if (!a && v != null && arraylist != null)
            {
                for (int k = 0; k < arraylist.size(); k++)
                {
                    VideoImage videoimage = (VideoImage)arraylist.get(k);
                    if (videoimage == null)
                    {
                        continue;
                    }
                    if (videoimage.n > 0L)
                    {
                        ImageButton imagebutton = videoimage.t;
                        v.removeView(imagebutton);
                        Message message1 = Message.obtain(q, 3, videoimage);
                        q.sendMessageDelayed(message1, videoimage.n);
                    }
                    if (videoimage.o > 0L)
                    {
                        Message message = Message.obtain(q, 1, videoimage);
                        q.sendMessageDelayed(message, videoimage.o + videoimage.n + videoimage.r);
                    }
                }

            }
            if (q != null)
            {
                q.sendMessageDelayed(Message.obtain(q, 2), 1000L);
            }
            if (x)
            {
                r();
            }
        }
        super.h();
    }

    public boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 3: default 32
    //                   1 34
    //                   2 182
    //                   3 54;
           goto _L1 _L2 _L3 _L4
_L1:
        return true;
_L2:
        if (j())
        {
            b((VideoImage)message.obj);
            return true;
        }
          goto _L1
_L4:
        VideoImage videoimage = (VideoImage)message.obj;
        Object aobj[];
        try
        {
            if (v.indexOfChild(videoimage.t) == -1)
            {
                v.addView(videoimage.t, videoimage.u);
            }
        }
        catch (IllegalStateException illegalstateexception1)
        {
            MMLog.a("CachedVideoPlayerActivity", "Problem adding buttons", illegalstateexception1);
        }
        if (!j()) goto _L1; else goto _L5
_L5:
        b(videoimage);
        aobj = new Object[3];
        aobj[0] = Long.valueOf(videoimage.r);
        aobj[1] = Integer.valueOf(videoimage.t.getId());
        aobj[2] = Long.valueOf(System.currentTimeMillis());
        MMLog.a("CachedVideoPlayerActivity", String.format("Beginning animation to visibility. Fade duration: %d Button: %d Time: %d", aobj));
        return true;
_L3:
        if (g == null || !g.isPlaying()) goto _L7; else goto _L6
_L6:
        int k = g.getCurrentPosition();
        if (k <= w) goto _L9; else goto _L8
_L8:
        if (r == null) goto _L11; else goto _L10
_L10:
        if (w == 0)
        {
            r.f();
        }
          goto _L12
_L20:
        int i1;
        if (i1 >= r.y.size()) goto _L11; else goto _L13
_L13:
        VideoLogEvent videologevent = (VideoLogEvent)r.y.get(i1);
        if (videologevent == null) goto _L15; else goto _L14
_L14:
        if (videologevent.a >= (long)w && videologevent.a < (long)k)
        {
            int j1 = 0;
            do
            {
                long l;
                try
                {
                    if (j1 >= videologevent.b.length)
                    {
                        break;
                    }
                    MMSDK.Event.a(videologevent.b[j1]);
                }
                catch (IllegalStateException illegalstateexception)
                {
                    MMLog.a("CachedVideoPlayerActivity", "Error with video check", illegalstateexception);
                    return true;
                }
                j1++;
            } while (true);
        }
          goto _L15
_L11:
        w = k;
_L9:
        if (a && s != null)
        {
            s.loadUrl((new StringBuilder()).append("javascript:MMJS.cachedVideo.updateVideoSeekTime(").append((float)Math.floor((float)k / 1000F)).append(");").toString());
        }
        if (!x) goto _L7; else goto _L16
_L16:
        l = (r.q - (long)k) / 1000L;
        if (l <= 0L) goto _L18; else goto _L17
_L17:
        if (t != null)
        {
            t.setText(String.valueOf(l));
        }
_L7:
        q.sendMessageDelayed(Message.obtain(q, 2), 500L);
        return true;
_L18:
        t();
          goto _L7
_L12:
        i1 = 0;
        continue; /* Loop/switch isn't completed */
_L15:
        i1++;
        if (true) goto _L20; else goto _L19
_L19:
    }

    protected void i()
    {
        super.i();
        if (!a && r != null && r.x != null)
        {
            Iterator iterator = r.x.iterator();
            while (iterator.hasNext()) 
            {
                VideoImage videoimage = (VideoImage)iterator.next();
                if (videoimage.t != null)
                {
                    videoimage.t.setEnabled(true);
                }
            }
        }
    }

    protected boolean j()
    {
        return !r.m || !super.j();
    }

    public void onCompletion(MediaPlayer mediaplayer)
    {
        super.onCompletion(mediaplayer);
        if (x)
        {
            t();
        }
        if (r != null)
        {
            b(r.i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MMLog.a("CachedVideoPlayerActivity", "Is Cached Ad");
    }

    public boolean onError(MediaPlayer mediaplayer, int k, int l)
    {
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(k);
        aobj[1] = Integer.valueOf(l);
        a(String.format("Error while playing, %d - %d", aobj));
        return super.onError(mediaplayer, k, l);
    }

    private class CachedVideoWebViewClientListener extends MMWebViewClient.MMWebViewClientListener
    {

        WeakReference a;

        public void onPageFinished(String s1)
        {
            MMLog.b("CachedVideoPlayerActivity", (new StringBuilder()).append("@@ ON PAGE FINISHED").append(s1).toString());
            CachedVideoPlayerActivity cachedvideoplayeractivity = (CachedVideoPlayerActivity)a.get();
            if (cachedvideoplayeractivity != null)
            {
                CachedVideoPlayerActivity.a(cachedvideoplayeractivity, s1);
            }
        }

        CachedVideoWebViewClientListener()
        {
            a = new WeakReference(CachedVideoPlayerActivity.this);
        }
    }


    private class FetchWebViewContentTask extends AsyncTask
    {

        final CachedVideoPlayerActivity a;
        private String b;
        private boolean c;

        protected transient String a(Void avoid[])
        {
            HttpResponse httpresponse;
            StatusLine statusline;
            httpresponse = (new HttpGetRequest()).a(b);
            statusline = httpresponse.getStatusLine();
            if (httpresponse == null || statusline == null)
            {
                break MISSING_BLOCK_LABEL_69;
            }
            HttpEntity httpentity;
            if (statusline.getStatusCode() == 404)
            {
                break MISSING_BLOCK_LABEL_69;
            }
            httpentity = httpresponse.getEntity();
            if (httpentity == null)
            {
                break MISSING_BLOCK_LABEL_74;
            }
            return HttpGetRequest.a(httpentity.getContent());
            c = true;
_L2:
            return null;
            Exception exception;
            exception;
            MMLog.a("CachedVideoPlayerActivity", "Error with http web overlay", exception);
            if (true) goto _L2; else goto _L1
_L1:
        }

        protected void a(String s1)
        {
            if (c)
            {
                a.m();
            }
            if (s1 != null && CachedVideoPlayerActivity.a(a) != null)
            {
                CachedVideoPlayerActivity.a(a).a(s1, b, a.c);
                a.b = true;
            }
        }

        protected Object doInBackground(Object aobj[])
        {
            return a((Void[])aobj);
        }

        protected void onPostExecute(Object obj)
        {
            a((String)obj);
        }

        public FetchWebViewContentTask(String s1)
        {
            a = CachedVideoPlayerActivity.this;
            super();
            b = s1;
        }
    }

}
