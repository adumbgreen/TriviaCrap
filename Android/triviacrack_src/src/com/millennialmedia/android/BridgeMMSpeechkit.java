// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Map;

// Referenced classes of package com.millennialmedia.android:
//            MMJSObject, MMJSResponse, AdCache, MMWebView, 
//            NVASpeechKit, HandShake, MMLog

public class BridgeMMSpeechkit extends MMJSObject
    implements android.media.MediaPlayer.OnCompletionListener, BridgeMMMedia.Audio.PeriodicListener
{

    private String a;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;

    BridgeMMSpeechkit()
    {
        a = "startRecording";
        d = "endRecording";
        e = "cacheAudio";
        f = "getSessionId";
        g = "playAudio";
        h = "textToSpeech";
        i = "stopAudio";
        j = "sampleBackgroundAudioLevel";
        k = "releaseVoice";
        l = "addCustomVoiceWords";
        m = "deleteCustomVoiceWords";
    }

    private MMJSResponse a(Map map)
    {
        Context context = (Context)b.get();
        String s = (String)map.get("path");
        if (context != null && s != null)
        {
            BridgeMMMedia.Audio audio = BridgeMMMedia.Audio.a(context);
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

    static void a(NVASpeechKit nvaspeechkit)
    {
        b().release();
        b().setSpeechKit(nvaspeechkit);
    }

    static boolean a()
    {
        return b().release();
    }

    static SpeechKitHolder b()
    {
        return SingletonHolder.INSTANCE;
    }

    static NVASpeechKit c()
    {
        return b().getSpeechKit();
    }

    private NVASpeechKit e()
    {
        MMWebView mmwebview = (MMWebView)c.get();
        if (mmwebview != null && mmwebview.y())
        {
            if (c() != null)
            {
                return c();
            }
            Context context = mmwebview.getContext();
            if (context != null)
            {
                NVASpeechKit nvaspeechkit = new NVASpeechKit(mmwebview);
                a(nvaspeechkit);
                HandShake.NuanceCredentials nuancecredentials = HandShake.a(context).j;
                if (nuancecredentials != null)
                {
                    nvaspeechkit.initialize(nuancecredentials, context.getApplicationContext());
                }
                return nvaspeechkit;
            }
        }
        return null;
    }

    private NVASpeechKit f()
    {
        MMWebView mmwebview = (MMWebView)c.get();
        if (mmwebview != null && mmwebview.z())
        {
            return c();
        } else
        {
            return null;
        }
    }

    MMJSResponse a(String s, Map map)
    {
        MMJSResponse mmjsresponse;
        if (a.equals(s))
        {
            mmjsresponse = startRecording(map);
        } else
        {
            if (d.equals(s))
            {
                return endRecording(map);
            }
            if (e.equals(s))
            {
                return cacheAudio(map);
            }
            if (f.equals(s))
            {
                return getSessionId(map);
            }
            if (g.equals(s))
            {
                return playAudio(map);
            }
            if (h.equals(s))
            {
                return textToSpeech(map);
            }
            if (i.equals(s))
            {
                return stopAudio(map);
            }
            if (j.equals(s))
            {
                return sampleBackgroundAudioLevel(map);
            }
            if (k.equals(s))
            {
                return releaseVoice(map);
            }
            if (l.equals(s))
            {
                return addCustomVoiceWords(map);
            }
            boolean flag = m.equals(s);
            mmjsresponse = null;
            if (flag)
            {
                return deleteCustomVoiceWords(map);
            }
        }
        return mmjsresponse;
    }

    void a(String s)
    {
        MMWebView mmwebview = (MMWebView)c.get();
        if (mmwebview != null)
        {
            mmwebview.loadUrl(s);
        }
    }

    public MMJSResponse addCustomVoiceWords(Map map)
    {
        NVASpeechKit nvaspeechkit = e();
        if (nvaspeechkit == null)
        {
            return MMJSResponse.b("Unable to create speech kit");
        }
        String s = (String)map.get("words");
        if (!TextUtils.isEmpty(s))
        {
            String as[] = s.split(",");
            nvaspeechkit.updateCustomWords(NVASpeechKit.CustomWordsOp.Add, as);
            a("javascript:MMJS.sdk.customVoiceWordsAdded()");
            return MMJSResponse.a((new StringBuilder()).append("Added ").append(s).toString());
        } else
        {
            return null;
        }
    }

    public MMJSResponse cacheAudio(Map map)
    {
        String s = (String)map.get("url");
        if (!URLUtil.isValidUrl(s))
        {
            return MMJSResponse.b("Invalid url");
        }
        if (b != null)
        {
            Context context = (Context)b.get();
            if (context != null && AdCache.b(s, s.substring(1 + s.lastIndexOf("/")), context))
            {
                a("javascript:MMJS.sdk.audioCached()");
                return MMJSResponse.a((new StringBuilder()).append("Successfully cached audio at ").append(s).toString());
            }
        }
        return MMJSResponse.b((new StringBuilder()).append("Failed to cache audio at").append(s).toString());
    }

    public MMJSResponse deleteCustomVoiceWords(Map map)
    {
        NVASpeechKit nvaspeechkit = e();
        if (nvaspeechkit == null)
        {
            return MMJSResponse.b("Unable to create speech kit");
        }
        String s = (String)map.get("words");
        if (!TextUtils.isEmpty(s))
        {
            String as[] = s.split(",");
            nvaspeechkit.updateCustomWords(NVASpeechKit.CustomWordsOp.Remove, as);
            a("javascript:MMJS.sdk.customVoiceWordsDeleted()");
            return MMJSResponse.a((new StringBuilder()).append("Deleted ").append(s).toString());
        } else
        {
            return null;
        }
    }

    public MMJSResponse endRecording(Map map)
    {
        NVASpeechKit nvaspeechkit;
        nvaspeechkit = f();
        if (nvaspeechkit == null)
        {
            return MMJSResponse.b("Unable to get speech kit");
        }
        nvaspeechkit;
        JVM INSTR monitorenter ;
        MMJSResponse mmjsresponse;
        if (!nvaspeechkit.endRecording())
        {
            break MISSING_BLOCK_LABEL_40;
        }
        mmjsresponse = MMJSResponse.a();
        return mmjsresponse;
        Exception exception;
        exception;
        nvaspeechkit;
        JVM INSTR monitorexit ;
        throw exception;
        nvaspeechkit;
        JVM INSTR monitorexit ;
        return MMJSResponse.b("Failed in speechKit");
    }

    public MMJSResponse getSessionId(Map map)
    {
        NVASpeechKit nvaspeechkit = f();
        if (nvaspeechkit == null)
        {
            return MMJSResponse.b("No SpeechKit session open.");
        }
        String s = nvaspeechkit.f();
        if (!TextUtils.isEmpty(s))
        {
            return MMJSResponse.a(s);
        } else
        {
            return MMJSResponse.b("No SpeechKit session open.");
        }
    }

    public void onCompletion(MediaPlayer mediaplayer)
    {
        a("javascript:MMJS.sdk.audioCompleted()");
        Context context = (Context)b.get();
        if (context != null)
        {
            BridgeMMMedia.Audio audio = BridgeMMMedia.Audio.a(context);
            if (audio != null)
            {
                audio.b(this);
                audio.b(this);
            }
        }
    }

    public void onUpdate(int i1)
    {
        a((new StringBuilder()).append("javascript:MMJS.sdk.audioPositionChange(").append(i1).append(")").toString());
    }

    public MMJSResponse playAudio(Map map)
    {
        if (e() != null) goto _L2; else goto _L1
_L1:
        MMJSResponse mmjsresponse = MMJSResponse.b("Unable to create speech kit");
_L4:
        return mmjsresponse;
_L2:
        if (!URLUtil.isValidUrl((String)map.get("url")))
        {
            return MMJSResponse.b("Invalid url");
        }
        String s = (String)map.get("url");
        if (TextUtils.isEmpty(s))
        {
            break; /* Loop/switch isn't completed */
        }
        Context context = (Context)b.get();
        if (context == null)
        {
            break; /* Loop/switch isn't completed */
        }
        BridgeMMMedia.Audio audio = BridgeMMMedia.Audio.a(context);
        if (audio != null)
        {
            audio.a(this);
            audio.a(this);
        }
        map.put("path", s);
        mmjsresponse = a(map);
        if (mmjsresponse != null && mmjsresponse.c == 1)
        {
            a("javascript:MMJS.sdk.audioStarted()");
            return mmjsresponse;
        }
        if (true) goto _L4; else goto _L3
_L3:
        return null;
    }

    public MMJSResponse releaseVoice(Map map)
    {
        if (a())
        {
            return MMJSResponse.b("Unable to get speech kit");
        } else
        {
            return MMJSResponse.a("released speechkit");
        }
    }

    public MMJSResponse sampleBackgroundAudioLevel(Map map)
    {
        NVASpeechKit nvaspeechkit = e();
        if (nvaspeechkit == null)
        {
            return MMJSResponse.b("Unable to create speech kit");
        } else
        {
            nvaspeechkit.startSampleRecording();
            return null;
        }
    }

    public MMJSResponse startRecording(Map map)
    {
        NVASpeechKit nvaspeechkit = e();
        if (nvaspeechkit == null)
        {
            return MMJSResponse.b("Unable to create speech kit");
        }
        String s = (String)map.get("language");
        if (TextUtils.isEmpty(s))
        {
            s = "en_GB";
        }
        if (nvaspeechkit.startRecording(s))
        {
            return MMJSResponse.a();
        } else
        {
            return MMJSResponse.b("Failed in speechKit");
        }
    }

    public MMJSResponse stopAudio(Map map)
    {
        NVASpeechKit nvaspeechkit = f();
        if (nvaspeechkit == null)
        {
            return MMJSResponse.b("Unable to get speech kit");
        }
        nvaspeechkit.stopActions();
        if (b != null)
        {
            BridgeMMMedia.Audio audio = BridgeMMMedia.Audio.a((Context)b.get());
            if (audio != null)
            {
                return audio.b();
            }
        }
        return MMJSResponse.a();
    }

    public MMJSResponse textToSpeech(Map map)
    {
        MMLog.b("BridgeMMSpeechkit", "@@-Calling textToSpeech");
        NVASpeechKit nvaspeechkit = e();
        if (nvaspeechkit == null)
        {
            return MMJSResponse.b("Unable to create speech kit");
        }
        String s = (String)map.get("language");
        String s1 = (String)map.get("text");
        if (TextUtils.isEmpty(s))
        {
            s = "en_GB";
        }
        nvaspeechkit.stopActions();
        if (nvaspeechkit.textToSpeech(s1, s))
        {
            return MMJSResponse.a();
        } else
        {
            return MMJSResponse.b("Failed in speechKit");
        }
    }

    private class SpeechKitHolder
    {

        private NVASpeechKit a;

        static NVASpeechKit a(SpeechKitHolder speechkitholder)
        {
            return speechkitholder.a;
        }

        static NVASpeechKit a(SpeechKitHolder speechkitholder, NVASpeechKit nvaspeechkit)
        {
            speechkitholder.a = nvaspeechkit;
            return nvaspeechkit;
        }

        public NVASpeechKit getSpeechKit()
        {
            return a;
        }

        public boolean release()
        {
            if (a == null)
            {
                return false;
            } else
            {
                Utils.ThreadUtils.a(new Runnable() {

                    final SpeechKitHolder a;

                    public void run()
                    {
                        synchronized (a)
                        {
                            if (SpeechKitHolder.a(a) != null)
                            {
                                SpeechKitHolder.a(a).cancelRecording();
                                SpeechKitHolder.a(a).release();
                                SpeechKitHolder.a(a, null);
                            }
                        }
                        return;
                        exception;
                        speechkitholder;
                        JVM INSTR monitorexit ;
                        throw exception;
                    }

                
                {
                    a = SpeechKitHolder.this;
                    super();
                }
                });
                return true;
            }
        }

        public void setSpeechKit(NVASpeechKit nvaspeechkit)
        {
            a = nvaspeechkit;
        }

        private SpeechKitHolder()
        {
        }

    }


    private class SingletonHolder
    {

        public static final SpeechKitHolder INSTANCE = new SpeechKitHolder();


        private SingletonHolder()
        {
        }
    }

}
