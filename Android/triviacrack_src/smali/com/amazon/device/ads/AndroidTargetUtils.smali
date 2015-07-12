.class Lcom/amazon/device/ads/AndroidTargetUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static isWebViewCheckedAndOk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amazon/device/ads/AndroidTargetUtils;->isWebViewCheckedAndOk:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final disableHardwareAcceleration(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->disableHardwareAcceleration(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method public static editorApply(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$GingerbreadTargetUtils;->editorApply(Landroid/content/SharedPreferences$Editor;)V

    .line 121
    return-void
.end method

.method public static enableWebViewDebugging(Z)V
    .locals 1
    .parameter

    .prologue
    .line 281
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils;->enableWebViewDebugging(Z)V

    .line 285
    :cond_0
    return-void
.end method

.method public static varargs executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<TT;**>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 183
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->executeAsyncTaskWithThreadPooling(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static getNewBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$EclairTargetUtils;->getNewBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getOrientation(Landroid/view/Display;)I
    .locals 1
    .parameter

    .prologue
    .line 165
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$FroyoTargetUtils;->getRotation(Landroid/view/Display;)I

    move-result v0

    .line 171
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    goto :goto_0
.end method

.method public static getPackageCodePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 111
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$FroyoTargetUtils;->getPackageCodePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hideActionAndStatusBars(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 199
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->hideActionBar(Landroid/app/Activity;)V

    .line 203
    :cond_0
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanTargetUtils;->hideStatusBar(Landroid/app/Activity;)V

    .line 207
    :cond_1
    return-void
.end method

.method public static isAtLeastAndroidAPI(I)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAtOrBelowAndroidAPI(I)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isDatabaseLocked(Landroid/database/sqlite/SQLiteException;)Z
    .locals 1
    .parameter

    .prologue
    .line 267
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isInstanceOfSQLiteDatabaseLockedException(Landroid/database/sqlite/SQLiteException;)Z

    move-result v0

    .line 272
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/amazon/device/ads/StringUtils;->doesExceptionContainLockedDatabaseMessage(Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isInstanceOfSQLiteDatabaseLockedException(Landroid/database/sqlite/SQLiteException;)Z
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->isInstanceOfSQLiteDatabaseLockedException(Landroid/database/sqlite/SQLiteException;)Z

    move-result v0

    return v0
.end method

.method public static isWebViewOk(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 224
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtOrBelowAndroidAPI(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    sget-boolean v2, Lcom/amazon/device/ads/AndroidTargetUtils;->isWebViewCheckedAndOk:Z

    if-nez v2, :cond_3

    .line 229
    invoke-static {p0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    .line 230
    if-nez v2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 238
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

    .line 247
    if-eqz v0, :cond_2

    .line 249
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 252
    :cond_2
    sput-boolean v1, Lcom/amazon/device/ads/AndroidTargetUtils;->isWebViewCheckedAndOk:Z

    :cond_3
    move v0, v1

    .line 255
    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 243
    :try_start_1
    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isDatabaseLocked(Landroid/database/sqlite/SQLiteException;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 247
    if-eqz v4, :cond_0

    .line 249
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_4

    .line 249
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v0
.end method

.method public static removeJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->removeJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public static setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 147
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanTargetUtils;->setBackgroundForLinerLayout(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setImageButtonAlpha(Landroid/widget/ImageButton;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 130
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanTargetUtils;->setImageButtonAlpha(Landroid/widget/ImageButton;I)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setAlpha(I)V

    goto :goto_0
.end method
