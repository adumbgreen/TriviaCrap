.class public Lcom/inmobi/androidsdk/InterstitialView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:J

.field b:Z

.field private c:Lcom/inmobi/androidsdk/InterstitialView$State;

.field private d:Lcom/inmobi/androidsdk/AdRequest;

.field private e:Landroid/app/Activity;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Lcom/inmobi/androidsdk/InterstitialViewListener;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:Lcom/inmobi/androidsdk/impl/UserInfo;

.field private m:Lcom/inmobi/re/container/IMWebView;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:J

.field private q:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

.field private r:Lcom/inmobi/androidsdk/Mode;

.field private s:Z

.field private t:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

.field private u:Lcom/inmobi/androidsdk/InterstitialView$c;

.field private v:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-object v0, Lcom/inmobi/androidsdk/InterstitialView$State;->INIT:Lcom/inmobi/androidsdk/InterstitialView$State;

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    .line 84
    new-instance v0, Lcom/inmobi/androidsdk/AdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/AdRequest;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->d:Lcom/inmobi/androidsdk/AdRequest;

    .line 88
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->g:J

    .line 109
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->o:Ljava/lang/String;

    .line 115
    iput-wide v2, p0, Lcom/inmobi/androidsdk/InterstitialView;->p:J

    .line 117
    sget-object v0, Lcom/inmobi/androidsdk/Mode;->AD_NETWORK:Lcom/inmobi/androidsdk/Mode;

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->r:Lcom/inmobi/androidsdk/Mode;

    .line 204
    iput-wide v2, p0, Lcom/inmobi/androidsdk/InterstitialView;->a:J

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->b:Z

    .line 576
    new-instance v0, Lcom/inmobi/androidsdk/f;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/f;-><init>(Lcom/inmobi/androidsdk/InterstitialView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->t:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 849
    new-instance v0, Lcom/inmobi/androidsdk/InterstitialView$c;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/InterstitialView$c;-><init>(Lcom/inmobi/androidsdk/InterstitialView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->u:Lcom/inmobi/androidsdk/InterstitialView$c;

    .line 851
    new-instance v0, Lcom/inmobi/androidsdk/e;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/e;-><init>(Lcom/inmobi/androidsdk/InterstitialView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->v:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/InterstitialView;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-object v0, Lcom/inmobi/androidsdk/InterstitialView$State;->INIT:Lcom/inmobi/androidsdk/InterstitialView$State;

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    .line 84
    new-instance v0, Lcom/inmobi/androidsdk/AdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/AdRequest;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->d:Lcom/inmobi/androidsdk/AdRequest;

    .line 88
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->g:J

    .line 109
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->o:Ljava/lang/String;

    .line 115
    iput-wide v2, p0, Lcom/inmobi/androidsdk/InterstitialView;->p:J

    .line 117
    sget-object v0, Lcom/inmobi/androidsdk/Mode;->AD_NETWORK:Lcom/inmobi/androidsdk/Mode;

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->r:Lcom/inmobi/androidsdk/Mode;

    .line 204
    iput-wide v2, p0, Lcom/inmobi/androidsdk/InterstitialView;->a:J

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->b:Z

    .line 576
    new-instance v0, Lcom/inmobi/androidsdk/f;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/f;-><init>(Lcom/inmobi/androidsdk/InterstitialView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->t:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 849
    new-instance v0, Lcom/inmobi/androidsdk/InterstitialView$c;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/InterstitialView$c;-><init>(Lcom/inmobi/androidsdk/InterstitialView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->u:Lcom/inmobi/androidsdk/InterstitialView$c;

    .line 851
    new-instance v0, Lcom/inmobi/androidsdk/e;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/e;-><init>(Lcom/inmobi/androidsdk/InterstitialView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->v:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    .line 144
    iput-wide p3, p0, Lcom/inmobi/androidsdk/InterstitialView;->g:J

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/InterstitialView;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/androidsdk/InterstitialView$State;)Lcom/inmobi/androidsdk/InterstitialView$State;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/androidsdk/InterstitialViewListener;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->h:Lcom/inmobi/androidsdk/InterstitialViewListener;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/InterstitialView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->i:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 5

    .prologue
    .line 304
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    if-nez v1, :cond_0

    .line 309
    new-instance v1, Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v2, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/inmobi/androidsdk/impl/UserInfo;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 312
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 313
    iget-object v2, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 317
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 318
    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getDisplayWidth(Landroid/view/Display;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    .line 320
    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getDisplayHeight(Landroid/view/Display;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 323
    iget-object v3, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setScreenDensity(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setScreenSize(Ljava/lang/String;)V

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setPhoneDefaultUserAgent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/androidsdk/InterstitialView;->d:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/UserInfo;->updateInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/AdRequest;)V

    .line 342
    const/16 v0, 0xe

    .line 345
    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    const/16 v0, 0x11

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setAdUnitSlot(Ljava/lang/String;)V

    .line 349
    iget-wide v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-wide v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setSlotId(Ljava/lang/String;)V

    .line 351
    :cond_2
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    const-string v1, "[InMobi]-[Network]-4.3.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured while setting user agent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->h:Lcom/inmobi/androidsdk/InterstitialViewListener;

    if-nez v0, :cond_0

    .line 574
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    new-instance v1, Lcom/inmobi/androidsdk/InterstitialView$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/androidsdk/InterstitialView$a;-><init>(Lcom/inmobi/androidsdk/InterstitialView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v1, "Activity cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 160
    :try_start_0
    invoke-static {p1}, Lcom/inmobi/androidsdk/impl/SDKUtil;->validateAdConfiguration(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/inmobi/androidsdk/impl/ConfigException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :goto_1
    invoke-static {p1}, Lcom/inmobi/androidsdk/impl/SDKUtil;->getRootActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    .line 173
    const-class v0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->setIMAIController(Ljava/lang/Class;)V

    .line 175
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v1, "[InMobi]-[Network]-4.3.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Publisher device Id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 183
    :goto_2
    iput-object p2, p0, Lcom/inmobi/androidsdk/InterstitialView;->f:Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Lcom/inmobi/androidsdk/InterstitialView;->a()V

    .line 186
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/inmobi/androidsdk/impl/ConnBroadcastReciever;

    invoke-direct {v1}, Lcom/inmobi/androidsdk/impl/ConnBroadcastReciever;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 191
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "Cannot register network receiver"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 161
    :catch_1
    move-exception v0

    .line 162
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "IMConfigException occured while initializing interstitial while validating adConfig"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 179
    :catch_2
    move-exception v0

    .line 180
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "Cannot get publisher device id"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/InterstitialView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/InterstitialView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 636
    if-eqz p1, :cond_1

    .line 637
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 638
    const-string v0, "%"

    const-string v1, "%25"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->u:Lcom/inmobi/androidsdk/InterstitialView$c;

    const/16 v2, 0x12f

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/InterstitialView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->requestOnPageFinishedCallback(Landroid/os/Message;)V

    .line 643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->j:J

    .line 644
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->u:Lcom/inmobi/androidsdk/InterstitialView$c;

    const/16 v1, 0x133

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getRenderTimeOut()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/InterstitialView$c;->sendEmptyMessageDelayed(IJ)Z

    .line 647
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    const-string v1, ""

    const-string v3, "text/html"

    move-object v2, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/inmobi/re/container/IMWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :goto_0
    return-void

    .line 649
    :cond_1
    sget-object v0, Lcom/inmobi/androidsdk/InterstitialView$State;->INIT:Lcom/inmobi/androidsdk/InterstitialView$State;

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    .line 650
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v1, "Cannot load Ad. Invalid Ad Response"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const/16 v0, 0x65

    sget-object v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/androidsdk/InterstitialView$c;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->u:Lcom/inmobi/androidsdk/InterstitialView$c;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/InterstitialView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/InterstitialView;)J
    .locals 2
    .parameter

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->k:J

    return-wide v0
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/InterstitialView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/InterstitialView;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/InterstitialView;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->s:Z

    return v0
.end method

.method static synthetic e(Lcom/inmobi/androidsdk/InterstitialView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/re/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method static synthetic g(Lcom/inmobi/androidsdk/InterstitialView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/re/container/IMWebView$IMWebViewListener;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->v:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    return-object v0
.end method

.method static synthetic i(Lcom/inmobi/androidsdk/InterstitialView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/inmobi/androidsdk/InterstitialView;)J
    .locals 2
    .parameter

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->j:J

    return-wide v0
.end method

.method static synthetic k(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->q:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    .line 511
    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 507
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v1, "Unable to destroy webview, or it has been destroyed already."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disableHardwareAcceleration()V
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->b:Z

    .line 494
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    .line 496
    :cond_0
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getIMAdInterstitialListener()Lcom/inmobi/androidsdk/InterstitialViewListener;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->h:Lcom/inmobi/androidsdk/InterstitialViewListener;

    return-object v0
.end method

.method public getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->d:Lcom/inmobi/androidsdk/AdRequest;

    return-object v0
.end method

.method public getSlotId()J
    .locals 2

    .prologue
    .line 450
    iget-wide v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->g:J

    return-wide v0
.end method

.method public getState()Lcom/inmobi/androidsdk/InterstitialView$State;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    return-object v0
.end method

.method public loadNewAd()V
    .locals 6

    .prologue
    const/16 v5, 0x65

    .line 215
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v1

    .line 216
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Logger;->startNewSample()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->s:Z

    .line 218
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v2, " >>>> Start loading new Interstitial Ad <<<<"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string v2, "[InMobi]-[Network]-4.3.0"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Publisher device Id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    sget-object v0, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v5, v0}, Lcom/inmobi/androidsdk/InterstitialView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    .line 278
    :goto_1
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    const-string v2, "[InMobi]-[Network]-4.3.0"

    const-string v3, "Cannot get publisher device id"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    sget-object v2, Lcom/inmobi/androidsdk/InterstitialView$State;->LOADING:Lcom/inmobi/androidsdk/InterstitialView$State;

    if-ne v0, v2, :cond_1

    .line 237
    sget-object v0, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->AD_DOWNLOAD_IN_PROGRESS:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v5, v0}, Lcom/inmobi/androidsdk/InterstitialView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_1

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    sget-object v2, Lcom/inmobi/androidsdk/InterstitialView$State;->ACTIVE:Lcom/inmobi/androidsdk/InterstitialView$State;

    if-ne v0, v2, :cond_2

    .line 241
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v1, "Interstitial ad is in ACTIVE state. Try again after sometime."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v0, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v5, v0}, Lcom/inmobi/androidsdk/InterstitialView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_1

    .line 248
    :cond_2
    sget-object v0, Lcom/inmobi/androidsdk/InterstitialView$State;->LOADING:Lcom/inmobi/androidsdk/InterstitialView$State;

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    .line 250
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CARB;->getInstance()Lcom/inmobi/androidsdk/carb/CARB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/carb/CARB;->startCarb()V

    .line 252
    invoke-direct {p0}, Lcom/inmobi/androidsdk/InterstitialView;->a()V

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/androidsdk/InterstitialView;->a:J

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/androidsdk/InterstitialView;->k:J

    .line 257
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->u:Lcom/inmobi/androidsdk/InterstitialView$c;

    const/16 v2, 0x132

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getFetchTimeOut()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/inmobi/androidsdk/InterstitialView$c;->sendEmptyMessageDelayed(IJ)Z

    .line 261
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->q:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    .line 269
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->r:Lcom/inmobi/androidsdk/Mode;

    sget-object v2, Lcom/inmobi/androidsdk/Mode;->APP_GALLERY:Lcom/inmobi/androidsdk/Mode;

    if-ne v0, v2, :cond_3

    .line 270
    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getAppAppGalleryConfigParams()Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 275
    :goto_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->q:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iget-object v2, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    sget-object v3, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest_Interstitial:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    iget-object v4, p0, Lcom/inmobi/androidsdk/InterstitialView;->t:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->asyncRequestSecuredAd(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V

    goto :goto_1

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->o:Ljava/lang/String;

    goto :goto_2
.end method

.method public loadNewAd(Lcom/inmobi/androidsdk/AdRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->d:Lcom/inmobi/androidsdk/AdRequest;

    .line 291
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/InterstitialView;->loadNewAd()V

    .line 292
    return-void
.end method

.method public setAdServerUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->o:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->f:Ljava/lang/String;

    .line 442
    return-void
.end method

.method public setIMAdInterstitialListener(Lcom/inmobi/androidsdk/InterstitialViewListener;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->h:Lcom/inmobi/androidsdk/InterstitialViewListener;

    .line 404
    return-void
.end method

.method public setIMAdRequest(Lcom/inmobi/androidsdk/AdRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->d:Lcom/inmobi/androidsdk/AdRequest;

    .line 423
    return-void
.end method

.method public setMode(Lcom/inmobi/androidsdk/Mode;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->r:Lcom/inmobi/androidsdk/Mode;

    .line 465
    return-void
.end method

.method public setSlotId(J)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-wide p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->g:J

    .line 461
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 364
    :try_start_0
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v1, "Showing the Interstitial Ad. "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    sget-object v1, Lcom/inmobi/androidsdk/InterstitialView$State;->READY:Lcom/inmobi/androidsdk/InterstitialView$State;

    if-eq v0, v1, :cond_1

    .line 368
    const-string v0, "[InMobi]-[Network]-4.3.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial ad is not in the \'READY\' state. Current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->u:Lcom/inmobi/androidsdk/InterstitialView$c;

    const/16 v2, 0x130

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/InterstitialView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->requestOnInterstitialClosed(Landroid/os/Message;)V

    .line 376
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->u:Lcom/inmobi/androidsdk/InterstitialView$c;

    const/16 v2, 0x131

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/InterstitialView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->requestOnInterstitialShown(Landroid/os/Message;)V

    .line 378
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iget-wide v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->p:J

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->changeContentAreaForInterstitials(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "Error showing ad "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public show(J)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-wide p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->p:J

    .line 355
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/InterstitialView;->show()V

    .line 356
    return-void
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    const/16 v2, 0x133

    const/16 v1, 0x132

    .line 477
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->u:Lcom/inmobi/androidsdk/InterstitialView$c;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView$c;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->u:Lcom/inmobi/androidsdk/InterstitialView$c;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView$c;->removeMessages(I)V

    .line 479
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->u:Lcom/inmobi/androidsdk/InterstitialView$c;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView$c;->sendEmptyMessage(I)Z

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->u:Lcom/inmobi/androidsdk/InterstitialView$c;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/InterstitialView$c;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->u:Lcom/inmobi/androidsdk/InterstitialView$c;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/InterstitialView$c;->removeMessages(I)V

    .line 482
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->u:Lcom/inmobi/androidsdk/InterstitialView$c;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/InterstitialView$c;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
