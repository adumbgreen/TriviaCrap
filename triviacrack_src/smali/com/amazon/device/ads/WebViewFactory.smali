.class Lcom/amazon/device/ads/WebViewFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/amazon/device/ads/WebViewFactory;

.field private static isWebViewCheckedAndOk:Z


# instance fields
.field private cookieSyncManagerCreated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/amazon/device/ads/WebViewFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/WebViewFactory;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/WebViewFactory;->instance:Lcom/amazon/device/ads/WebViewFactory;

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amazon/device/ads/WebViewFactory;->isWebViewCheckedAndOk:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/WebViewFactory;->cookieSyncManagerCreated:Z

    .line 27
    invoke-direct {p0}, Lcom/amazon/device/ads/WebViewFactory;->shouldDebugWebViews()V

    .line 28
    return-void
.end method

.method protected static doesExceptionContainLockedDatabaseMessage(Ljava/lang/Exception;)Z
    .locals 2
    .parameter

    .prologue
    .line 143
    const-string v0, "database is locked"

    .line 145
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "database is locked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final getInstance()Lcom/amazon/device/ads/WebViewFactory;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/amazon/device/ads/WebViewFactory;->instance:Lcom/amazon/device/ads/WebViewFactory;

    return-object v0
.end method

.method protected static isDatabaseLocked(Landroid/database/sqlite/SQLiteException;)Z
    .locals 2
    .parameter

    .prologue
    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 130
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isInstanceOfSQLiteDatabaseLockedException(Landroid/database/sqlite/SQLiteException;)Z

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/amazon/device/ads/WebViewFactory;->doesExceptionContainLockedDatabaseMessage(Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isWebViewOk(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 85
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-gt v2, v3, :cond_3

    .line 88
    sget-boolean v2, Lcom/amazon/device/ads/WebViewFactory;->isWebViewCheckedAndOk:Z

    if-nez v2, :cond_3

    .line 90
    invoke-static {p0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    .line 91
    if-nez v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    :try_start_0
    const-string v0, "webviewCache.db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 113
    :cond_2
    sput-boolean v1, Lcom/amazon/device/ads/WebViewFactory;->isWebViewCheckedAndOk:Z

    :cond_3
    move v0, v1

    .line 116
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 104
    :try_start_1
    invoke-static {v0}, Lcom/amazon/device/ads/WebViewFactory;->isDatabaseLocked(Landroid/database/sqlite/SQLiteException;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 108
    if-eqz v4, :cond_0

    .line 110
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_4

    .line 110
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v0
.end method

.method private shouldDebugWebViews()V
    .locals 2

    .prologue
    .line 179
    const-string v0, "debug.webViews"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->enableWebViewDebugging(Z)V

    .line 183
    :cond_0
    return-void
.end method

.method private updateAdIdCookie()V
    .locals 4

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/amazon/device/ads/WebViewFactory;->cookieSyncManagerCreated:Z

    if-eqz v0, :cond_1

    .line 60
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/device/ads/IInternalAdRegistration;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/RegistrationInfo;->getAdId()Ljava/lang/String;

    move-result-object v0

    .line 61
    if-nez v0, :cond_0

    .line 63
    const-string v0, ""

    .line 66
    :cond_0
    const-string v1, "http://amazon-adsystem.com"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad-id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; Domain=.amazon-adsystem.com"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/WebViewFactory;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 3
    .parameter

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/device/ads/IInternalAdRegistration;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/DeviceInfo;->setUserAgentString(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/device/ads/IInternalAdRegistration;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/DeviceInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 39
    iget-boolean v1, p0, Lcom/amazon/device/ads/WebViewFactory;->cookieSyncManagerCreated:Z

    if-nez v1, :cond_0

    .line 41
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazon/device/ads/WebViewFactory;->cookieSyncManagerCreated:Z

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/WebViewFactory;->updateAdIdCookie()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public final setJavaScriptEnabledForWebView(ZLandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 160
    :try_start_0
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 162
    :catch_0
    move-exception v0

    .line 166
    const-string v0, "Could not set JavaScriptEnabled because a NullPointerException was encountered."

    invoke-static {p3, v0}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x0

    goto :goto_0
.end method
