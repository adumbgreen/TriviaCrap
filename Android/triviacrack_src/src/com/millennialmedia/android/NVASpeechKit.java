// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.nuance.nmdp.speechkit.DataUploadCommand;
import com.nuance.nmdp.speechkit.DataUploadResult;
import com.nuance.nmdp.speechkit.GenericCommand;
import com.nuance.nmdp.speechkit.GenericResult;
import com.nuance.nmdp.speechkit.Recognition;
import com.nuance.nmdp.speechkit.Recognizer;
import com.nuance.nmdp.speechkit.SpeechError;
import com.nuance.nmdp.speechkit.SpeechKit;
import com.nuance.nmdp.speechkit.Vocalizer;
import com.nuance.nmdp.speechkit.recognitionresult.DetailedResult;
import com.nuance.nmdp.speechkit.util.dataupload.Action;
import com.nuance.nmdp.speechkit.util.dataupload.Data;
import com.nuance.nmdp.speechkit.util.dataupload.DataBlock;
import java.lang.ref.WeakReference;
import java.security.MessageDigest;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.millennialmedia.android:
//            MMWebView, MMLog, MMSDK

public class NVASpeechKit
{

    private static String s = null;
    public Result _results[];
    HandShake.NuanceCredentials a;
    private WeakReference b;
    private Vocalizer c;
    private SpeechKit d;
    private Handler e;
    private com.nuance.nmdp.speechkit.Recognizer.Listener f;
    private com.nuance.nmdp.speechkit.Vocalizer.Listener g;
    private Recognizer h;
    private State i;
    private AudioLevelTracker j;
    private DataUploadCommand k;
    private CustomWordsOp l;
    private String m;
    private Runnable n;
    private Runnable o;
    private com.nuance.nmdp.speechkit.GenericCommand.Listener p;
    private com.nuance.nmdp.speechkit.DataUploadCommand.Listener q;
    private Listener r;
    private String t;

    public NVASpeechKit(MMWebView mmwebview)
    {
        _results = null;
        j = new AudioLevelTracker();
        n = new Runnable() {

            final NVASpeechKit a;

            public void run()
            {
                a.endRecording();
            }

            
            {
                a = NVASpeechKit.this;
                super();
            }
        };
        o = new Runnable() {

            final NVASpeechKit a;

            public void run()
            {
                if (NVASpeechKit.a(a) != null)
                {
                    double d1 = AudioLevelTracker.a(NVASpeechKit.a(a).getAudioLevel());
                    MMLog.b("NVASpeechKit", (new StringBuilder()).append("audiolevel changed: level=").append(d1).toString());
                    if (NVASpeechKit.b(a).update(d1) && NVASpeechKit.c(a) != null)
                    {
                        NVASpeechKit.c(a).onAudioLevelUpdate(d1);
                    }
                    if (NVASpeechKit.d(a) == State.RECORDING || NVASpeechKit.b(a).d)
                    {
                        NVASpeechKit.f(a).postDelayed(NVASpeechKit.e(a), 50L);
                    }
                }
            }

            
            {
                a = NVASpeechKit.this;
                super();
            }

            private class Listener
            {

                public abstract void onAudioLevelUpdate(double d1);

                public abstract void onAudioSampleUpdate(double d1);

                public abstract void onCustomWordsAdded();

                public abstract void onCustomWordsDeleted();

                public abstract void onError();

                public abstract void onResults();

                public abstract void onStateChange(State state);
            }

        };
        p = new com.nuance.nmdp.speechkit.GenericCommand.Listener() {

            final NVASpeechKit a;

            public void onComplete(GenericCommand genericcommand, GenericResult genericresult, SpeechError speecherror)
            {
                if (speecherror != null)
                {
                    MMLog.e("NVASpeechKit", (new StringBuilder()).append("GenericCommand listener. Error: ").append(speecherror.getErrorDetail()).toString());
                } else
                {
                    MMLog.b("NVASpeechKit", (new StringBuilder()).append("GenericCommand listener. Success: ").append(genericresult.getQueryResult()).toString());
                }
                NVASpeechKit.g(a);
            }

            
            {
                a = NVASpeechKit.this;
                super();
            }
        };
        q = new com.nuance.nmdp.speechkit.DataUploadCommand.Listener() {

            final NVASpeechKit a;

            private void a(DataUploadCommand datauploadcommand)
            {
                if (NVASpeechKit.c(a) != null && NVASpeechKit.h(a) == datauploadcommand)
                {
                    if (NVASpeechKit.i(a) == CustomWordsOp.Add)
                    {
                        NVASpeechKit.c(a).onCustomWordsAdded();
                    } else
                    {
                        NVASpeechKit.c(a).onCustomWordsDeleted();
                    }
                }
                NVASpeechKit.a(a, null);
            }

            public void onError(DataUploadCommand datauploadcommand, SpeechError speecherror)
            {
                MMLog.e("NVASpeechKit", (new StringBuilder()).append("DataUploadCommand listener error. command:").append(datauploadcommand.toString()).append(" Error:").append(speecherror.getErrorDetail()).toString());
                a(datauploadcommand);
            }

            public void onResults(DataUploadCommand datauploadcommand, DataUploadResult datauploadresult)
            {
                MMLog.b("NVASpeechKit", (new StringBuilder()).append("DataUploadCommand listener successful command:").append(datauploadcommand.toString()).append(" isVocRegenerated:").append(datauploadresult.isVocRegenerated()).append(" results:").append(datauploadresult.toString()).toString());
                a(datauploadcommand);
            }

            
            {
                a = NVASpeechKit.this;
                super();
            }

            private class CustomWordsOp extends Enum
            {

                public static final CustomWordsOp Add;
                public static final CustomWordsOp Remove;
                private static final CustomWordsOp a[];

                public static CustomWordsOp valueOf(String s1)
                {
                    return (CustomWordsOp)Enum.valueOf(com/millennialmedia/android/NVASpeechKit$CustomWordsOp, s1);
                }

                public static CustomWordsOp[] values()
                {
                    return (CustomWordsOp[])a.clone();
                }

                static 
                {
                    Add = new CustomWordsOp("Add", 0);
                    Remove = new CustomWordsOp("Remove", 1);
                    CustomWordsOp acustomwordsop[] = new CustomWordsOp[2];
                    acustomwordsop[0] = Add;
                    acustomwordsop[1] = Remove;
                    a = acustomwordsop;
                }

                private CustomWordsOp(String s1, int i1)
                {
                    super(s1, i1);
                }
            }

        };
        r = new Listener() {

            final NVASpeechKit a;

            public void onAudioLevelUpdate(double d1)
            {
                a.a(d1);
            }

            public void onAudioSampleUpdate(double d1)
            {
                a.b(d1);
            }

            public void onCustomWordsAdded()
            {
            }

            public void onCustomWordsDeleted()
            {
            }

            public void onError()
            {
            }

            public void onResults()
            {
                JSONArray jsonarray = NVASpeechKit.a(a, a.getResults());
                a.a(jsonarray.toString());
            }

            public void onStateChange(State state)
            {
                class _cls8
                {

                    static final int a[];

                    static 
                    {
                        a = new int[State.values().length];
                        try
                        {
                            a[State.ERROR.ordinal()] = 1;
                        }
                        catch (NoSuchFieldError nosuchfielderror) { }
                        try
                        {
                            a[State.PROCESSING.ordinal()] = 2;
                        }
                        catch (NoSuchFieldError nosuchfielderror1) { }
                        try
                        {
                            a[State.READY.ordinal()] = 3;
                        }
                        catch (NoSuchFieldError nosuchfielderror2) { }
                        try
                        {
                            a[State.RECORDING.ordinal()] = 4;
                        }
                        catch (NoSuchFieldError nosuchfielderror3) { }
                        try
                        {
                            a[State.VOCALIZING.ordinal()] = 5;
                        }
                        catch (NoSuchFieldError nosuchfielderror4)
                        {
                            return;
                        }
                    }
                }

                switch (_cls8.a[state.ordinal()])
                {
                default:
                    return;

                case 1: // '\001'
                    a.e();
                    return;

                case 2: // '\002'
                    a.c();
                    return;

                case 3: // '\003'
                    a.a();
                    return;

                case 4: // '\004'
                    a.b();
                    return;

                case 5: // '\005'
                    a.d();
                    break;
                }
            }

            
            {
                a = NVASpeechKit.this;
                super();
            }
        };
        if (mmwebview != null)
        {
            b = new WeakReference(mmwebview);
            a(mmwebview.getContext().getApplicationContext());
        }
        i = State.READY;
    }

    static DataUploadCommand a(NVASpeechKit nvaspeechkit, DataUploadCommand datauploadcommand)
    {
        nvaspeechkit.k = datauploadcommand;
        return datauploadcommand;
    }

    static Recognizer a(NVASpeechKit nvaspeechkit)
    {
        return nvaspeechkit.h;
    }

    static String a(NVASpeechKit nvaspeechkit, String s1)
    {
        nvaspeechkit.m = s1;
        return s1;
    }

    private String a(SpeechError speecherror)
    {
        if (speecherror == null)
        {
            return "No Error given";
        } else
        {
            return (new StringBuilder()).append("Speech Kit Error code:").append(speecherror.getErrorCode()).append(" detail:").append(speecherror.getErrorDetail()).append(" suggestions:").append(speecherror.getSuggestion()).toString();
        }
    }

    static JSONArray a(NVASpeechKit nvaspeechkit, Result aresult[])
    {
        return nvaspeechkit.a(aresult);
    }

    private JSONArray a(Result aresult[])
    {
        JSONArray jsonarray = new JSONArray();
        int i1 = 0;
        do
        {
            if (i1 >= aresult.length)
            {
                break;
            }
            JSONObject jsonobject = new JSONObject();
            try
            {
                jsonobject.put("score", (new StringBuilder()).append("").append(aresult[i1].getResultScore()).toString());
                jsonobject.put("result", aresult[i1].getResultString());
                jsonarray.put(jsonobject);
            }
            catch (JSONException jsonexception)
            {
                MMLog.a("NVASpeechKit", "JSON creation error.", jsonexception);
                return null;
            }
            i1++;
        } while (true);
        return jsonarray;
    }

    private void a(Context context)
    {
        if (t == null)
        {
            t = context.getApplicationContext().getPackageName();
        }
    }

    private void a(State state)
    {
        this;
        JVM INSTR monitorenter ;
        MMLog.b("NVASpeechKit", (new StringBuilder()).append("recording results returned. state=").append(state).toString());
        State state1 = i;
        i = state;
        if (r != null && i != state1)
        {
            r.onStateChange(state);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void a(NVASpeechKit nvaspeechkit, State state)
    {
        nvaspeechkit.a(state);
    }

    static void a(NVASpeechKit nvaspeechkit, Recognizer recognizer)
    {
        nvaspeechkit.a(recognizer);
    }

    static void a(NVASpeechKit nvaspeechkit, SpeechError speecherror)
    {
        nvaspeechkit.b(speecherror);
    }

    static void a(NVASpeechKit nvaspeechkit, List list)
    {
        nvaspeechkit.a(list);
    }

    private void a(Recognizer recognizer)
    {
        e.removeCallbacks(o);
        e.postDelayed(o, 50L);
    }

    private void a(List list)
    {
        MMLog.b("NVASpeechKit", "processResults called.");
        _results = new Result[list.size()];
        Iterator iterator = list.iterator();
        int j1;
        for (int i1 = 0; iterator.hasNext(); i1 = j1)
        {
            DetailedResult detailedresult = (DetailedResult)iterator.next();
            Result aresult[] = _results;
            j1 = i1 + 1;
            aresult[i1] = new Result(detailedresult.toString(), detailedresult.getConfidenceScore());
        }

    }

    static AudioLevelTracker b(NVASpeechKit nvaspeechkit)
    {
        return nvaspeechkit.j;
    }

    static Recognizer b(NVASpeechKit nvaspeechkit, Recognizer recognizer)
    {
        nvaspeechkit.h = recognizer;
        return recognizer;
    }

    private void b(SpeechError speecherror)
    {
        switch (speecherror.getErrorCode())
        {
        case 3: // '\003'
        case 4: // '\004'
        default:
            if (r != null)
            {
                r.onError();
                a(State.ERROR);
                b(a(speecherror));
            }
            return;

        case 2: // '\002'
            if (!j.d)
            {
                a(State.PROCESSING);
            }
            _results = new Result[0];
            m();
            return;

        case 5: // '\005'
            a(State.READY);
            h = null;
            return;
        }
    }

    static Listener c(NVASpeechKit nvaspeechkit)
    {
        return nvaspeechkit.r;
    }

    private byte[] c(String s1)
    {
        if (s1 == null)
        {
            return null;
        }
        byte abyte0[] = new byte[s1.length() / 2];
        for (int i1 = 0; i1 < abyte0.length; i1++)
        {
            abyte0[i1] = (byte)Integer.parseInt(s1.substring(i1 * 2, 2 + i1 * 2), 16);
        }

        return abyte0;
    }

    static State d(NVASpeechKit nvaspeechkit)
    {
        return nvaspeechkit.i;
    }

    static Runnable e(NVASpeechKit nvaspeechkit)
    {
        return nvaspeechkit.o;
    }

    static Handler f(NVASpeechKit nvaspeechkit)
    {
        return nvaspeechkit.e;
    }

    static void g(NVASpeechKit nvaspeechkit)
    {
        nvaspeechkit.m();
    }

    private MMWebView h()
    {
        if (b != null)
        {
            return (MMWebView)b.get();
        } else
        {
            return null;
        }
    }

    static DataUploadCommand h(NVASpeechKit nvaspeechkit)
    {
        return nvaspeechkit.k;
    }

    static CustomWordsOp i(NVASpeechKit nvaspeechkit)
    {
        return nvaspeechkit.l;
    }

    private void i()
    {
        if (h() != null)
        {
            b.clear();
        }
    }

    static Runnable j(NVASpeechKit nvaspeechkit)
    {
        return nvaspeechkit.n;
    }

    private String j()
    {
        if (b != null)
        {
            MMWebView mmwebview = (MMWebView)b.get();
            if (mmwebview != null)
            {
                return mmwebview.x();
            }
        }
        return "DEFAULT_AD_ID";
    }

    private com.nuance.nmdp.speechkit.Vocalizer.Listener k()
    {
        return new com.nuance.nmdp.speechkit.Vocalizer.Listener() {

            final NVASpeechKit a;

            public void onSpeakingBegin(Vocalizer vocalizer, String s1, Object obj)
            {
                MMLog.b("NVASpeechKit", (new StringBuilder()).append("Vocalization begins. text=").append(s1).toString());
                NVASpeechKit.a(a, State.VOCALIZING);
            }

            public void onSpeakingDone(Vocalizer vocalizer, String s1, SpeechError speecherror, Object obj)
            {
                MMLog.b("NVASpeechKit", "Vocalization has ended.");
                if (speecherror != null)
                {
                    MMLog.e("NVASpeechKit", (new StringBuilder()).append("Vocalizer error: ").append(speecherror.getErrorDetail()).toString());
                    NVASpeechKit.a(a, speecherror);
                    return;
                } else
                {
                    NVASpeechKit.a(a, State.READY);
                    return;
                }
            }

            
            {
                a = NVASpeechKit.this;
                super();
            }
        };
    }

    static void k(NVASpeechKit nvaspeechkit)
    {
        nvaspeechkit.n();
    }

    private com.nuance.nmdp.speechkit.Recognizer.Listener l()
    {
        return new com.nuance.nmdp.speechkit.Recognizer.Listener() {

            final NVASpeechKit a;

            public void onError(Recognizer recognizer, SpeechError speecherror)
            {
                MMLog.b("NVASpeechKit", (new StringBuilder()).append("Speech Kit Error code:").append(speecherror.getErrorCode()).append(" detail:").append(speecherror.getErrorDetail()).append(" suggestions:").append(speecherror.getSuggestion()).toString());
                NVASpeechKit.k(a);
                NVASpeechKit.a(a, speecherror);
                NVASpeechKit.b(a, null);
                if (NVASpeechKit.l(a) != null)
                {
                    MMLog.b("NVASpeechKit", (new StringBuilder()).append("Recognizer.Listener.onError: session id [").append(NVASpeechKit.l(a).getSessionId()).append("]").toString());
                }
            }

            public void onRecordingBegin(Recognizer recognizer)
            {
                MMLog.b("NVASpeechKit", "recording begins");
                a._results = null;
                if (!NVASpeechKit.b(a).isTrackingAudioSample())
                {
                    NVASpeechKit.a(a, State.RECORDING);
                }
                NVASpeechKit.a(a, recognizer);
                if (NVASpeechKit.b(a).isTrackingAudioSample())
                {
                    NVASpeechKit.f(a).removeCallbacks(NVASpeechKit.j(a));
                    NVASpeechKit.f(a).postDelayed(NVASpeechKit.j(a), 2000L);
                }
            }

            public void onRecordingDone(Recognizer recognizer)
            {
                MMLog.b("NVASpeechKit", "recording has ended");
                NVASpeechKit.k(a);
                if (!NVASpeechKit.b(a).isTrackingAudioSample())
                {
                    NVASpeechKit.a(a, State.PROCESSING);
                }
                if (NVASpeechKit.l(a) != null)
                {
                    NVASpeechKit.a(a, NVASpeechKit.l(a).getSessionId());
                }
            }

            public void onResults(Recognizer recognizer, Recognition recognition)
            {
                MMLog.b("NVASpeechKit", "recording results returned.");
                NVASpeechKit.k(a);
                if (!NVASpeechKit.b(a).d)
                {
                    NVASpeechKit.a(a, recognition.getDetailedResults());
                    if (NVASpeechKit.m(a) != null)
                    {
                        MMLog.b("NVASpeechKit", (new StringBuilder()).append("Recognizer.Listener.onResults: session id [").append(NVASpeechKit.m(a)).append("]").toString());
                    }
                    a.logEvent();
                    return;
                } else
                {
                    a._results = new Result[0];
                    NVASpeechKit.g(a);
                    return;
                }
            }

            
            {
                a = NVASpeechKit.this;
                super();
            }
        };
    }

    static SpeechKit l(NVASpeechKit nvaspeechkit)
    {
        return nvaspeechkit.d;
    }

    static String m(NVASpeechKit nvaspeechkit)
    {
        return nvaspeechkit.m;
    }

    private void m()
    {
        if (r != null && _results != null)
        {
            if (j.d)
            {
                r.onAudioSampleUpdate(j.b);
                j.reset();
            } else
            {
                r.onResults();
            }
        }
        a(State.READY);
        h = null;
    }

    private void n()
    {
        if (e != null)
        {
            e.removeCallbacks(n);
            e.removeCallbacks(o);
        }
    }

    void a()
    {
        MMWebView mmwebview = h();
        if (mmwebview != null)
        {
            mmwebview.loadUrl("javascript:MMJS.sdk.voiceStateChange('ready')");
        }
    }

    void a(double d1)
    {
        MMWebView mmwebview = h();
        if (mmwebview != null)
        {
            mmwebview.loadUrl((new StringBuilder()).append("javascript:MMJS.sdk.audioLevelChange(").append(d1).append(")").toString());
        }
    }

    void a(String s1)
    {
        MMWebView mmwebview = h();
        if (mmwebview != null)
        {
            mmwebview.loadUrl((new StringBuilder()).append("javascript:MMJS.sdk.recognitionResult(").append(s1).append(")").toString());
        }
    }

    void b()
    {
        MMWebView mmwebview = h();
        if (mmwebview != null)
        {
            mmwebview.loadUrl("javascript:MMJS.sdk.voiceStateChange('recording')");
        }
    }

    void b(double d1)
    {
        MMWebView mmwebview = h();
        if (mmwebview != null)
        {
            mmwebview.loadUrl((new StringBuilder()).append("javascript:MMJS.sdk.backgroundAudioLevel(").append(d1).append(")").toString());
        }
    }

    void b(String s1)
    {
        MMWebView mmwebview = h();
        if (mmwebview != null)
        {
            mmwebview.loadUrl((new StringBuilder()).append("javascript:MMJS.sdk.voiceError('").append(s1).append("')").toString());
        }
    }

    void c()
    {
        MMWebView mmwebview = h();
        if (mmwebview != null)
        {
            mmwebview.loadUrl("javascript:MMJS.sdk.voiceStateChange('processing')");
        }
    }

    public void cancelRecording()
    {
        if (h != null)
        {
            MMLog.b("NVASpeechKit", "cancel RECORDING");
            h.cancel();
            h = null;
            a(State.READY);
        }
    }

    void d()
    {
        MMWebView mmwebview = h();
        if (mmwebview != null)
        {
            mmwebview.loadUrl("javascript:MMJS.sdk.voiceStateChange('vocalizing')");
        }
    }

    void e()
    {
        MMWebView mmwebview = h();
        if (mmwebview != null)
        {
            mmwebview.loadUrl("javascript:MMJS.sdk.voiceStateChange('error')");
        }
    }

    public boolean endRecording()
    {
        if (h != null)
        {
            MMLog.b("NVASpeechKit", "end RECORDING");
            h.stopRecording();
            h = null;
            return true;
        } else
        {
            return false;
        }
    }

    String f()
    {
        if (d != null)
        {
            return d.getSessionId();
        } else
        {
            return "";
        }
    }

    String g()
    {
        this;
        JVM INSTR monitorenter ;
        if (s == null) goto _L2; else goto _L1
_L1:
        String s1 = s;
_L10:
        this;
        JVM INSTR monitorexit ;
        return s1;
_L2:
        if (b == null) goto _L4; else goto _L3
_L3:
        MMWebView mmwebview = (MMWebView)b.get();
        if (mmwebview == null) goto _L4; else goto _L5
_L5:
        Context context = mmwebview.getContext();
          goto _L6
_L8:
        String s2 = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (s2 == null)
        {
            s1 = null;
            continue; /* Loop/switch isn't completed */
        }
        String s3 = MMSDK.a(MessageDigest.getInstance("SHA1").digest(s2.getBytes()));
        s1 = s3;
        s = s1;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        throw exception;
        Exception exception1;
        exception1;
        MMLog.a("NVASpeechKit", "Problem with nuanceid", exception1);
        s1 = null;
        continue; /* Loop/switch isn't completed */
_L4:
        context = null;
_L6:
        if (context != null) goto _L8; else goto _L7
_L7:
        s1 = null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public Result[] getResults()
    {
        return _results;
    }

    public State getState()
    {
        this;
        JVM INSTR monitorenter ;
        State state = i;
        this;
        JVM INSTR monitorexit ;
        return state;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean initialize(HandShake.NuanceCredentials nuancecredentials, Context context)
    {
        MMLog.b("NVASpeechKit", "initialize called.");
        if (nuancecredentials == null || context == null)
        {
            return false;
        }
        a = nuancecredentials;
        if (d != null)
        {
            try
            {
                d.connect();
            }
            catch (IllegalStateException illegalstateexception)
            {
                d = null;
            }
        }
        if (d == null)
        {
            byte abyte0[] = c(nuancecredentials.b);
            MMLog.b("NVASpeechKit", nuancecredentials.toString());
            d = SpeechKit.initialize(context, "1.0", nuancecredentials.a, nuancecredentials.c, nuancecredentials.d, false, abyte0, com.nuance.nmdp.speechkit.SpeechKit.CmdSetType.NVC);
            g = k();
            f = l();
            e = new Handler(Looper.getMainLooper());
            d.connect();
            a(State.READY);
            return true;
        } else
        {
            MMLog.b("NVASpeechKit", "Already initialized. Skipping.");
            return false;
        }
    }

    public void logEvent()
    {
        if (d == null)
        {
            return;
        }
        com.nuance.nmdp.speechkit.util.pdx.PdxValue.Dictionary dictionary = new com.nuance.nmdp.speechkit.util.pdx.PdxValue.Dictionary();
        dictionary.put("nva_ad_network_id", "MillenialMedia");
        dictionary.put("nva_device_id", g());
        dictionary.put("nva_ad_publisher_id", t);
        String s1 = "";
        if (a != null && !TextUtils.isEmpty(a.e))
        {
            s1 = a.e;
            dictionary.put("nva_ad_session_id", a.e);
        }
        String s2 = j();
        if (!TextUtils.isEmpty(s2))
        {
            dictionary.put("nva_ad_id", s2);
        }
        if (m != null)
        {
            dictionary.put("nva_nvc_session_id", m);
            String _tmp = m;
            m = null;
        } else
        {
            d.getSessionId();
        }
        MMLog.b("NVASpeechKit", (new StringBuilder()).append("Sending log revision command to server. sessionId[").append(d.getSessionId()).append("] deviceId[").append(g()).append("] adId[").append(s2).append("] mmSessionId[").append(s1).append("]").toString());
        d.createLogRevisionCmd("NVA_LOG_EVENT", dictionary, d.getSessionId(), p, e).start();
    }

    public void release()
    {
        MMLog.b("NVASpeechKit", "release called.");
        stopActions();
        n();
        if (d != null)
        {
            d.release();
            a(State.READY);
            d = null;
        }
        k = null;
        i();
    }

    public void setSpeechKitListener(Listener listener)
    {
        r = listener;
    }

    public boolean startRecording(String s1)
    {
        MMLog.b("NVASpeechKit", "RECORDING INVOKED.");
        if (i == State.READY && d != null)
        {
            m = null;
            h = d.createRecognizer("dictation", 1, s1, f, e);
            MMLog.b("NVASpeechKit", "START RECORDING");
            h.start();
            return true;
        } else
        {
            return false;
        }
    }

    public void startSampleRecording()
    {
        j.startTrackingAudioSample();
        startRecording("en_US");
    }

    public void stopActions()
    {
        if (d == null)
        {
            break MISSING_BLOCK_LABEL_14;
        }
        d.cancelCurrent();
        return;
        Exception exception;
        exception;
        MMLog.a("NVASpeechKit", "No speech kit to disconnect.", exception);
        return;
    }

    public boolean textToSpeech(String s1, String s2)
    {
        MMLog.b("NVASpeechKit", "TTS INVOKED.");
        if (i == State.READY && d != null)
        {
            c = d.createVocalizerWithLanguage(s2, g, e);
            c.speakString(s1, this);
            return true;
        } else
        {
            return false;
        }
    }

    public void updateCustomWords(CustomWordsOp customwordsop, String as[])
    {
        if (d == null)
        {
            return;
        }
        DataBlock datablock = new DataBlock();
        StringBuilder stringbuilder = (new StringBuilder()).append("Creating dataupload command and ");
        String s1;
        Data data;
        com.nuance.nmdp.speechkit.util.dataupload.Action.ActionType actiontype;
        Action action;
        int i1;
        if (customwordsop == CustomWordsOp.Add)
        {
            s1 = "adding";
        } else
        {
            s1 = "deleting";
        }
        MMLog.b("NVASpeechKit", stringbuilder.append(s1).append(" words.").toString());
        data = new Data("nva_custom_word_uploads", com.nuance.nmdp.speechkit.util.dataupload.Data.DataType.CUSTOMWORDS);
        if (customwordsop == CustomWordsOp.Add)
        {
            actiontype = com.nuance.nmdp.speechkit.util.dataupload.Action.ActionType.ADD;
        } else
        {
            actiontype = com.nuance.nmdp.speechkit.util.dataupload.Action.ActionType.REMOVE;
        }
        action = new Action(actiontype);
        i1 = as.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            String s2 = as[j1];
            action.addWord(s2);
            MMLog.b("NVASpeechKit", (new StringBuilder()).append("\tword: '").append(s2).append("'").toString());
        }

        data.addAction(action);
        datablock.addData(data);
        int k1 = datablock.getChecksum();
        l = customwordsop;
        k = d.createDataUploadCmd(datablock, k1, k1, q, e);
        k.start();
    }


    private class AudioLevelTracker
    {

        double a;
        double b;
        int c;
        boolean d;

        static double a(double d1)
        {
            return b(d1);
        }

        private static double b(double d1)
        {
            return Math.min(9.9900000000000002D, Math.max(Math.floor(d1 - 40D) / 4.0040040040040044D, 0.0D));
        }

        public boolean isTrackingAudioSample()
        {
            return d;
        }

        public void reset()
        {
            b = 0.0D;
            c = 0;
            d = false;
        }

        public void startTrackingAudioSample()
        {
            reset();
            d = true;
        }

        public boolean update(double d1)
        {
            double d2 = b;
            double d3 = a;
            a = d1;
            c = 1 + c;
            for (b = (d1 + d2 * (double)(-1 + c)) / (double)c; d || a == d3;)
            {
                return false;
            }

            return true;
        }

        public AudioLevelTracker()
        {
            reset();
        }
    }


    private class State extends Enum
    {

        public static final State ERROR;
        public static final State PROCESSING;
        public static final State READY;
        public static final State RECORDING;
        public static final State VOCALIZING;
        private static final State b[];
        private String a;

        public static State valueOf(String s1)
        {
            return (State)Enum.valueOf(com/millennialmedia/android/NVASpeechKit$State, s1);
        }

        public static State[] values()
        {
            return (State[])b.clone();
        }

        public String toString()
        {
            return a;
        }

        static 
        {
            ERROR = new State("ERROR", 0, "error");
            VOCALIZING = new State("VOCALIZING", 1, "vocalizing");
            RECORDING = new State("RECORDING", 2, "recording");
            READY = new State("READY", 3, "ready");
            PROCESSING = new State("PROCESSING", 4, "processing");
            State astate[] = new State[5];
            astate[0] = ERROR;
            astate[1] = VOCALIZING;
            astate[2] = RECORDING;
            astate[3] = READY;
            astate[4] = PROCESSING;
            b = astate;
        }

        private State(String s1, int i1, String s2)
        {
            super(s1, i1);
            a = s2;
        }
    }


    private class Result
    {

        final NVASpeechKit a;
        public final int resultScore;
        public final String resultString;

        public int getResultScore()
        {
            return resultScore;
        }

        public String getResultString()
        {
            return resultString;
        }

        public Result(String s1, double d1)
        {
            a = NVASpeechKit.this;
            super();
            resultString = s1;
            resultScore = (int)d1;
        }
    }

}
