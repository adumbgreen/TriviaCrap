// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;

// Referenced classes of package com.amazon.device.ads:
//            ThreadUtils, Log, AndroidTargetUtils

class Settings
{

    private static final String LOG_TAG = com/amazon/device/ads/Settings.getSimpleName();
    private static final String PREFS_NAME = "AmazonMobileAds";
    public static final String SETTING_ENABLE_WEBVIEW_PAUSE_LOGIC = "shouldPauseWebViewTimersInWebViewRelatedActivities";
    protected static final String SETTING_TESTING_ENABLED = "testingEnabled";
    protected static final String SETTING_TLS_ENABLED = "tlsEnabled";
    private static Settings instance = new Settings();
    private final ConcurrentHashMap cache = new ConcurrentHashMap();
    private ArrayList listeners;
    private final ReentrantLock listenersLock = new ReentrantLock();
    private final CountDownLatch settingsLoadedLatch = new CountDownLatch(1);
    private SharedPreferences sharedPreferences;
    private final ReentrantLock writeToSharedPreferencesLock = new ReentrantLock();

    protected Settings()
    {
        listeners = new ArrayList();
    }

    private void commit(android.content.SharedPreferences.Editor editor)
    {
        if (ThreadUtils.isOnMainThread())
        {
            Log.e(LOG_TAG, "Committing settings must be executed on a background thread.");
        }
        if (android.os.Build.VERSION.SDK_INT >= 9)
        {
            AndroidTargetUtils.editorApply(editor);
            return;
        } else
        {
            editor.commit();
            return;
        }
    }

    public static Settings getInstance()
    {
        return instance;
    }

    private void putSetting(String s, Value value)
    {
        if (value.value == null)
        {
            Log.w(LOG_TAG, "Could not set null value for setting: %s", new Object[] {
                s
            });
        } else
        {
            putSettingWithNoFlush(s, value);
            if (!value.isTransientData && isSettingsLoaded())
            {
                flush();
                return;
            }
        }
    }

    private void putSettingWithNoFlush(String s, Value value)
    {
        if (value.value == null)
        {
            Log.w(LOG_TAG, "Could not set null value for setting: %s", new Object[] {
                s
            });
            return;
        } else
        {
            cache.put(s, value);
            return;
        }
    }

    private void writeCacheToSharedPreferences()
    {
        writeCacheToSharedPreferences(sharedPreferences);
    }

    void beginFetch(final Context context)
    {
        ThreadUtils.executeRunnable(new Runnable() {

            final Settings this$0;
            final Context val$context;

            public void run()
            {
                fetchSharedPreferences(context);
            }

            
            {
                this$0 = Settings.this;
                context = context1;
                super();
            }
        });
    }

    void cacheAdditionalEntries(Map map)
    {
        Iterator iterator = map.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            String s = (String)entry.getKey();
            if (s != null && !cache.containsKey(s))
            {
                Object obj = entry.getValue();
                if (obj != null)
                {
                    cache.put(s, new Value(obj.getClass(), obj));
                } else
                {
                    Log.w(LOG_TAG, "Could not cache null value for SharedPreferences setting: %s", new Object[] {
                        s
                    });
                }
            }
        } while (true);
    }

    public boolean containsKey(String s)
    {
        return cache.containsKey(s);
    }

    void contextReceived(Context context)
    {
        if (context == null)
        {
            return;
        } else
        {
            beginFetch(context);
            return;
        }
    }

    void fetchSharedPreferences(Context context)
    {
        if (!isSettingsLoaded())
        {
            SharedPreferences sharedpreferences = getSharedPreferencesFromContext(context);
            readSharedPreferencesIntoCache(sharedpreferences);
            sharedPreferences = sharedpreferences;
            writeCacheToSharedPreferences(sharedpreferences);
        }
        settingsLoadedLatch.countDown();
        notifySettingsListeners();
    }

    void flush()
    {
        writeCacheToSharedPreferences();
    }

    public Boolean getBoolean(String s, Boolean boolean1)
    {
        Value value = (Value)cache.get(s);
        if (value == null)
        {
            return boolean1;
        } else
        {
            return (Boolean)value.value;
        }
    }

    public boolean getBoolean(String s, boolean flag)
    {
        Boolean boolean1 = getBoolean(s, ((Boolean) (null)));
        if (boolean1 == null)
        {
            return flag;
        } else
        {
            return boolean1.booleanValue();
        }
    }

    ConcurrentHashMap getCache()
    {
        return cache;
    }

    public int getInt(String s, int i)
    {
        Value value = (Value)cache.get(s);
        if (value == null)
        {
            return i;
        } else
        {
            return ((Integer)value.value).intValue();
        }
    }

    public long getLong(String s, long l)
    {
        Value value = (Value)cache.get(s);
        if (value == null)
        {
            return l;
        } else
        {
            return ((Long)value.value).longValue();
        }
    }

    SharedPreferences getSharedPreferences()
    {
        return sharedPreferences;
    }

    SharedPreferences getSharedPreferencesFromContext(Context context)
    {
        return context.getSharedPreferences("AmazonMobileAds", 0);
    }

    public String getString(String s, String s1)
    {
        Value value = (Value)cache.get(s);
        if (value == null)
        {
            return s1;
        } else
        {
            return (String)value.value;
        }
    }

    public boolean isSettingsLoaded()
    {
        return sharedPreferences != null;
    }

    public void listenForSettings(SettingsListener settingslistener)
    {
        listenersLock.lock();
        if (isSettingsLoaded())
        {
            settingslistener.settingsLoaded();
        } else
        {
            listeners.add(settingslistener);
        }
        listenersLock.unlock();
    }

    void notifySettingsListeners()
    {
        listenersLock.lock();
        for (Iterator iterator = listeners.iterator(); iterator.hasNext(); ((SettingsListener)iterator.next()).settingsLoaded()) { }
        listeners.clear();
        listeners = null;
        listenersLock.unlock();
    }

    void putBoolean(String s, boolean flag)
    {
        putSetting(s, new Value(java/lang/Boolean, Boolean.valueOf(flag)));
    }

    void putBooleanWithNoFlush(String s, boolean flag)
    {
        putSettingWithNoFlush(s, new Value(java/lang/Boolean, Boolean.valueOf(flag)));
    }

    void putInt(String s, int i)
    {
        putSetting(s, new Value(java/lang/Integer, Integer.valueOf(i)));
    }

    void putIntWithNoFlush(String s, int i)
    {
        putSettingWithNoFlush(s, new Value(java/lang/Integer, Integer.valueOf(i)));
    }

    void putLong(String s, long l)
    {
        putSetting(s, new Value(java/lang/Long, Long.valueOf(l)));
    }

    void putLongWithNoFlush(String s, long l)
    {
        putSettingWithNoFlush(s, new Value(java/lang/Long, Long.valueOf(l)));
    }

    void putString(String s, String s1)
    {
        putSetting(s, new Value(java/lang/String, s1));
    }

    void putStringWithNoFlush(String s, String s1)
    {
        putSettingWithNoFlush(s, new Value(java/lang/String, s1));
    }

    void putTransientBoolean(String s, boolean flag)
    {
        putSettingWithNoFlush(s, new TransientValue(java/lang/Boolean, Boolean.valueOf(flag)));
    }

    void putTransientInt(String s, int i)
    {
        putSettingWithNoFlush(s, new TransientValue(java/lang/Integer, Integer.valueOf(i)));
    }

    void putTransientLong(String s, long l)
    {
        putSettingWithNoFlush(s, new TransientValue(java/lang/Long, Long.valueOf(l)));
    }

    void putTransientString(String s, String s1)
    {
        putSettingWithNoFlush(s, new TransientValue(java/lang/String, s1));
    }

    void readSharedPreferencesIntoCache(SharedPreferences sharedpreferences)
    {
        cacheAdditionalEntries(sharedpreferences.getAll());
    }

    void remove(String s)
    {
        Value value = (Value)cache.remove(s);
        if (value != null && !value.isTransientData && isSettingsLoaded())
        {
            flush();
        }
    }

    void removeWithNoFlush(String s)
    {
        cache.remove(s);
    }

    void writeCacheToSharedPreferences(final SharedPreferences sharedPreferences)
    {
        ThreadUtils.executeRunnable(new Runnable() {

            final Settings this$0;
            final SharedPreferences val$sharedPreferences;

            public void run()
            {
                writeToSharedPreferencesLock.lock();
                android.content.SharedPreferences.Editor editor = sharedPreferences.edit();
                editor.clear();
                Iterator iterator = cache.entrySet().iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                    Value value = (Value)entry.getValue();
                    if (!value.isTransientData)
                    {
                        if (value.clazz == java/lang/String)
                        {
                            editor.putString((String)entry.getKey(), (String)value.value);
                        } else
                        if (value.clazz == java/lang/Long)
                        {
                            editor.putLong((String)entry.getKey(), ((Long)value.value).longValue());
                        } else
                        if (value.clazz == java/lang/Integer)
                        {
                            editor.putInt((String)entry.getKey(), ((Integer)value.value).intValue());
                        } else
                        if (value.clazz == java/lang/Boolean)
                        {
                            editor.putBoolean((String)entry.getKey(), ((Boolean)value.value).booleanValue());
                        }
                    }
                } while (true);
                commit(editor);
                writeToSharedPreferencesLock.unlock();
            }

            
            {
                this$0 = Settings.this;
                sharedPreferences = sharedpreferences;
                super();
            }
        });
    }





    private class Value
    {

        public Class clazz;
        public boolean isTransientData;
        final Settings this$0;
        public Object value;

        public Value(Class class1, Object obj)
        {
            this$0 = Settings.this;
            super();
            clazz = class1;
            value = obj;
        }
    }


    private class SettingsListener
    {

        public abstract void settingsLoaded();
    }


    private class TransientValue extends Value
    {

        final Settings this$0;

        public TransientValue(Class class1, Object obj)
        {
            this$0 = Settings.this;
            super(class1, obj);
            isTransientData = true;
        }
    }

}
