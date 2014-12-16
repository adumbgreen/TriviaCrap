.class Lcom/amazon/device/ads/Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final PREFS_NAME:Ljava/lang/String; = "AmazonMobileAds"

.field public static final SETTING_ENABLE_WEBVIEW_PAUSE_LOGIC:Ljava/lang/String; = "shouldPauseWebViewTimersInWebViewRelatedActivities"

.field protected static final SETTING_TESTING_ENABLED:Ljava/lang/String; = "testingEnabled"

.field protected static final SETTING_TLS_ENABLED:Ljava/lang/String; = "tlsEnabled"

.field private static instance:Lcom/amazon/device/ads/Settings;


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/ads/Settings$Value;",
            ">;"
        }
    .end annotation
.end field

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/device/ads/Settings$SettingsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final settingsLoadedLatch:Ljava/util/concurrent/CountDownLatch;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private final writeToSharedPreferencesLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/amazon/device/ads/Settings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/Settings;->LOG_TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/amazon/device/ads/Settings;

    invoke-direct {v0}, Lcom/amazon/device/ads/Settings;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/Settings;->instance:Lcom/amazon/device/ads/Settings;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->listeners:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->writeToSharedPreferencesLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 42
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->settingsLoadedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/Settings;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->writeToSharedPreferencesLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/Settings;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/Settings;Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/Settings;->commit(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private commit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .parameter

    .prologue
    .line 399
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    sget-object v0, Lcom/amazon/device/ads/Settings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Committing settings must be executed on a background thread."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 406
    invoke-static {p1}, Lcom/amazon/device/ads/AndroidTargetUtils;->editorApply(Landroid/content/SharedPreferences$Editor;)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static getInstance()Lcom/amazon/device/ads/Settings;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/amazon/device/ads/Settings;->instance:Lcom/amazon/device/ads/Settings;

    return-object v0
.end method

.method private putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 138
    iget-object v0, p2, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 140
    sget-object v0, Lcom/amazon/device/ads/Settings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Could not set null value for setting: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 145
    iget-boolean v0, p2, Lcom/amazon/device/ads/Settings$Value;->isTransientData:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->flush()V

    goto :goto_0
.end method

.method private putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 152
    iget-object v0, p2, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 154
    sget-object v0, Lcom/amazon/device/ads/Settings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Could not set null value for setting: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private writeCacheToSharedPreferences()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/Settings;->writeCacheToSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 202
    return-void
.end method


# virtual methods
.method beginFetch(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    new-instance v0, Lcom/amazon/device/ads/Settings$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/Settings$1;-><init>(Lcom/amazon/device/ads/Settings;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->executeRunnable(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method cacheAdditionalEntries(Ljava/util/Map;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 177
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_1

    .line 187
    iget-object v3, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Lcom/amazon/device/ads/Settings$Value;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 191
    :cond_1
    sget-object v0, Lcom/amazon/device/ads/Settings;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Could not cache null value for SharedPreferences setting: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v0, v3, v4}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    :cond_2
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method contextReceived(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/Settings;->beginFetch(Landroid/content/Context;)V

    goto :goto_0
.end method

.method fetchSharedPreferences(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/Settings;->getSharedPreferencesFromContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 479
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/Settings;->readSharedPreferencesIntoCache(Landroid/content/SharedPreferences;)V

    .line 483
    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 484
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/Settings;->writeCacheToSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->settingsLoadedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 488
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->notifySettingsListeners()V

    .line 489
    return-void
.end method

.method flush()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/amazon/device/ads/Settings;->writeCacheToSharedPreferences()V

    .line 257
    return-void
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 353
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$Value;

    .line 354
    if-nez v0, :cond_0

    .line 360
    :goto_0
    return-object p2

    :cond_0
    iget-object v0, v0, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    move-object p2, v0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 342
    if-nez v0, :cond_0

    .line 348
    :goto_0
    return p2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method getCache()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/ads/Settings$Value;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$Value;

    .line 292
    if-nez v0, :cond_0

    .line 298
    :goto_0
    return p2

    :cond_0
    iget-object v0, v0, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$Value;

    .line 317
    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-wide p2

    :cond_0
    iget-object v0, v0, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0
.end method

.method getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method getSharedPreferencesFromContext(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter

    .prologue
    .line 109
    const-string v0, "AmazonMobileAds"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$Value;

    .line 267
    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-object p2

    :cond_0
    iget-object v0, v0, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object p2, v0

    goto :goto_0
.end method

.method public isSettingsLoaded()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listenForSettings(Lcom/amazon/device/ads/Settings$SettingsListener;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 96
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {p1}, Lcom/amazon/device/ads/Settings$SettingsListener;->settingsLoaded()V

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 105
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method notifySettingsListeners()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 421
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$SettingsListener;

    .line 423
    invoke-interface {v0}, Lcom/amazon/device/ads/Settings$SettingsListener;->settingsLoaded()V

    goto :goto_0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->listeners:Ljava/util/ArrayList;

    .line 429
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->listenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 430
    return-void
.end method

.method putBoolean(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 365
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 366
    return-void
.end method

.method putBooleanWithNoFlush(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 369
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 370
    return-void
.end method

.method putInt(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 303
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 304
    return-void
.end method

.method putIntWithNoFlush(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 307
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 308
    return-void
.end method

.method putLong(Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 328
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 329
    return-void
.end method

.method putLongWithNoFlush(Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 332
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 333
    return-void
.end method

.method putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 278
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 279
    return-void
.end method

.method putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 282
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 283
    return-void
.end method

.method putTransientBoolean(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 373
    new-instance v0, Lcom/amazon/device/ads/Settings$TransientValue;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$TransientValue;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 374
    return-void
.end method

.method putTransientInt(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 311
    new-instance v0, Lcom/amazon/device/ads/Settings$TransientValue;

    const-class v1, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$TransientValue;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 312
    return-void
.end method

.method putTransientLong(Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 336
    new-instance v0, Lcom/amazon/device/ads/Settings$TransientValue;

    const-class v1, Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$TransientValue;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 337
    return-void
.end method

.method putTransientString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 286
    new-instance v0, Lcom/amazon/device/ads/Settings$TransientValue;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$TransientValue;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 287
    return-void
.end method

.method readSharedPreferencesIntoCache(Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter

    .prologue
    .line 167
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 168
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/Settings;->cacheAdditionalEntries(Ljava/util/Map;)V

    .line 169
    return-void
.end method

.method remove(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 378
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$Value;

    .line 379
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/amazon/device/ads/Settings$Value;->isTransientData:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->flush()V

    .line 383
    :cond_0
    return-void
.end method

.method removeWithNoFlush(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    return-void
.end method

.method writeCacheToSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter

    .prologue
    .line 209
    new-instance v0, Lcom/amazon/device/ads/Settings$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/Settings$2;-><init>(Lcom/amazon/device/ads/Settings;Landroid/content/SharedPreferences;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->executeRunnable(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method
