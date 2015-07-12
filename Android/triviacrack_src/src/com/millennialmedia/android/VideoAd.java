// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.Externalizable;
import java.io.File;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.millennialmedia.android:
//            CachedAd, VideoImage, VideoLogEvent, MMLog, 
//            AdCache, HandShake, MMAdImpl, HttpGetRequest

class VideoAd extends CachedAd
    implements Parcelable, Externalizable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public VideoAd createFromParcel(Parcel parcel)
        {
            return new VideoAd(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public VideoAd[] newArray(int i1)
        {
            return new VideoAd[i1];
        }

        public volatile Object[] newArray(int i1)
        {
            return newArray(i1);
        }

    };
    boolean g;
    boolean h;
    String i;
    String j;
    String k;
    String l;
    boolean m;
    boolean n;
    String o[];
    String p[];
    long q;
    long r;
    long s;
    String t[];
    String u[];
    String v[];
    boolean w;
    ArrayList x;
    ArrayList y;
    private String z;

    public VideoAd()
    {
        x = new ArrayList();
        y = new ArrayList();
    }

    VideoAd(Parcel parcel)
    {
        super(parcel);
        x = new ArrayList();
        y = new ArrayList();
        try
        {
            o = new String[parcel.readInt()];
            parcel.readStringArray(o);
            p = new String[parcel.readInt()];
            parcel.readStringArray(p);
            boolean aflag[] = new boolean[5];
            parcel.readBooleanArray(aflag);
            g = aflag[0];
            m = aflag[1];
            n = aflag[2];
            w = aflag[3];
            h = aflag[4];
            i = parcel.readString();
            j = parcel.readString();
            k = parcel.readString();
            l = parcel.readString();
            z = parcel.readString();
            q = parcel.readLong();
            r = parcel.readLong();
            s = parcel.readLong();
            x = parcel.readArrayList(com/millennialmedia/android/VideoImage.getClassLoader());
            y = parcel.readArrayList(com/millennialmedia/android/VideoLogEvent.getClassLoader());
            t = new String[parcel.readInt()];
            parcel.readStringArray(t);
            u = new String[parcel.readInt()];
            parcel.readStringArray(u);
            v = new String[parcel.readInt()];
            parcel.readStringArray(v);
            return;
        }
        catch (Exception exception)
        {
            MMLog.a("VideoAd", "Exception with videoad parcel creation: ", exception);
        }
    }

    VideoAd(String s1)
    {
        x = new ArrayList();
        y = new ArrayList();
        if (s1 != null)
        {
            JSONObject jsonobject;
            try
            {
                jsonobject = new JSONObject(s1);
            }
            catch (JSONException jsonexception)
            {
                MMLog.a("VideoAd", "VideoAd json exception: ", jsonexception);
                jsonobject = null;
            }
            if (jsonobject != null)
            {
                JSONObject jsonobject1 = jsonobject.optJSONObject("video");
                if (jsonobject1 != null)
                {
                    a(jsonobject1);
                }
            }
        }
    }

    static String a(VideoAd videoad)
    {
        return videoad.z;
    }

    static void a(Context context, String s1, HttpRedirection.RedirectionListenerImpl redirectionlistenerimpl)
    {
label0:
        {
            if (s1 != null)
            {
                VideoAd videoad = (VideoAd)AdCache.i(context, s1);
                if (videoad == null || !videoad.a(context, ((MMAdImpl) (null)), false))
                {
                    break label0;
                }
                redirectionlistenerimpl.updateLastVideoViewedTime();
                MMLog.a("VideoAd", String.format("mmvideo: attempting to play video %s", new Object[] {
                    s1
                }));
                videoad.a(context, redirectionlistenerimpl.e);
                redirectionlistenerimpl.startingVideo();
            }
            return;
        }
        MMLog.d("VideoAd", String.format("mmvideo: Ad %s cannot be shown at this time.", new Object[] {
            s1
        }));
    }

    static boolean a(Context context, String s1)
    {
        return AdCache.h(context, (new StringBuilder()).append(s1).append("video.dat").toString());
    }

    static boolean a(Context context, String s1, String s2)
    {
        boolean flag = AdCache.b(s1, (new StringBuilder()).append(s2).append("video.dat").toString(), context);
        String s3 = (new StringBuilder()).append("Caching completed successfully (").append(s2).append("video.dat").append(")? %b").toString();
        Object aobj[] = new Object[1];
        aobj[0] = Boolean.valueOf(flag);
        MMLog.a("VideoAd", String.format(s3, aobj));
        return flag;
    }

    static Uri b(Context context, String s1)
    {
        return Uri.fromFile(AdCache.g(context, (new StringBuilder()).append(s1).append("video.dat").toString()));
    }

    private void e(Context context)
    {
        AdCache.a(context, 2, new VideoIterator(context, this));
    }

    void a(Context context, long l1)
    {
        Utils.IntentUtils.b(context, b(context, l1));
    }

    protected void a(JSONObject jsonobject)
    {
        super.a(jsonobject);
        JSONArray jsonarray = jsonobject.optJSONArray("startActivity");
        j = jsonobject.optString("overlayURL", null);
        k = jsonobject.optString("endURL", null);
        l = jsonobject.optString("cacheMissURL", null);
        z = jsonobject.optString("videoFileId", null);
        if (jsonarray != null)
        {
            o = new String[jsonarray.length()];
            for (int k2 = 0; k2 < jsonarray.length(); k2++)
            {
                o[k2] = jsonarray.optString(k2);
            }

        } else
        {
            o = new String[0];
        }
        JSONArray jsonarray1 = jsonobject.optJSONArray("endActivity");
        if (jsonarray1 != null)
        {
            p = new String[jsonarray1.length()];
            for (int j2 = 0; j2 < jsonarray1.length(); j2++)
            {
                p[j2] = jsonarray1.optString(j2);
            }

        } else
        {
            p = new String[0];
        }
        JSONArray jsonarray2 = jsonobject.optJSONArray("cacheComplete");
        if (jsonarray2 != null)
        {
            t = new String[jsonarray2.length()];
            for (int i2 = 0; i2 < jsonarray2.length(); i2++)
            {
                t[i2] = jsonarray2.optString(i2);
            }

        } else
        {
            t = new String[0];
        }
        JSONArray jsonarray3 = jsonobject.optJSONArray("cacheFailed");
        if (jsonarray3 != null)
        {
            u = new String[jsonarray3.length()];
            for (int l1 = 0; l1 < jsonarray3.length(); l1++)
            {
                u[l1] = jsonarray3.optString(l1);
            }

        } else
        {
            u = new String[0];
        }
        JSONArray jsonarray4 = jsonobject.optJSONArray("videoError");
        if (jsonarray4 != null)
        {
            v = new String[jsonarray4.length()];
            for (int k1 = 0; k1 < jsonarray4.length(); k1++)
            {
                v[k1] = jsonarray4.optString(k1);
            }

        } else
        {
            v = new String[0];
        }
        g = jsonobject.optBoolean("showVideoPlayerControls");
        n = jsonobject.optBoolean("showCountdownHUD");
        w = jsonobject.optBoolean("reloadOverlayOnRestart");
        JSONObject jsonobject1 = jsonobject.optJSONObject("onCompletion");
        if (jsonobject1 != null)
        {
            i = jsonobject1.optString("url", null);
            m = jsonobject1.optBoolean("stayInPlayer");
        }
        q = (long)(1000D * jsonobject.optDouble("duration", 0.0D));
        r = jsonobject.optLong("contentLength");
        s = jsonobject.optLong("closeAfterDelay");
        JSONArray jsonarray5 = jsonobject.optJSONArray("buttons");
        if (jsonarray5 != null)
        {
            for (int j1 = 0; j1 < jsonarray5.length(); j1++)
            {
                JSONObject jsonobject3 = jsonarray5.optJSONObject(j1);
                if (jsonobject3 != null)
                {
                    VideoImage videoimage = new VideoImage(jsonobject3);
                    x.add(videoimage);
                }
            }

        }
        JSONArray jsonarray6 = jsonobject.optJSONArray("log");
        int i1 = 0;
        if (jsonarray6 != null)
        {
            for (; i1 < jsonarray6.length(); i1++)
            {
                JSONObject jsonobject2 = jsonarray6.optJSONObject(i1);
                if (jsonobject2 != null)
                {
                    VideoLogEvent videologevent = new VideoLogEvent(jsonobject2);
                    y.add(videologevent);
                }
            }

        }
    }

    boolean a(Context context)
    {
        return true;
    }

    boolean a(Context context, MMAdImpl mmadimpl, boolean flag)
    {
        if (!flag) goto _L2; else goto _L1
_L1:
        if (a() || !d(context) || !HandShake.a(context).a(mmadimpl.f, c)) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (a() || !d(context))
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    Intent b(Context context, long l1)
    {
        Intent intent = new Intent();
        intent.putExtra("videoId", e());
        if (l1 != -4L)
        {
            intent.putExtra("internalId", l1);
        }
        intent.setData(Uri.parse((new StringBuilder()).append(AdCache.g(context).getAbsolutePath()).append(File.separator).append(z).append("video.dat").toString()));
        return intent;
    }

    boolean b(Context context)
    {
        boolean flag = AdCache.b(d, (new StringBuilder()).append(z).append("video.dat").toString(), context);
        if (!flag) goto _L2; else goto _L1
_L1:
        int i1 = 0;
_L7:
        if (i1 >= x.size()) goto _L2; else goto _L3
_L3:
        boolean flag1;
        VideoImage videoimage = (VideoImage)x.get(i1);
        flag1 = AdCache.a(videoimage.a, (new StringBuilder()).append(e()).append(videoimage.a()).toString(), context);
        if (flag1) goto _L5; else goto _L4
_L4:
        flag = flag1;
_L2:
        Object aobj[];
        if (!flag)
        {
            if (f)
            {
                c(context);
            }
            HttpGetRequest.a(u);
        } else
        if (flag)
        {
            if (a != null && a.length() > 0)
            {
                AdCache.a(context, a);
            }
            HttpGetRequest.a(t);
        }
        aobj = new Object[1];
        aobj[0] = Boolean.valueOf(flag);
        MMLog.a("VideoAd", String.format("Caching completed successfully? %b", aobj));
        return flag;
_L5:
        i1++;
        flag = flag1;
        if (true) goto _L7; else goto _L6
_L6:
    }

    int c()
    {
        return 1;
    }

    void c(Context context)
    {
        super.c(context);
        e(context);
        AdCache.b(context, a);
        Object aobj[] = new Object[1];
        aobj[0] = e();
        MMLog.a("VideoAd", String.format("Ad %s was deleted.", aobj));
    }

    String d()
    {
        return "Video";
    }

    boolean d(Context context)
    {
label0:
        {
label1:
            {
                int i1 = 1 + x.size();
                File file = AdCache.h(context);
                File file1 = AdCache.g(context);
                if (file == null || file1 == null)
                {
                    break label0;
                }
                String as[] = file.list(new VideoFilenameFilter());
                boolean flag;
                Iterator iterator;
                VideoImage videoimage;
                if (as != null && as.length >= i1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (!flag || file1 == null)
                {
                    break label1;
                }
                if (!(new File(file1, (new StringBuilder()).append(z).append("video.dat").toString())).exists())
                {
                    return false;
                }
                iterator = x.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label1;
                    }
                    videoimage = (VideoImage)iterator.next();
                } while ((new File(file, (new StringBuilder()).append(e()).append(videoimage.a()).toString())).exists());
                return false;
            }
            return flag;
        }
        return false;
    }

    public int describeContents()
    {
        return 0;
    }

    void f()
    {
        if (o != null)
        {
            MMLog.b("VideoAd", "Cached video begin event logged");
            for (int i1 = 0; i1 < o.length; i1++)
            {
                MMSDK.Event.a(o[i1]);
            }

        }
    }

    void g()
    {
        if (p != null)
        {
            MMLog.b("VideoAd", "Cached video end event logged");
            for (int i1 = 0; i1 < p.length; i1++)
            {
                MMSDK.Event.a(p[i1]);
            }

        }
    }

    boolean h()
    {
        for (Iterator iterator = x.iterator(); iterator.hasNext();)
        {
            if (((VideoImage)iterator.next()).s)
            {
                return true;
            }
        }

        return false;
    }

    public void readExternal(ObjectInput objectinput)
    {
        int i1 = 0;
        super.readExternal(objectinput);
        g = objectinput.readBoolean();
        i = (String)objectinput.readObject();
        j = (String)objectinput.readObject();
        k = (String)objectinput.readObject();
        l = (String)objectinput.readObject();
        z = (String)objectinput.readObject();
        m = objectinput.readBoolean();
        n = objectinput.readBoolean();
        w = objectinput.readBoolean();
        int j1 = objectinput.readInt();
        o = new String[j1];
        for (int k1 = 0; k1 < j1; k1++)
        {
            o[k1] = (String)objectinput.readObject();
        }

        int l1 = objectinput.readInt();
        p = new String[l1];
        for (int i2 = 0; i2 < l1; i2++)
        {
            p[i2] = (String)objectinput.readObject();
        }

        q = objectinput.readLong();
        h = objectinput.readBoolean();
        r = objectinput.readLong();
        s = objectinput.readLong();
        int j2 = objectinput.readInt();
        t = new String[j2];
        for (int k2 = 0; k2 < j2; k2++)
        {
            t[k2] = (String)objectinput.readObject();
        }

        int l2 = objectinput.readInt();
        u = new String[l2];
        for (int i3 = 0; i3 < l2; i3++)
        {
            u[i3] = (String)objectinput.readObject();
        }

        int j3 = objectinput.readInt();
        v = new String[j3];
        for (int k3 = 0; k3 < j3; k3++)
        {
            v[k3] = (String)objectinput.readObject();
        }

        x.clear();
        int l3 = objectinput.readInt();
        for (int i4 = 0; i4 < l3; i4++)
        {
            VideoImage videoimage = (VideoImage)objectinput.readObject();
            x.add(videoimage);
        }

        y.clear();
        for (int j4 = objectinput.readInt(); i1 < j4; i1++)
        {
            VideoLogEvent videologevent = (VideoLogEvent)objectinput.readObject();
            y.add(videologevent);
        }

    }

    public void writeExternal(ObjectOutput objectoutput)
    {
        int i1 = 0;
        super.writeExternal(objectoutput);
        objectoutput.writeBoolean(g);
        objectoutput.writeObject(i);
        objectoutput.writeObject(j);
        objectoutput.writeObject(k);
        objectoutput.writeObject(l);
        objectoutput.writeObject(z);
        objectoutput.writeBoolean(m);
        objectoutput.writeBoolean(n);
        objectoutput.writeBoolean(w);
        objectoutput.writeInt(o.length);
        String as[] = o;
        int j1 = as.length;
        for (int k1 = 0; k1 < j1; k1++)
        {
            objectoutput.writeObject(as[k1]);
        }

        objectoutput.writeInt(p.length);
        String as1[] = p;
        int l1 = as1.length;
        for (int i2 = 0; i2 < l1; i2++)
        {
            objectoutput.writeObject(as1[i2]);
        }

        objectoutput.writeLong(q);
        objectoutput.writeBoolean(h);
        objectoutput.writeLong(r);
        objectoutput.writeLong(s);
        objectoutput.writeInt(t.length);
        String as2[] = t;
        int j2 = as2.length;
        for (int k2 = 0; k2 < j2; k2++)
        {
            objectoutput.writeObject(as2[k2]);
        }

        objectoutput.writeInt(u.length);
        String as3[] = u;
        int l2 = as3.length;
        for (int i3 = 0; i3 < l2; i3++)
        {
            objectoutput.writeObject(as3[i3]);
        }

        objectoutput.writeInt(v.length);
        String as4[] = v;
        for (int j3 = as4.length; i1 < j3; i1++)
        {
            objectoutput.writeObject(as4[i1]);
        }

        objectoutput.writeInt(x.size());
        for (Iterator iterator = x.iterator(); iterator.hasNext(); objectoutput.writeObject((VideoImage)iterator.next())) { }
        objectoutput.writeInt(y.size());
        for (Iterator iterator1 = y.iterator(); iterator1.hasNext(); objectoutput.writeObject((VideoLogEvent)iterator1.next())) { }
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        super.writeToParcel(parcel, i1);
        parcel.writeInt(o.length);
        parcel.writeStringArray(o);
        parcel.writeInt(p.length);
        parcel.writeStringArray(p);
        boolean aflag[] = new boolean[5];
        aflag[0] = g;
        aflag[1] = m;
        aflag[2] = n;
        aflag[3] = w;
        aflag[4] = h;
        parcel.writeBooleanArray(aflag);
        parcel.writeString(i);
        parcel.writeString(k);
        parcel.writeString(j);
        parcel.writeString(l);
        parcel.writeString(z);
        parcel.writeLong(q);
        parcel.writeLong(r);
        parcel.writeLong(s);
        parcel.writeList(x);
        parcel.writeList(y);
        parcel.writeInt(t.length);
        parcel.writeStringArray(t);
        parcel.writeInt(u.length);
        parcel.writeStringArray(u);
        parcel.writeInt(v.length);
        parcel.writeStringArray(v);
    }


    private class VideoIterator extends AdCache.Iterator
    {

        boolean a;
        private WeakReference b;
        private WeakReference c;

        void a()
        {
            if (!a)
            {
                Context context = (Context)c.get();
                if (context != null)
                {
                    a(context);
                }
            }
            super.a();
        }

        void a(Context context)
        {
            VideoAd videoad = (VideoAd)b.get();
            if (videoad != null && AdCache.j(context, (new StringBuilder()).append(VideoAd.a(videoad)).append("video.dat").toString()))
            {
                Object aobj[] = new Object[1];
                aobj[0] = VideoAd.a(videoad);
                MMLog.a("VideoAd", String.format("VideoAd video file %s was deleted.", aobj));
            }
        }

        boolean a(CachedAd cachedad)
        {
            if (cachedad != null && (cachedad instanceof VideoAd))
            {
                VideoAd videoad = (VideoAd)cachedad;
                VideoAd videoad1 = (VideoAd)b.get();
                if (videoad1 != null && VideoAd.a(videoad).equals(VideoAd.a(videoad1)))
                {
                    a = true;
                }
            }
            return super.a(cachedad);
        }

        public VideoIterator(Context context, VideoAd videoad)
        {
            a = false;
            b = new WeakReference(videoad);
            c = new WeakReference(context);
        }
    }


    private class VideoFilenameFilter
        implements FilenameFilter
    {

        private WeakReference a;

        public boolean accept(File file, String s1)
        {
            VideoAd videoad = (VideoAd)a.get();
            if (videoad != null)
            {
                String s2 = videoad.e();
                if (s2 == null)
                {
                    return false;
                } else
                {
                    return s1.startsWith(s2);
                }
            } else
            {
                return false;
            }
        }

        public VideoFilenameFilter()
        {
            a = new WeakReference(VideoAd.this);
        }
    }

}
