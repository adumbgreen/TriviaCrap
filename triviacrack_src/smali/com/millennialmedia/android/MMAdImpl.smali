.class abstract Lcom/millennialmedia/android/MMAdImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/MMAd;


# static fields
.field private static a:J


# instance fields
.field protected b:Lcom/millennialmedia/android/MMRequest;

.field c:Lcom/millennialmedia/android/RequestListener;

.field d:Z

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:J

.field h:J

.field i:Z

.field j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field k:Lcom/millennialmedia/android/MMAdImplController;

.field l:Lcom/millennialmedia/android/MMWebViewClient;

.field m:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

.field n:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/millennialmedia/android/MMAdImpl;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/millennialmedia/android/MMAdImpl;->d:Z

    .line 27
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->e:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->j:Ljava/lang/ref/WeakReference;

    .line 97
    new-instance v0, Lcom/millennialmedia/android/MMAdImpl$BasicWebViewClientListener;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdImpl$BasicWebViewClientListener;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->m:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    .line 99
    const-class v1, Lcom/millennialmedia/android/MMAdImpl;

    monitor-enter v1

    .line 100
    :try_start_0
    sget-wide v2, Lcom/millennialmedia/android/MMAdImpl;->a:J

    iput-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    .line 101
    sget-wide v2, Lcom/millennialmedia/android/MMAdImpl;->a:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/millennialmedia/android/MMAdImpl;->a:J

    .line 102
    const-string v0, "MMAdImpl"

    const-string v2, "Assigning MMAdImpl internal id: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    monitor-exit v1

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static l()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 255
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "i"

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    return-void
.end method

.method a(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v0

    .line 298
    const-string v1, "apid"

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->e:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v1, "do"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v1, "olock"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->hasCachedVideoSupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    const-string v1, "cachedvideo"

    const-string v2, "false"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_0
    const-string v1, "reqtype"

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->o()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->b:Lcom/millennialmedia/android/MMRequest;

    if-eqz v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->b:Lcom/millennialmedia/android/MMRequest;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/android/MMRequest;->a(Ljava/util/Map;)V

    .line 308
    :cond_1
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    const-string v0, "video"

    const-string v1, "true"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 314
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 316
    :cond_2
    const-string v0, "at"

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :goto_1
    return-void

    .line 311
    :cond_3
    const-string v0, "video"

    const-string v1, "false"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 318
    :cond_4
    const-string v0, "MMAdImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "******* ERROR: INCORRECT AD TYPE IN MMADVIEW OBJECT PARAMETERS ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") **********"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 322
    :cond_5
    const-string v0, "MMAdImpl"

    const-string v1, "******* SDK DEFAULTED TO MMBannerAdBottom. THIS MAY AFFECT THE ADS YOU RECIEVE!!! **********"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v0, "at"

    const-string v1, "b"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method addView(Lcom/millennialmedia/android/MMWebView;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 334
    return-void
.end method

.method b()Z
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method c()Lcom/millennialmedia/android/MMWebViewClient;
    .locals 3

    .prologue
    .line 270
    const-string v0, "MMAdImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning a client for user: DefaultWebViewClient, adimpl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v0, Lcom/millennialmedia/android/BannerWebViewClient;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->m:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    new-instance v2, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/BannerWebViewClient;-><init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    return-object v0
.end method

.method abstract d()Lcom/millennialmedia/android/MMAd;
.end method

.method e()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, -0x1

    return v0
.end method

.method f()V
    .locals 1

    .prologue
    .line 202
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdImplController;->b(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 203
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImplController;->a()V

    .line 206
    :cond_0
    return-void
.end method

.method g()Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 210
    sget-boolean v2, Lcom/millennialmedia/android/MMSDK;->b:Z

    if-eqz v2, :cond_0

    .line 211
    const-string v1, "MMAdImpl"

    const-string v2, "Minimum adrefresh time ignored"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return v0

    .line 214
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 215
    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->g:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 216
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v5

    iget-wide v5, v5, Lcom/millennialmedia/android/HandShake;->h:J

    .line 217
    int-to-long v7, v4

    cmp-long v7, v7, v5

    if-ltz v7, :cond_1

    .line 218
    iput-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->g:J

    goto :goto_0

    .line 221
    :cond_1
    const-string v2, "MMAdImpl"

    const-string v3, "Cannot request ad. Last ad request was %d seconds ago. Next ad can be requested in %d seconds."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    int-to-long v8, v4

    sub-long v4, v5, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v0

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 223
    goto :goto_0
.end method

.method public getApid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getIgnoresDensityScaling()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdImpl;->d:Z

    return v0
.end method

.method public getListener()Lcom/millennialmedia/android/RequestListener;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->c:Lcom/millennialmedia/android/RequestListener;

    return-object v0
.end method

.method public getMMRequest()Lcom/millennialmedia/android/MMRequest;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->b:Lcom/millennialmedia/android/MMRequest;

    return-object v0
.end method

.method h()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public hasCachedVideoSupport()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method i()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public isBanner()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method j()Landroid/content/Context;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 245
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    const-string v0, "millennialmedia.action.ACTION_FETCH_FAILED"

    return-object v0
.end method

.method n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    const-string v0, "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

    return-object v0
.end method

.method o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    const-string v0, "fetch"

    return-object v0
.end method

.method p()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImplController;->d()V

    .line 416
    :cond_0
    return-void
.end method

.method q()Z
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method removeView(Lcom/millennialmedia/android/MMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    return-void
.end method

.method public setApid(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 116
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    sput-object p1, Lcom/millennialmedia/android/HandShake;->a:Ljava/lang/String;

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdImpl;->e:Ljava/lang/String;

    .line 120
    return-void
.end method

.method setClickable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 338
    return-void
.end method

.method public setIgnoresDensityScaling(Z)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/millennialmedia/android/MMAdImpl;->d:Z

    .line 168
    return-void
.end method

.method public setListener(Lcom/millennialmedia/android/RequestListener;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdImpl;->c:Lcom/millennialmedia/android/RequestListener;

    .line 140
    return-void
.end method

.method public setMMRequest(Lcom/millennialmedia/android/MMRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdImpl;->b:Lcom/millennialmedia/android/MMRequest;

    .line 186
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdType[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") InternalId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") LinkedId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/MMAdImpl;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") isFinishing("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdImpl;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
