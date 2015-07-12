// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

// Referenced classes of package com.millennialmedia.android:
//            MMJSObject, MMLog, MMJSResponse, MMSDK, 
//            AdCache

class BridgeMMMedia extends MMJSObject
{

    private static Object m;
    MediaScannerConnection a;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;

    BridgeMMMedia()
    {
        d = "isSourceTypeAvailable";
        e = "availableSourceTypes";
        f = "getPicture";
        g = "writeToPhotoLibrary";
        h = "playVideo";
        i = "stopAudio";
        j = "getDeviceVolume";
        k = "playAudio";
        l = "playSound";
    }

    private static Bitmap a(Bitmap bitmap, int i1, int j1)
    {
        float f1 = (bitmap.getWidth() - i1) / 2;
        float f2 = (bitmap.getHeight() - j1) / 2;
        return a(bitmap, (int)f1, (int)f2, i1, j1);
    }

    private static Bitmap a(Bitmap bitmap, int i1, int j1, int k1)
    {
        return Bitmap.createScaledBitmap(bitmap, i1, j1, true);
    }

    private static Bitmap a(Bitmap bitmap, int i1, int j1, int k1, int l1)
    {
        return Bitmap.createBitmap(bitmap, i1, j1, k1, l1);
    }

    static Bitmap a(Bitmap bitmap, String s, int i1, int j1, int k1)
    {
        float f1 = (float)i1 / (float)bitmap.getWidth();
        float f2 = (float)j1 / (float)bitmap.getHeight();
        if (s.equals("Center"))
        {
            return a(bitmap, i1, j1);
        }
        if (s.equals("ScaleToAspectFit"))
        {
            float f4 = Math.min(f1, f2);
            return a(bitmap, (int)(f4 * (float)bitmap.getWidth()), (int)(f4 * (float)bitmap.getHeight()), k1);
        }
        if (s.equals("ScaleToAspectFill"))
        {
            float f3 = Math.max(f1, f2);
            return a(a(bitmap, (int)(f3 * (float)bitmap.getWidth()), (int)(f3 * (float)bitmap.getHeight()), k1), 0, 0, i1, j1);
        } else
        {
            return a(bitmap, i1, j1, k1);
        }
    }

    static Object a()
    {
        return m;
    }

    private void a(String s)
    {
        Context context = (Context)b.get();
        if (context != null)
        {
            a = new MediaScannerConnection(context.getApplicationContext(), new android.media.MediaScannerConnection.MediaScannerConnectionClient(s) {

                final String a;
                final BridgeMMMedia b;

                public void onMediaScannerConnected()
                {
                    if (b.a != null)
                    {
                        b.a.scanFile(a, null);
                    }
                }

                public void onScanCompleted(String s1, Uri uri)
                {
                    if (uri == null)
                    {
                        MMLog.b("BridgeMMMedia", (new StringBuilder()).append("Failed to scan ").append(s1).toString());
                    }
                }

            
            {
                b = BridgeMMMedia.this;
                a = s;
                super();
            }
            });
            if (a != null)
            {
                a.connect();
            }
        }
    }

    private static final byte[] a(File file, int i1, int j1, String s)
    {
        FileInputStream fileinputstream = new FileInputStream(file);
        android.graphics.BitmapFactory.Options options;
        int k1;
        int l1;
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(fileinputstream, null, options);
        k1 = options.outHeight;
        l1 = options.outWidth;
        if (k1 <= j1 && l1 <= i1)
        {
            break MISSING_BLOCK_LABEL_566;
        }
        if (l1 <= k1) goto _L2; else goto _L1
_L1:
        int i2 = Math.round((float)k1 / (float)j1);
_L8:
        FileInputStream fileinputstream1 = new FileInputStream(file);
        Bitmap bitmap2;
        options.inJustDecodeBounds = false;
        options.inSampleSize = i2;
        bitmap2 = BitmapFactory.decodeStream(fileinputstream1, null, options);
        if (fileinputstream == null)
        {
            break MISSING_BLOCK_LABEL_121;
        }
        fileinputstream.close();
        if (fileinputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_131;
        }
        fileinputstream1.close();
        Bitmap bitmap = bitmap2;
_L9:
        byte abyte0[] = null;
        if (bitmap == null) goto _L4; else goto _L3
_L3:
        Bitmap bitmap1 = a(bitmap, s, i1, j1, 1);
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        if (!s.equals("")) goto _L6; else goto _L5
_L5:
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, bytearrayoutputstream);
_L10:
        byte abyte1[] = bytearrayoutputstream.toByteArray();
        FileNotFoundException filenotfoundexception;
        Exception exception;
        Exception exception3;
        abyte0 = abyte1;
        IOException ioexception;
        IOException ioexception1;
        Exception exception4;
        IOException ioexception2;
        float f1;
        int j2;
        Exception exception8;
        if (bitmap != null)
        {
            try
            {
                bitmap.recycle();
            }
            catch (Exception exception5)
            {
                MMLog.a("BridgeMMMedia", "Error closing file", exception5);
                return abyte0;
            }
        }
        if (bitmap1 == null)
        {
            break MISSING_BLOCK_LABEL_216;
        }
        bitmap1.recycle();
        if (bytearrayoutputstream == null) goto _L4; else goto _L7
_L7:
        bytearrayoutputstream.close();
_L4:
        return abyte0;
_L2:
        f1 = (float)l1 / (float)i1;
        j2 = Math.round(f1);
        i2 = j2;
          goto _L8
        ioexception2;
        MMLog.a("BridgeMMMedia", "Error closing file", ioexception2);
        bitmap = bitmap2;
          goto _L9
        filenotfoundexception;
        fileinputstream1 = null;
        fileinputstream = null;
_L16:
        MMLog.a("BridgeMMMedia", "Can't find file to scale bitmap", filenotfoundexception);
        if (fileinputstream == null)
        {
            break MISSING_BLOCK_LABEL_296;
        }
        fileinputstream.close();
        if (fileinputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_306;
        }
        fileinputstream1.close();
        bitmap = null;
          goto _L9
        ioexception1;
        MMLog.a("BridgeMMMedia", "Error closing file", ioexception1);
        bitmap = null;
          goto _L9
        exception8;
        fileinputstream1 = null;
        fileinputstream = null;
        exception = exception8;
_L15:
        if (fileinputstream == null)
        {
            break MISSING_BLOCK_LABEL_351;
        }
        fileinputstream.close();
        if (fileinputstream1 != null)
        {
            try
            {
                fileinputstream1.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception)
            {
                MMLog.a("BridgeMMMedia", "Error closing file", ioexception);
            }
        }
        throw exception;
_L6:
        bitmap1.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, bytearrayoutputstream);
          goto _L10
        exception3;
_L14:
        MMLog.a("BridgeMMMedia", "Error scaling bitmap", exception3);
        if (bitmap != null)
        {
            try
            {
                bitmap.recycle();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception4)
            {
                MMLog.a("BridgeMMMedia", "Error closing file", exception4);
                return null;
            }
        }
        if (bitmap1 == null)
        {
            break MISSING_BLOCK_LABEL_425;
        }
        bitmap1.recycle();
        abyte0 = null;
        if (bytearrayoutputstream == null) goto _L4; else goto _L11
_L11:
        bytearrayoutputstream.close();
        return null;
        Exception exception6;
        exception6;
        Exception exception1;
        bytearrayoutputstream = null;
        exception1 = exception6;
_L13:
        if (bitmap == null)
        {
            break MISSING_BLOCK_LABEL_486;
        }
        bitmap.recycle();
        if (bitmap1 == null)
        {
            break MISSING_BLOCK_LABEL_496;
        }
        bitmap1.recycle();
        if (bytearrayoutputstream != null)
        {
            try
            {
                bytearrayoutputstream.close();
            }
            catch (Exception exception2)
            {
                MMLog.a("BridgeMMMedia", "Error closing file", exception2);
            }
        }
        throw exception1;
        exception1;
        if (true) goto _L13; else goto _L12
_L12:
        exception3;
        bytearrayoutputstream = null;
          goto _L14
        Exception exception7;
        exception7;
        exception = exception7;
        fileinputstream1 = null;
          goto _L15
        exception;
          goto _L15
        filenotfoundexception;
        fileinputstream1 = null;
          goto _L16
        filenotfoundexception;
          goto _L16
        i2 = 1;
          goto _L8
    }

    private boolean b()
    {
        Context context = (Context)b.get();
        if (context != null && context.getPackageManager().checkPermission("android.permission.CAMERA", context.getPackageName()) == 0)
        {
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            return context.getPackageManager().queryIntentActivities(intent, 0x10000).size() > 0;
        } else
        {
            return false;
        }
    }

    private boolean c()
    {
        Context context = (Context)b.get();
        if (context != null)
        {
            Intent intent = new Intent();
            intent.setType("image/*");
            intent.setAction("android.intent.action.GET_CONTENT");
            return context.getPackageManager().queryIntentActivities(intent, 0x10000).size() > 0;
        } else
        {
            return false;
        }
    }

    MMJSResponse a(String s, Map map)
    {
        MMJSResponse mmjsresponse;
        if (d.equals(s))
        {
            mmjsresponse = isSourceTypeAvailable(map);
        } else
        {
            if (e.equals(s))
            {
                return availableSourceTypes(map);
            }
            if (f.equals(s))
            {
                return getPicture(map);
            }
            if (g.equals(s))
            {
                return writeToPhotoLibrary(map);
            }
            if (h.equals(s))
            {
                return playVideo(map);
            }
            if (i.equals(s))
            {
                return stopAudio(map);
            }
            if (j.equals(s))
            {
                return getDeviceVolume(map);
            }
            if (k.equals(s))
            {
                return playAudio(map);
            }
            boolean flag = l.equals(s);
            mmjsresponse = null;
            if (flag)
            {
                return playSound(map);
            }
        }
        return mmjsresponse;
    }

    public MMJSResponse availableSourceTypes(Map map)
    {
        JSONArray jsonarray = new JSONArray();
        if (b())
        {
            jsonarray.put("Camera");
        }
        if (c())
        {
            jsonarray.put("Photo Library");
        }
        MMJSResponse mmjsresponse = new MMJSResponse();
        mmjsresponse.c = 1;
        mmjsresponse.d = jsonarray;
        return mmjsresponse;
    }

    public MMJSResponse getDeviceVolume(Map map)
    {
        Context context = (Context)b.get();
        if (context != null)
        {
            int i1 = MMSDK.s(context);
            MMJSResponse mmjsresponse = MMJSResponse.a();
            mmjsresponse.d = Integer.valueOf(i1);
            return mmjsresponse;
        } else
        {
            return MMJSResponse.b("no volume available");
        }
    }

    public MMJSResponse getPicture(Map map)
    {
        this;
        JVM INSTR monitorenter ;
        Context context;
        String s;
        String s1;
        String s2;
        String s3;
        context = (Context)b.get();
        s = (String)map.get("sourceType");
        s1 = (String)map.get("constrainHeight");
        s2 = (String)map.get("constrainWidth");
        s3 = (String)map.get("contentMode");
        if (s3 == null)
        {
            s3 = "";
        }
          goto _L1
_L4:
        MMJSResponse mmjsresponse = MMJSResponse.b("Missing constrainHeight and/or constrainWidth");
        MMJSResponse mmjsresponse1 = mmjsresponse;
_L2:
        this;
        JVM INSTR monitorexit ;
        return mmjsresponse1;
_L5:
        int i1;
        int j1;
        i1 = (int)Float.parseFloat(s1);
        j1 = (int)Float.parseFloat(s2);
        if (i1 * j1 <= 0x57e40)
        {
            break MISSING_BLOCK_LABEL_136;
        }
        mmjsresponse1 = MMJSResponse.b("constrainHeight * constrainWidth > 360000");
          goto _L2
        if (context == null || s == null)
        {
            break MISSING_BLOCK_LABEL_392;
        }
        File file;
        boolean flag;
        file = new File(AdCache.h(context), (new StringBuilder()).append("tmp_mm_").append(String.valueOf(System.currentTimeMillis())).append(".jpg").toString());
        if (s.equalsIgnoreCase("Camera") && b())
        {
            break MISSING_BLOCK_LABEL_240;
        }
        if (!s.equalsIgnoreCase("Photo Library") && !s.equalsIgnoreCase("PhotoLibrary"))
        {
            break MISSING_BLOCK_LABEL_392;
        }
        flag = c();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_392;
        }
        m = new Object();
        synchronized (m)
        {
            Utils.IntentUtils.a(context, file, s);
            m.wait();
        }
        m = null;
_L3:
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_392;
        }
        byte abyte0[];
        if (!file.exists() || file.length() <= 0L)
        {
            break MISSING_BLOCK_LABEL_392;
        }
        abyte0 = a(file, j1, i1, s3);
        file.delete();
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_392;
        }
        mmjsresponse1 = new MMJSResponse();
        mmjsresponse1.c = 1;
        mmjsresponse1.e = abyte0;
          goto _L2
        Exception exception;
        exception;
        throw exception;
        exception3;
        obj;
        JVM INSTR monitorexit ;
        throw exception3;
        Exception exception2;
        exception2;
        MMLog.a("BridgeMMMedia", "Error with pickerActivity synchronization", exception2);
        m = null;
          goto _L3
        Exception exception1;
        exception1;
        m = null;
        throw exception1;
        mmjsresponse1 = null;
          goto _L2
_L1:
        if (s1 != null && s2 != null) goto _L5; else goto _L4
    }

    public MMJSResponse isSourceTypeAvailable(Map map)
    {
        String s = (String)map.get("sourceType");
        if (s != null)
        {
            if (s.equalsIgnoreCase("Camera") && b())
            {
                return MMJSResponse.a("true");
            }
            if (s.equalsIgnoreCase("Photo Library") && c())
            {
                return MMJSResponse.a("true");
            }
        }
        return MMJSResponse.b("false");
    }

    public MMJSResponse playAudio(Map map)
    {
        Context context = (Context)b.get();
        String s = (String)map.get("path");
        if (context != null && s != null)
        {
            Audio audio = Audio.a(context);
            if (audio == null)
            {
                return null;
            }
            if (audio.a())
            {
                return MMJSResponse.b("Audio already playing.");
            }
            if (s.startsWith("http"))
            {
                return audio.a(Uri.parse(s), Boolean.parseBoolean((String)map.get("repeat")));
            }
            File file = AdCache.g(context, s);
            if (file.exists())
            {
                return audio.a(Uri.fromFile(file), Boolean.parseBoolean((String)map.get("repeat")));
            }
        }
        return null;
    }

    public MMJSResponse playSound(Map map)
    {
        if (b == null)
        {
            return null;
        }
        Context context = (Context)b.get();
        String s = (String)map.get("path");
        if (context != null && s != null)
        {
            File file = AdCache.g(context, s);
            if (file.exists())
            {
                Audio audio = Audio.a((Context)b.get());
                if (audio != null)
                {
                    return audio.a(file);
                }
            }
        }
        return null;
    }

    public MMJSResponse playVideo(Map map)
    {
        Context context = (Context)b.get();
        String s = (String)map.get("path");
        if (context != null && s != null)
        {
            if (s.startsWith("http"))
            {
                Utils.IntentUtils.a(context, s);
                return MMJSResponse.a(s);
            }
            File file = AdCache.g(context, s);
            if (file.exists())
            {
                Utils.IntentUtils.a(context, file);
                return MMJSResponse.a(file.getName());
            }
        }
        return null;
    }

    public MMJSResponse stopAudio(Map map)
    {
        if (b != null)
        {
            Audio audio = Audio.a((Context)b.get());
            if (audio != null)
            {
                return audio.b();
            }
        }
        return null;
    }

    public MMJSResponse writeToPhotoLibrary(Map map)
    {
        this;
        JVM INSTR monitorenter ;
        Context context;
        String s;
        context = (Context)b.get();
        s = (String)map.get("path");
        if (context == null) goto _L2; else goto _L1
_L1:
        if (TextUtils.isEmpty(s)) goto _L2; else goto _L3
_L3:
        Uri uri;
        String s1;
        String s2;
        uri = Uri.parse((String)map.get("path"));
        s1 = uri.getLastPathSegment();
        s2 = uri.getScheme();
        if (s2 == null) goto _L5; else goto _L4
_L4:
        if (!s2.equals("http") || AdCache.a(uri.toString(), "Pictures", s1, context)) goto _L5; else goto _L6
_L6:
        MMJSResponse mmjsresponse2 = MMJSResponse.b("Failed to download");
        MMJSResponse mmjsresponse = mmjsresponse2;
_L8:
        this;
        JVM INSTR monitorexit ;
        return mmjsresponse;
_L5:
        File file;
        file = AdCache.c(context, "Pictures", uri.getLastPathSegment());
        if (!file.exists())
        {
            mmjsresponse = MMJSResponse.b((new StringBuilder()).append("No file at ").append(file.getAbsolutePath()).toString());
            continue; /* Loop/switch isn't completed */
        }
        a(file.getAbsolutePath());
        if (!AdCache.a())
        {
            mmjsresponse = MMJSResponse.b("Storage not mounted, cannot add image to photo library photo library");
            continue; /* Loop/switch isn't completed */
        }
        MMJSResponse mmjsresponse1 = MMJSResponse.a("Image saved to photo library");
        mmjsresponse = mmjsresponse1;
        continue; /* Loop/switch isn't completed */
_L2:
        mmjsresponse = null;
        if (true) goto _L8; else goto _L7
_L7:
        Exception exception;
        exception;
        throw exception;
    }

    private class Audio
        implements android.media.MediaPlayer.OnCompletionListener
    {

        private static Audio d;
        CopyOnWriteArrayList a;
        CopyOnWriteArrayList b;
        Runnable c = new Runnable() {

            final Audio a;

            public void run()
            {
                if (Audio.a(a) != null)
                {
                    if (Audio.a(a).isPlaying())
                    {
                        int i1 = Audio.a(a).getCurrentPosition();
                        if (a.b != null)
                        {
                            class PeriodicListener
                            {

                                public abstract void onUpdate(int j1);
                            }

                            for (Iterator iterator = a.b.iterator(); iterator.hasNext(); ((PeriodicListener)iterator.next()).onUpdate(i1)) { }
                        }
                    }
                    MMSDK.a(this, 500L);
                }
            }

                
                {
                    a = Audio.this;
                    super();
                }
        };
        private WeakReference e;
        private MediaPlayer f;
        private SoundPool g;
        private OnLoadCompleteListener h;

        static MediaPlayer a(Audio audio)
        {
            return audio.f;
        }

        static Audio a(Context context)
        {
            com/millennialmedia/android/BridgeMMMedia$Audio;
            JVM INSTR monitorenter ;
            Audio audio;
            if (d == null)
            {
                d = new Audio(context);
            }
            audio = d;
            com/millennialmedia/android/BridgeMMMedia$Audio;
            JVM INSTR monitorexit ;
            return audio;
            Exception exception;
            exception;
            throw exception;
        }

        static WeakReference b(Audio audio)
        {
            return audio.e;
        }

        MMJSResponse a(Uri uri, boolean flag)
        {
            this;
            JVM INSTR monitorenter ;
            if (f != null)
            {
                f.release();
                f = null;
            }
            f = MediaPlayer.create((Context)e.get(), uri);
            f.setLooping(flag);
            f.start();
            f.setOnCompletionListener(this);
            MMSDK.a(c);
_L1:
            MMJSResponse mmjsresponse = MMJSResponse.a("Audio playback started");
            this;
            JVM INSTR monitorexit ;
            return mmjsresponse;
            Exception exception1;
            exception1;
            MMLog.a("BridgeMMMedia", "Exception in playAudio method", exception1.getCause());
              goto _L1
            Exception exception;
            exception;
            throw exception;
        }

        MMJSResponse a(File file)
        {
            this;
            JVM INSTR monitorenter ;
            Exception exception1;
            MMJSResponse mmjsresponse;
            try
            {
                if (g == null)
                {
                    g = new SoundPool(4, 3, 0);
                    h = new OnLoadCompleteListener(g) {

                        final Audio a;

                        public void onLoadComplete(SoundPool soundpool, int i1, int j1)
                        {
                            this;
                            JVM INSTR monitorenter ;
                            if (soundpool == null)
                            {
                                break MISSING_BLOCK_LABEL_70;
                            }
                            Context context = (Context)Audio.b(a).get();
                            if (context == null)
                            {
                                break MISSING_BLOCK_LABEL_70;
                            }
                            AudioManager audiomanager = (AudioManager)context.getSystemService("audio");
                            float f1 = (0.0F + (float)audiomanager.getStreamVolume(3)) / (float)audiomanager.getStreamMaxVolume(3);
                            soundpool.play(i1, f1, f1, 1, 0, 1.0F);
                            this;
                            JVM INSTR monitorexit ;
                            return;
                            Exception exception2;
                            exception2;
                            throw exception2;
                        }

                
                {
                    a = Audio.this;
                    class OnLoadCompleteListener
                    {

                        private ArrayList a;
                        final Audio b;
                        private Timer c;
                        private SoundPool d;

                        static ArrayList a(OnLoadCompleteListener onloadcompletelistener)
                        {
                            return onloadcompletelistener.a;
                        }

                        static SoundPool b(OnLoadCompleteListener onloadcompletelistener)
                        {
                            return onloadcompletelistener.d;
                        }

                        static Timer c(OnLoadCompleteListener onloadcompletelistener)
                        {
                            return onloadcompletelistener.c;
                        }

                        void a()
                        {
                            this;
                            JVM INSTR monitorenter ;
                            if (c != null)
                            {
                                c.cancel();
                                c.purge();
                            }
                            this;
                            JVM INSTR monitorexit ;
                            return;
                            Exception exception;
                            exception;
                            throw exception;
                        }

                        void a(int i1)
                        {
                            this;
                            JVM INSTR monitorenter ;
                            a.add(Integer.valueOf(i1));
                            if (a.size() == 1)
                            {
                                c = new Timer();
                                c.scheduleAtFixedRate(new TimerTask() {

                                    final OnLoadCompleteListener a;

                                    public void run()
                                    {
                                        ArrayList arraylist = new ArrayList();
                                        Iterator iterator = OnLoadCompleteListener.a(a).iterator();
                                        do
                                        {
                                            if (!iterator.hasNext())
                                            {
                                                break;
                                            }
                                            Integer integer = (Integer)iterator.next();
                                            int j1 = OnLoadCompleteListener.b(a).play(integer.intValue(), 0.0F, 0.0F, 0, 0, 1.0F);
                                            if (j1 != 0)
                                            {
                                                OnLoadCompleteListener.b(a).stop(j1);
                                                a.onLoadComplete(OnLoadCompleteListener.b(a), integer.intValue(), 0);
                                                arraylist.add(integer);
                                            }
                                        } while (true);
                                        OnLoadCompleteListener.a(a).removeAll(arraylist);
                                        if (OnLoadCompleteListener.a(a).size() == 0)
                                        {
                                            OnLoadCompleteListener.c(a).cancel();
                                            OnLoadCompleteListener.c(a).purge();
                                        }
                                    }

                                
                                {
                                    a = OnLoadCompleteListener.this;
                                    super();
                                }
                                }, 0L, 100L);
                            }
                            this;
                            JVM INSTR monitorexit ;
                            return;
                            Exception exception;
                            exception;
                            throw exception;
                        }

                        abstract void onLoadComplete(SoundPool soundpool1, int i1, int j1);

                            public OnLoadCompleteListener(SoundPool soundpool)
                            {
                                b = Audio.this;
                                super();
                                a = new ArrayList();
                                d = soundpool;
                            }
                    }

                    super(soundpool);
                }
                    };
                }
                h.a(g.load(file.getAbsolutePath(), 1));
            }
            catch (Exception exception) { }
            mmjsresponse = MMJSResponse.a("Sound playback started");
            this;
            JVM INSTR monitorexit ;
            return mmjsresponse;
            exception1;
            throw exception1;
        }

        boolean a()
        {
            this;
            JVM INSTR monitorenter ;
            if (f == null) goto _L2; else goto _L1
_L1:
            boolean flag1 = f.isPlaying();
            if (!flag1) goto _L2; else goto _L3
_L3:
            boolean flag = true;
_L5:
            this;
            JVM INSTR monitorexit ;
            return flag;
_L2:
            flag = false;
            if (true) goto _L5; else goto _L4
_L4:
            Exception exception;
            exception;
            throw exception;
        }

        boolean a(android.media.MediaPlayer.OnCompletionListener oncompletionlistener)
        {
            if (a == null)
            {
                a = new CopyOnWriteArrayList();
            }
            if (!a.contains(oncompletionlistener))
            {
                return a.add(oncompletionlistener);
            } else
            {
                return false;
            }
        }

        boolean a(PeriodicListener periodiclistener)
        {
            if (b == null)
            {
                b = new CopyOnWriteArrayList();
            }
            if (!b.contains(periodiclistener))
            {
                return b.add(periodiclistener);
            } else
            {
                return false;
            }
        }

        MMJSResponse b()
        {
            this;
            JVM INSTR monitorenter ;
            MMJSResponse mmjsresponse;
            if (f != null)
            {
                onCompletion(f);
            }
            if (g != null)
            {
                g.release();
                g = null;
            }
            if (h != null)
            {
                h.a();
                h = null;
            }
            mmjsresponse = MMJSResponse.a("Audio stopped");
            this;
            JVM INSTR monitorexit ;
            return mmjsresponse;
            Exception exception;
            exception;
            throw exception;
        }

        boolean b(android.media.MediaPlayer.OnCompletionListener oncompletionlistener)
        {
            if (a != null)
            {
                return a.remove(oncompletionlistener);
            } else
            {
                return false;
            }
        }

        boolean b(PeriodicListener periodiclistener)
        {
            if (b != null)
            {
                return b.remove(periodiclistener);
            } else
            {
                return false;
            }
        }

        public void onCompletion(MediaPlayer mediaplayer)
        {
            this;
            JVM INSTR monitorenter ;
            if (a != null)
            {
                for (Iterator iterator = a.iterator(); iterator.hasNext(); ((android.media.MediaPlayer.OnCompletionListener)iterator.next()).onCompletion(f)) { }
            }
            break MISSING_BLOCK_LABEL_52;
            Exception exception;
            exception;
            throw exception;
            if (f != null)
            {
                f.release();
                f = null;
            }
            this;
            JVM INSTR monitorexit ;
        }

        private Audio()
        {
        }

        private Audio(Context context)
        {
            e = new WeakReference(context.getApplicationContext());
        }
    }

}
