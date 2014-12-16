// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.commons.thinICE.icedatacollector;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import com.inmobi.commons.thinICE.cellular.CellOperatorInfo;
import com.inmobi.commons.thinICE.cellular.CellTowerInfo;
import com.inmobi.commons.thinICE.cellular.CellUtil;
import com.inmobi.commons.thinICE.location.LocationInfo;
import com.inmobi.commons.thinICE.location.LocationUtil;
import com.inmobi.commons.thinICE.wifi.WifiInfo;
import com.inmobi.commons.thinICE.wifi.WifiScanListener;
import com.inmobi.commons.thinICE.wifi.WifiScanner;
import com.inmobi.commons.thinICE.wifi.WifiUtil;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.inmobi.commons.thinICE.icedatacollector:
//            ThinICEConfigSettings, b, a, BuildSettings, 
//            Sample, ThinICEListener

public final class IceDataCollector
{

    public static final String TAG = "IceDataCollector";
    private static Context a = null;
    private static ThinICEConfigSettings b = new ThinICEConfigSettings();
    private static Looper c = null;
    private static Handler d = null;
    private static boolean e = false;
    private static Activity f = null;
    private static Runnable g = new b();
    private static LinkedList h = new LinkedList();
    private static Sample i = null;
    private static final Object j = new Object();
    private static ThinICEListener k = null;
    private static Runnable l = new a();

    public IceDataCollector()
    {
    }

    static Activity a(Activity activity)
    {
        f = activity;
        return activity;
    }

    static Context a(Context context)
    {
        a = context;
        return context;
    }

    static Sample a(Sample sample)
    {
        i = sample;
        return sample;
    }

    static ThinICEListener a(ThinICEListener thinicelistener)
    {
        k = thinicelistener;
        return thinicelistener;
    }

    static boolean a()
    {
        return e;
    }

    private static final boolean a(ThinICEConfigSettings thiniceconfigsettings, ThinICEConfigSettings thiniceconfigsettings1)
    {
        return thiniceconfigsettings.isEnabled() != thiniceconfigsettings1.isEnabled() || thiniceconfigsettings.getSampleInterval() != thiniceconfigsettings1.getSampleInterval();
    }

    static void b()
    {
        n();
    }

    static Looper c()
    {
        return c;
    }

    static Activity d()
    {
        return f;
    }

    static LinkedList e()
    {
        return h;
    }

    static ThinICEListener f()
    {
        return k;
    }

    public static void flush()
    {
        com/inmobi/commons/thinICE/icedatacollector/IceDataCollector;
        JVM INSTR monitorenter ;
        if (BuildSettings.DEBUG)
        {
            Log.d("IceDataCollector", "-- flush()");
        }
        synchronized (j)
        {
            i = null;
            h = new LinkedList();
        }
        com/inmobi/commons/thinICE/icedatacollector/IceDataCollector;
        JVM INSTR monitorexit ;
        return;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
        Exception exception;
        exception;
        com/inmobi/commons/thinICE/icedatacollector/IceDataCollector;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static Runnable g()
    {
        return l;
    }

    public static ThinICEConfigSettings getConfig()
    {
        return new ThinICEConfigSettings(b);
    }

    public static WifiInfo getConnectedWifiInfo(Context context)
    {
        int i1 = b.getWifiFlags();
        boolean flag;
        boolean flag1;
        boolean flag2;
        WifiInfo wifiinfo;
        Exception exception;
        boolean flag3;
        WifiInfo wifiinfo1;
        if (!ThinICEConfigSettings.bitTest(i1, 2))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        flag1 = ThinICEConfigSettings.bitTest(i1, 1);
        flag2 = b.isSampleConnectedWifiEnabled();
        wifiinfo = null;
        if (!flag2)
        {
            break MISSING_BLOCK_LABEL_108;
        }
label0:
        {
            if (WifiUtil.hasGetConnectedWifiInfoPermission(context))
            {
                wifiinfo1 = WifiUtil.getConnectedWifiInfo(context, flag, flag1);
                break label0;
            }
            try
            {
                if (BuildSettings.DEBUG)
                {
                    Log.w("IceDataCollector", "application does not have permission to access connected wifi ap");
                }
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                flag3 = BuildSettings.DEBUG;
                wifiinfo = null;
                if (flag3)
                {
                    Log.e("IceDataCollector", "Error getting wifi data", exception);
                    return null;
                }
                break MISSING_BLOCK_LABEL_108;
            }
            wifiinfo1 = null;
        }
        wifiinfo = wifiinfo1;
        return wifiinfo;
    }

    public static List getData()
    {
        if (BuildSettings.DEBUG)
        {
            Log.d("IceDataCollector", "-- getData()");
        }
        LinkedList linkedlist;
        synchronized (j)
        {
            linkedlist = h;
            flush();
        }
        return linkedlist;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static int getSampleCount()
    {
        int i1;
        synchronized (j)
        {
            i1 = h.size();
        }
        return i1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static ThinICEConfigSettings h()
    {
        return b;
    }

    static Handler i()
    {
        return d;
    }

    static Context j()
    {
        return a;
    }

    static Object k()
    {
        return j;
    }

    static Sample l()
    {
        return i;
    }

    private static void m()
    {
        if (BuildSettings.DEBUG)
        {
            Log.d("IceDataCollector", "startSampling()");
        }
        if (c != null)
        {
            if (BuildSettings.DEBUG)
            {
                Log.d("IceDataCollector", "ignoring, already sampling");
            }
        } else
        {
            HandlerThread handlerthread = new HandlerThread("IDC");
            handlerthread.start();
            c = handlerthread.getLooper();
            d = new Handler(c);
            d.postDelayed(l, b.getSampleInterval() / 2L);
            if (BuildSettings.DEBUG)
            {
                Log.d("IceDataCollector", (new StringBuilder()).append("next sample in ").append(b.getSampleInterval() / 2L).append(" ms").toString());
                return;
            }
        }
    }

    private static void n()
    {
        if (BuildSettings.DEBUG)
        {
            Log.d("IceDataCollector", "stopSampling()");
        }
        if (c == null)
        {
            if (BuildSettings.DEBUG)
            {
                Log.d("IceDataCollector", "ignoring, not currently sampling");
            }
        } else
        {
            d.removeCallbacks(l);
            d = null;
            c.quit();
            c = null;
            if (BuildSettings.DEBUG)
            {
                Log.d("IceDataCollector", "sampling stopped");
                return;
            }
        }
    }

    public static void setConfig(ThinICEConfigSettings thiniceconfigsettings)
    {
        com/inmobi/commons/thinICE/icedatacollector/IceDataCollector;
        JVM INSTR monitorenter ;
        if (BuildSettings.DEBUG)
        {
            Log.d("IceDataCollector", (new StringBuilder()).append("-- setConfig(").append(thiniceconfigsettings).append(")").toString());
        }
        if (thiniceconfigsettings != null) goto _L2; else goto _L1
_L1:
        if (BuildSettings.DEBUG)
        {
            Log.d("IceDataCollector", "aborting, config is null");
        }
_L3:
        com/inmobi/commons/thinICE/icedatacollector/IceDataCollector;
        JVM INSTR monitorexit ;
        return;
_L2:
        ThinICEConfigSettings thiniceconfigsettings1;
        int i1;
        int j1;
        thiniceconfigsettings1 = b;
        b = thiniceconfigsettings;
        i1 = thiniceconfigsettings1.getSampleHistorySize();
        j1 = b.getSampleHistorySize();
        if (j1 >= i1)
        {
            break MISSING_BLOCK_LABEL_147;
        }
        synchronized (j)
        {
            if (h.size() > j1)
            {
                if (BuildSettings.DEBUG)
                {
                    Log.d("IceDataCollector", "new sample history size, removing samples from start of list");
                }
                h.subList(0, h.size() - j1).clear();
            }
        }
        if (c != null)
        {
            break MISSING_BLOCK_LABEL_184;
        }
        if (BuildSettings.DEBUG)
        {
            Log.d("IceDataCollector", "not restarting sampling, not currently sampling");
        }
          goto _L3
        Exception exception;
        exception;
        throw exception;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
        if (a(thiniceconfigsettings1, b))
        {
            n();
            if (!b.isEnabled())
            {
                break MISSING_BLOCK_LABEL_212;
            }
            m();
        }
          goto _L3
        flush();
        a = null;
        f = null;
        k = null;
          goto _L3
    }

    public static void setListener(ThinICEListener thinicelistener)
    {
        k = thinicelistener;
    }

    public static void start(Context context)
    {
        com/inmobi/commons/thinICE/icedatacollector/IceDataCollector;
        JVM INSTR monitorenter ;
        if (BuildSettings.DEBUG)
        {
            Log.d("IceDataCollector", "-- start()");
        }
        if (context != null) goto _L2; else goto _L1
_L1:
        if (BuildSettings.DEBUG)
        {
            Log.d("IceDataCollector", "aborting, context is null");
        }
_L3:
        com/inmobi/commons/thinICE/icedatacollector/IceDataCollector;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (b.isEnabled())
        {
            break MISSING_BLOCK_LABEL_74;
        }
        if (BuildSettings.DEBUG)
        {
            Log.d("IceDataCollector", "ignoring, data collection is disabled in settings");
        }
          goto _L3
        Exception exception;
        exception;
        throw exception;
label0:
        {
            if (android.os.Build.VERSION.SDK_INT >= 14)
            {
                break MISSING_BLOCK_LABEL_114;
            }
            if (context instanceof Activity)
            {
                break label0;
            }
            if (BuildSettings.DEBUG)
            {
                Log.w("IceDataCollector", "aborting, build < 14 and context is not an activity");
            }
        }
          goto _L3
        f = (Activity)context;
        a = context.getApplicationContext();
        m();
        if (e)
        {
            if (BuildSettings.DEBUG)
            {
                Log.d("IceDataCollector", "stop previously requested, clearing request");
            }
            e = false;
            d.removeCallbacks(g);
        }
          goto _L3
    }

    public static void stop()
    {
        com/inmobi/commons/thinICE/icedatacollector/IceDataCollector;
        JVM INSTR monitorenter ;
        if (BuildSettings.DEBUG)
        {
            Log.d("IceDataCollector", "-- stop()");
        }
        if (c != null) goto _L2; else goto _L1
_L1:
        Log.d("IceDataCollector", "ignoring, not currently running");
_L3:
        com/inmobi/commons/thinICE/icedatacollector/IceDataCollector;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (!e)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        Log.d("IceDataCollector", "ignoring, stop already requested");
          goto _L3
        Exception exception;
        exception;
        throw exception;
        e = true;
        d.postDelayed(g, b.getStopRequestTimeout());
        if (BuildSettings.DEBUG)
        {
            Log.d("IceDataCollector", (new StringBuilder()).append("stop requested, occurring in ").append(b.getStopRequestTimeout()).append(" ms").toString());
        }
          goto _L3
    }


    // Unreferenced inner class com/inmobi/commons/thinICE/icedatacollector/a
    final class a
        implements Runnable
    {

        public void run()
        {
            Sample sample;
            Object obj;
            HashMap hashmap;
            if (BuildSettings.DEBUG)
            {
                Log.d("IceDataCollector", "** sample runnable");
            }
            if (IceDataCollector.c() == null)
            {
                if (BuildSettings.DEBUG)
                {
                    Log.w("IceDataCollector", "sampling when looper is null, exiting");
                }
                return;
            }
            if (android.os.Build.VERSION.SDK_INT < 14 && !IceDataCollector.d().hasWindowFocus())
            {
                if (BuildSettings.DEBUG)
                {
                    Log.d("IceDataCollector", "activity no longer has focus, terminating");
                }
                IceDataCollector.b();
                LinkedList linkedlist = IceDataCollector.e();
                IceDataCollector.flush();
                IceDataCollector.a(null);
                IceDataCollector.a(null);
                if (IceDataCollector.f() != null)
                {
                    IceDataCollector.f().onSamplingTerminated(linkedlist);
                }
                IceDataCollector.a(null);
                return;
            }
            IceDataCollector.i().postDelayed(IceDataCollector.g(), IceDataCollector.h().getSampleInterval());
            if (BuildSettings.DEBUG)
            {
                Log.d("IceDataCollector", (new StringBuilder()).append("next sample in ").append(IceDataCollector.h().getSampleInterval()).append(" ms").toString());
            }
            sample = new Sample();
            int i1 = IceDataCollector.h().getWifiFlags();
            boolean flag = ThinICEConfigSettings.bitTest(i1, 2);
            boolean flag1 = false;
            if (!flag)
            {
                flag1 = true;
            }
            boolean flag2 = ThinICEConfigSettings.bitTest(i1, 1);
            int j1 = IceDataCollector.h().getCellOpFlags();
            boolean flag3 = ThinICEConfigSettings.bitTest(j1, 1);
            boolean flag4 = ThinICEConfigSettings.bitTest(j1, 2);
            if (!IceDataCollector.h().isSampleCellOperatorEnabled())
            {
                break MISSING_BLOCK_LABEL_319;
            }
            Exception exception;
            Exception exception2;
            Iterator iterator;
            LocationInfo locationinfo;
            CellOperatorInfo celloperatorinfo;
            try
            {
                celloperatorinfo = CellUtil.getCellNetworkInfo(IceDataCollector.j());
            }
            catch (Exception exception4)
            {
                if (BuildSettings.DEBUG)
                {
                    Log.e("IceDataCollector", "Error getting cell operator data", exception4);
                }
                continue; /* Loop/switch isn't completed */
            }
            if (!flag3)
            {
                break MISSING_BLOCK_LABEL_264;
            }
            celloperatorinfo.simMcc = -1;
            celloperatorinfo.simMnc = -1;
            if (!flag4)
            {
                break MISSING_BLOCK_LABEL_281;
            }
            celloperatorinfo.currentMcc = -1;
            celloperatorinfo.currentMnc = -1;
            if (BuildSettings.DEBUG)
            {
                Log.d("IceDataCollector", (new StringBuilder()).append("-- cell operator: ").append(celloperatorinfo).toString());
            }
            sample.cellOperator = celloperatorinfo;
_L18:
            if (!IceDataCollector.h().isSampleCellEnabled()) goto _L2; else goto _L1
_L1:
            if (!CellUtil.hasGetCurrentServingCellPermission(IceDataCollector.j())) goto _L4; else goto _L3
_L3:
            sample.connectedCellTowerInfo = CellUtil.getCurrentCellTower(IceDataCollector.j());
            if (BuildSettings.DEBUG)
            {
                Log.d("IceDataCollector", (new StringBuilder()).append("-- current serving cell: ").append(sample.connectedCellTowerInfo.id).toString());
            }
_L2:
            sample.connectedWifiAp = IceDataCollector.getConnectedWifiInfo(IceDataCollector.j());
            if (!IceDataCollector.h().isSampleLocationEnabled()) goto _L6; else goto _L5
_L5:
            if (!LocationUtil.hasLocationPermission(IceDataCollector.j())) goto _L8; else goto _L7
_L7:
            hashmap = LocationUtil.getLastKnownLocations(IceDataCollector.j());
            if (BuildSettings.DEBUG)
            {
                Log.d("IceDataCollector", "-- locations:");
                for (iterator = hashmap.values().iterator(); iterator.hasNext(); Log.d("IceDataCollector", (new StringBuilder()).append("   + ").append(locationinfo).toString()))
                {
                    locationinfo = (LocationInfo)iterator.next();
                }

            }
              goto _L9
_L6:
            if (!IceDataCollector.h().isSampleVisibleWifiEnabled()) goto _L11; else goto _L10
_L10:
            if (!WifiUtil.hasWifiScanPermission(IceDataCollector.j(), false)) goto _L13; else goto _L12
_L12:
            WifiScanner.requestScan(IceDataCollector.j(), new a.a(this, flag1, flag2));
_L11:
            obj = IceDataCollector.k();
            obj;
            JVM INSTR monitorenter ;
            IceDataCollector.a(sample);
            if (IceDataCollector.e() != null)
            {
                IceDataCollector.e().add(sample);
                for (; IceDataCollector.e().size() > IceDataCollector.h().getSampleHistorySize(); IceDataCollector.e().removeFirst()) { }
            }
            break MISSING_BLOCK_LABEL_742;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
_L4:
            if (!BuildSettings.DEBUG) goto _L2; else goto _L14
_L14:
            Log.w("IceDataCollector", "application does not have permission to access current serving cell");
              goto _L2
            Exception exception3;
            exception3;
            if (BuildSettings.DEBUG)
            {
                Log.e("IceDataCollector", "Error getting cell data", exception3);
            }
              goto _L2
_L9:
            try
            {
                sample.lastKnownLocations = hashmap;
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception2)
            {
                if (BuildSettings.DEBUG)
                {
                    Log.e("IceDataCollector", "Error getting location data", exception2);
                }
            }
              goto _L6
_L8:
            if (!BuildSettings.DEBUG) goto _L6; else goto _L15
_L15:
            Log.w("IceDataCollector", "application does not have permission to access location");
              goto _L6
_L13:
            if (!BuildSettings.DEBUG) goto _L11; else goto _L16
_L16:
            Log.w("IceDataCollector", "application does not have permission to scan for wifi access points");
              goto _L11
            Exception exception1;
            exception1;
            if (BuildSettings.DEBUG)
            {
                Log.e("IceDataCollector", "Error scanning for wifi", exception1);
            }
              goto _L11
            obj;
            JVM INSTR monitorexit ;
            return;
            if (true) goto _L18; else goto _L17
_L17:
        }

            a()
            {
            }
    }


    // Unreferenced inner class com/inmobi/commons/thinICE/icedatacollector/a$a
    class a.a
        implements WifiScanListener
    {

        final boolean a;
        final boolean b;
        final a c;

        public void onResultsReceived(List list)
        {
            if (BuildSettings.DEBUG)
            {
                Log.d("IceDataCollector", (new StringBuilder()).append("Received Wi-Fi scan results ").append(list.size()).toString());
            }
            List list1 = WifiUtil.scanResultsToWifiInfos(list, a, b);
            if (BuildSettings.DEBUG)
            {
                Log.d("IceDataCollector", "-- wifi scan:");
                WifiInfo wifiinfo;
                for (Iterator iterator = list1.iterator(); iterator.hasNext(); Log.d("IceDataCollector", (new StringBuilder()).append("   + ").append(wifiinfo).toString()))
                {
                    wifiinfo = (WifiInfo)iterator.next();
                }

            }
            synchronized (IceDataCollector.k())
            {
                if (IceDataCollector.l() != null)
                {
                    IceDataCollector.l().visibleWifiAp = list1;
                }
            }
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void onTimeout()
        {
            if (BuildSettings.DEBUG)
            {
                Log.w("IceDataCollector", "Received Wi-Fi scan timeout");
            }
        }

            a.a(a a1, boolean flag, boolean flag1)
            {
                c = a1;
                a = flag;
                b = flag1;
                super();
            }
    }


    // Unreferenced inner class com/inmobi/commons/thinICE/icedatacollector/b
    final class b
        implements Runnable
    {

        public void run()
        {
            com/inmobi/commons/thinICE/icedatacollector/IceDataCollector;
            JVM INSTR monitorenter ;
            if (BuildSettings.DEBUG)
            {
                Log.d("IceDataCollector", "** stop runnable");
            }
            if (IceDataCollector.a())
            {
                break MISSING_BLOCK_LABEL_41;
            }
            if (BuildSettings.DEBUG)
            {
                Log.d("IceDataCollector", "ignoring, stop not requested");
            }
            com/inmobi/commons/thinICE/icedatacollector/IceDataCollector;
            JVM INSTR monitorexit ;
            return;
            if (BuildSettings.DEBUG)
            {
                Log.d("IceDataCollector", "terminating sampling and flushing");
            }
            IceDataCollector.b();
            IceDataCollector.flush();
            IceDataCollector.a(null);
            IceDataCollector.a(null);
            IceDataCollector.a(null);
            com/inmobi/commons/thinICE/icedatacollector/IceDataCollector;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            com/inmobi/commons/thinICE/icedatacollector/IceDataCollector;
            JVM INSTR monitorexit ;
            throw exception;
        }

            b()
            {
            }
    }

}
