.class public final Lcom/inmobi/androidsdk/BannerView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field public static final INMOBI_AD_UNIT_120X600:I = 0xd

.field public static final INMOBI_AD_UNIT_300X250:I = 0xa

.field public static final INMOBI_AD_UNIT_320X48:I = 0x9

.field public static final INMOBI_AD_UNIT_320X50:I = 0xf

.field public static final INMOBI_AD_UNIT_468X60:I = 0xc

.field public static final INMOBI_AD_UNIT_728X90:I = 0xb

.field public static final INMOBI_INTERNAL_TAG:Ljava/lang/String; = "ref-__in__rt"

.field public static final INMOBI_REF_TAG:Ljava/lang/String; = "ref-tag"


# instance fields
.field private A:Lcom/inmobi/androidsdk/BannerView$d;

.field private B:Landroid/view/animation/Animation$AnimationListener;

.field private C:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

.field private D:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

.field private E:Z

.field private a:Lcom/inmobi/re/container/IMWebView;

.field private b:Lcom/inmobi/re/container/IMWebView;

.field private c:Lcom/inmobi/re/container/IMWebView;

.field private d:Landroid/app/Activity;

.field private e:Z

.field private f:Lcom/inmobi/androidsdk/impl/UserInfo;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Landroid/view/animation/Animation;

.field private j:Landroid/view/animation/Animation;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/inmobi/androidsdk/BannerViewListener;

.field private n:Lcom/inmobi/androidsdk/AdRequest;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:J

.field private r:J

.field private s:J

.field private t:Z

.field private u:Lcom/inmobi/commons/AnimationType;

.field private v:Z

.field private w:Lcom/inmobi/androidsdk/a;

.field private x:Ljava/lang/String;

.field private y:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;-><init>(Landroid/content/Context;)V

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/BannerView;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;-><init>(Landroid/content/Context;)V

    .line 237
    iput-wide p4, p0, Lcom/inmobi/androidsdk/BannerView;->q:J

    .line 238
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/BannerView;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 239
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 183
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 131
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->e:Z

    .line 133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 137
    iput-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->k:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->l:Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/inmobi/androidsdk/AdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/AdRequest;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->n:Lcom/inmobi/androidsdk/AdRequest;

    .line 149
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->q:J

    .line 152
    iput-wide v3, p0, Lcom/inmobi/androidsdk/BannerView;->r:J

    .line 154
    iput-wide v3, p0, Lcom/inmobi/androidsdk/BannerView;->s:J

    .line 156
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->t:Z

    .line 158
    sget-object v0, Lcom/inmobi/commons/AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/commons/AnimationType;

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->u:Lcom/inmobi/commons/AnimationType;

    .line 160
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->v:Z

    .line 162
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->x:Ljava/lang/String;

    .line 1095
    new-instance v0, Lcom/inmobi/androidsdk/BannerView$d;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/BannerView$d;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    .line 1132
    new-instance v0, Lcom/inmobi/androidsdk/d;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/d;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->B:Landroid/view/animation/Animation$AnimationListener;

    .line 1193
    new-instance v0, Lcom/inmobi/androidsdk/c;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/c;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->C:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 1288
    new-instance v0, Lcom/inmobi/androidsdk/b;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/b;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->D:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    .line 1371
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->E:Z

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 250
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->e:Z

    .line 133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 137
    iput-object v3, p0, Lcom/inmobi/androidsdk/BannerView;->k:Ljava/lang/String;

    .line 138
    iput-object v3, p0, Lcom/inmobi/androidsdk/BannerView;->l:Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/inmobi/androidsdk/AdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/AdRequest;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->n:Lcom/inmobi/androidsdk/AdRequest;

    .line 149
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->q:J

    .line 152
    iput-wide v4, p0, Lcom/inmobi/androidsdk/BannerView;->r:J

    .line 154
    iput-wide v4, p0, Lcom/inmobi/androidsdk/BannerView;->s:J

    .line 156
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->t:Z

    .line 158
    sget-object v0, Lcom/inmobi/commons/AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/commons/AnimationType;

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->u:Lcom/inmobi/commons/AnimationType;

    .line 160
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->v:Z

    .line 162
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->x:Ljava/lang/String;

    .line 1095
    new-instance v0, Lcom/inmobi/androidsdk/BannerView$d;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/BannerView$d;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    .line 1132
    new-instance v0, Lcom/inmobi/androidsdk/d;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/d;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->B:Landroid/view/animation/Animation$AnimationListener;

    .line 1193
    new-instance v0, Lcom/inmobi/androidsdk/c;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/c;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->C:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 1288
    new-instance v0, Lcom/inmobi/androidsdk/b;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/b;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->D:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    .line 1371
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->E:Z

    .line 251
    if-nez p2, :cond_0

    .line 252
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v1, "Missing attributes in xml layout of IMAdview "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 255
    :cond_0
    const-string v0, "appId"

    invoke-interface {p2, v3, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    const-string v1, "adSize"

    const/4 v2, -0x1

    invoke-interface {p2, v3, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 257
    const-string v2, "slotId"

    invoke-interface {p2, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    if-eqz v2, :cond_1

    .line 259
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/androidsdk/BannerView;->q:J

    .line 261
    :cond_1
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, v1, v0}, Lcom/inmobi/androidsdk/BannerView;->a(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/BannerViewListener;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->m:Lcom/inmobi/androidsdk/BannerViewListener;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/BannerView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/BannerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 355
    if-gez p1, :cond_0

    .line 356
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v1, "Invalid Ad Size. Please provide a valid Ad Size. If Ad Size is declared in the layout XML, please provide a valid \'adSize\' attribute in the \'com.inmobi.androidsdk.IMAdView\' tag of layout XML. For example, adSize=\"yourAdSize\""

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    return-void
.end method

.method private a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 776
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->E:Z

    if-nez v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    new-instance v1, Lcom/inmobi/androidsdk/BannerView$b;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/BannerView$b;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 785
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->v:Z

    if-nez v0, :cond_2

    .line 786
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v1, "IMAdView not sending callback because the view is not added to any window."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_1
    :goto_0
    return-void

    .line 792
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->m:Lcom/inmobi/androidsdk/BannerViewListener;

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    new-instance v1, Lcom/inmobi/androidsdk/BannerView$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/androidsdk/BannerView$a;-><init>(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 364
    :try_start_0
    invoke-static {p1}, Lcom/inmobi/androidsdk/impl/SDKUtil;->validateAdConfiguration(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/inmobi/androidsdk/impl/ConfigException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 375
    invoke-direct {p0, p2}, Lcom/inmobi/androidsdk/BannerView;->a(I)V

    .line 377
    iput-object p3, p0, Lcom/inmobi/androidsdk/BannerView;->o:Ljava/lang/String;

    .line 378
    iput p2, p0, Lcom/inmobi/androidsdk/BannerView;->p:I

    .line 380
    invoke-static {p1}, Lcom/inmobi/androidsdk/impl/SDKUtil;->getRootActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    .line 382
    const-class v0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->setIMAIController(Ljava/lang/Class;)V

    .line 384
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 386
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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 393
    :goto_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    if-nez v0, :cond_1

    .line 394
    new-instance v0, Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->D:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    .line 396
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->E:Z

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/androidsdk/impl/imai/IMAIController;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v1, v2}, Lcom/inmobi/androidsdk/impl/imai/IMAIController;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    const-string v2, "imaiController"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    if-nez v0, :cond_3

    .line 403
    new-instance v0, Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->D:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    .line 405
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->E:Z

    if-nez v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    .line 407
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 410
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    iput-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    .line 411
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/androidsdk/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/androidsdk/impl/imai/IMAIController;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v1, v2}, Lcom/inmobi/androidsdk/impl/imai/IMAIController;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    const-string v2, "imaiController"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    :cond_3
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->d()V

    .line 418
    new-instance v0, Lcom/inmobi/androidsdk/a;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->B:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/androidsdk/a;-><init>(Lcom/inmobi/androidsdk/BannerView;Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->w:Lcom/inmobi/androidsdk/a;

    .line 419
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/inmobi/androidsdk/impl/ConnBroadcastReciever;

    invoke-direct {v1}, Lcom/inmobi/androidsdk/impl/ConnBroadcastReciever;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 422
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "IMConfigException occured while initializing interstitial while validating adView"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 388
    :catch_1
    move-exception v0

    .line 389
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "Cannot get publisher device id"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/BannerView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x65

    const/4 v3, 0x0

    .line 471
    if-eqz p1, :cond_4

    .line 474
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 475
    const-string v0, "%"

    const-string v1, "%25"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    if-nez v0, :cond_1

    .line 480
    new-instance v0, Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->D:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    .line 482
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->E:Z

    if-nez v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    .line 496
    :goto_0
    new-instance v1, Lcom/inmobi/androidsdk/impl/imai/IMAIController;

    invoke-direct {v1, v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIController;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    const-string v2, "imaiController"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v1, v5}, Lcom/inmobi/androidsdk/BannerView$d;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->requestOnPageFinishedCallback(Landroid/os/Message;)V

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/inmobi/androidsdk/BannerView;->r:J

    .line 503
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    const/16 v2, 0x6c

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getRenderTimeOut()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v1, v2, v5, v6}, Lcom/inmobi/androidsdk/BannerView$d;->sendEmptyMessageDelayed(IJ)Z

    .line 506
    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->resetMraid()V

    .line 507
    const-string v1, ""

    const-string v3, "text/html"

    move-object v2, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/inmobi/re/container/IMWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :goto_1
    return-void

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    if-nez v0, :cond_3

    .line 488
    new-instance v0, Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->D:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    .line 490
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->E:Z

    if-nez v0, :cond_3

    .line 491
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    .line 493
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    goto :goto_0

    .line 511
    :cond_4
    invoke-direct {p0, v3}, Lcom/inmobi/androidsdk/BannerView;->a(Z)V

    .line 512
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v1, "Cannot load Ad. Invalid Ad Response"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    sget-object v0, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v5, v0}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_1
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 697
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 698
    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/BannerView;)J
    .locals 2
    .parameter

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->s:J

    return-wide v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/BannerView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    return-object p1
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/BannerView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 738
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 739
    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/BannerView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/BannerView;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/BannerView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    return-object p1
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/BannerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->l:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 4

    .prologue
    const/16 v1, 0x140

    const/4 v0, 0x0

    .line 425
    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 431
    :try_start_0
    iget v3, p0, Lcom/inmobi/androidsdk/BannerView;->p:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v1, v0

    .line 457
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 458
    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 459
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 460
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 461
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 462
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/BannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :cond_0
    :goto_1
    return-void

    .line 434
    :pswitch_1
    const/16 v0, 0x30

    .line 435
    goto :goto_0

    .line 437
    :pswitch_2
    const/16 v1, 0x12c

    .line 438
    const/16 v0, 0xfa

    .line 439
    goto :goto_0

    .line 441
    :pswitch_3
    const/16 v1, 0x2d9

    .line 442
    const/16 v0, 0x5a

    .line 443
    goto :goto_0

    .line 445
    :pswitch_4
    const/16 v1, 0x1d4

    .line 446
    const/16 v0, 0x3c

    .line 447
    goto :goto_0

    .line 449
    :pswitch_5
    const/16 v1, 0x78

    .line 450
    const/16 v0, 0x258

    .line 451
    goto :goto_0

    .line 454
    :pswitch_6
    const/16 v0, 0x32

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "Cannot set default size for adview"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 431
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/BannerView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;->b(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 746
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/BannerView;->e:Z

    .line 747
    if-eqz p1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->deinit()V

    .line 750
    iput-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    .line 756
    :goto_0
    return-void

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->deinit()V

    .line 754
    iput-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    goto :goto_0
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/BannerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->z:Z

    return v0
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/BannerView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->l:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 522
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 525
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 526
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 528
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 529
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 532
    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getDisplayWidth(Landroid/view/Display;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    .line 534
    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getDisplayHeight(Landroid/view/Display;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 536
    iget-object v3, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setScreenDensity(Ljava/lang/String;)V

    .line 537
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

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

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setPhoneDefaultUserAgent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget v1, p0, Lcom/inmobi/androidsdk/BannerView;->p:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setAdUnitSlot(Ljava/lang/String;)V

    .line 555
    iget-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->q:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-wide v1, p0, Lcom/inmobi/androidsdk/BannerView;->q:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setSlotId(Ljava/lang/String;)V

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->n:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/UserInfo;->updateInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/AdRequest;)V

    .line 558
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 547
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

.method static synthetic d(Lcom/inmobi/androidsdk/BannerView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;->c(Z)V

    return-void
.end method

.method static synthetic e(Lcom/inmobi/androidsdk/BannerView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->k:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x64

    .line 562
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->removeAllViews()V

    .line 563
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 568
    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    iput-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    .line 569
    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {p0, v2, v1}, Lcom/inmobi/androidsdk/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    :goto_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->i()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/BannerView;->c(Z)V

    .line 580
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/BannerView;->a(Z)V

    .line 581
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    invoke-direct {p0, v4, v5}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    .line 589
    :goto_1
    return-void

    .line 572
    :cond_1
    :try_start_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 575
    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    iput-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    .line 576
    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {p0, v2, v1}, Lcom/inmobi/androidsdk/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 582
    :catch_0
    move-exception v0

    .line 583
    :try_start_2
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "Error swapping banner ads"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    invoke-direct {p0, v4, v5}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v4, v5}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    throw v0
.end method

.method static synthetic f(Lcom/inmobi/androidsdk/BannerView;)J
    .locals 2
    .parameter

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->r:J

    return-wide v0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 684
    iget v0, p0, Lcom/inmobi/androidsdk/BannerView;->p:I

    if-gez v0, :cond_0

    .line 685
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v1, "Invalid Ad Size. Please provide a valid adSize."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const/4 v0, 0x0

    .line 689
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/inmobi/androidsdk/BannerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/re/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method private h()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 702
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 734
    :goto_0
    return v0

    .line 710
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 711
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    .line 715
    :goto_1
    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getState()Ljava/lang/String;

    move-result-object v2

    .line 717
    const-string v3, "[InMobi]-[Network]-4.3.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current Ad State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    sget-object v3, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZED:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZING:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 722
    :cond_1
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v2, "Current Ad State is neither default nor loading. New ad will not be shown."

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 725
    goto :goto_0

    .line 713
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    goto :goto_1

    .line 730
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 731
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v2, "New ad will not be shown because the present ad is busy. Eg. Video/audio is playing, etc."

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 732
    goto :goto_0

    .line 734
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/re/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->e:Z

    return v0
.end method

.method static synthetic j(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->y:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 873
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setBackgroundColor(I)V

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_1

    .line 877
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :cond_1
    :goto_0
    return-void

    .line 879
    :catch_0
    move-exception v0

    .line 880
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "Error setNormalBGColor"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/inmobi/androidsdk/BannerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->t:Z

    return v0
.end method

.method static synthetic l(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->e()V

    return-void
.end method

.method static synthetic m(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/commons/AnimationType;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->u:Lcom/inmobi/commons/AnimationType;

    return-object v0
.end method

.method static synthetic n(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/a;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->w:Lcom/inmobi/androidsdk/a;

    return-object v0
.end method

.method static synthetic o(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->j()V

    return-void
.end method

.method static synthetic p(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/BannerView$d;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    return-object v0
.end method


# virtual methods
.method a()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->i:Landroid/view/animation/Animation;

    return-object v0
.end method

.method a(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->i:Landroid/view/animation/Animation;

    .line 764
    return-void
.end method

.method b()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->j:Landroid/view/animation/Animation;

    return-object v0
.end method

.method b(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->j:Landroid/view/animation/Animation;

    .line 772
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    .line 314
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v1, "Unable to destroy webview, or it has been destroyed already."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disableHardwareAcceleration()V
    .locals 1

    .prologue
    .line 1377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->E:Z

    .line 1378
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    .line 1380
    :cond_0
    return-void
.end method

.method public getAdSize()I
    .locals 1

    .prologue
    .line 1368
    iget v0, p0, Lcom/inmobi/androidsdk/BannerView;->p:I

    return v0
.end method

.method public getAdViewPosition()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 271
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 273
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 276
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 278
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 279
    invoke-virtual {p0, v2}, Lcom/inmobi/androidsdk/BannerView;->getLocationOnScreen([I)V

    .line 280
    aget v1, v2, v4

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 281
    aget v1, v2, v5

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object v1, v0

    .line 292
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 294
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 295
    iget v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    aget v3, v2, v4

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 296
    iget v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    aget v2, v2, v5

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 298
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 299
    return-object v1

    .line 283
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 285
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 286
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView;->getLocationOnScreen([I)V

    .line 287
    aget v1, v2, v4

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 288
    aget v1, v2, v5

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object v1, v0

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getIMAdListener()Lcom/inmobi/androidsdk/BannerViewListener;
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->m:Lcom/inmobi/androidsdk/BannerViewListener;

    return-object v0
.end method

.method public getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->n:Lcom/inmobi/androidsdk/AdRequest;

    return-object v0
.end method

.method public getSlotId()J
    .locals 2

    .prologue
    .line 1409
    iget-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->q:J

    return-wide v0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->isModal()Z

    move-result v0

    .line 324
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized loadNewAd()V
    .locals 5

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->y:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    .line 601
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Logger;->startNewSample()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 605
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
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 612
    :goto_0
    :try_start_2
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v1, " >>>> Start loading new Ad <<<<"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 616
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    const/16 v0, 0x65

    sget-object v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 654
    :goto_1
    monitor-exit p0

    return-void

    .line 607
    :catch_0
    move-exception v0

    .line 608
    :try_start_4
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "Cannot get publisher device id"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 622
    :cond_0
    :try_start_5
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    const/16 v0, 0x65

    sget-object v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->AD_DOWNLOAD_IN_PROGRESS:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 651
    :catch_1
    move-exception v0

    .line 652
    :try_start_6
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "Error in loading ad "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 626
    :cond_1
    :try_start_7
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    const/16 v0, 0x65

    sget-object v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->AD_CLICK_IN_PROGRESS:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_1

    .line 630
    :cond_2
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->f()Z

    move-result v0

    if-nez v0, :cond_3

    .line 631
    const/16 v0, 0x65

    sget-object v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_1

    .line 637
    :cond_3
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CARB;->getInstance()Lcom/inmobi/androidsdk/carb/CARB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/carb/CARB;->startCarb()V

    .line 639
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/BannerView;->a(Z)V

    .line 641
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->d()V

    .line 644
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->s:J

    .line 645
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    const/16 v1, 0x6b

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getFetchTimeOut()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/BannerView$d;->sendEmptyMessageDelayed(IJ)Z

    .line 648
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->y:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    iget-object v3, p0, Lcom/inmobi/androidsdk/BannerView;->x:Ljava/lang/String;

    iget-object v4, p0, Lcom/inmobi/androidsdk/BannerView;->C:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->asyncRequestSecuredAd(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method public loadNewAd(Lcom/inmobi/androidsdk/AdRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    if-eqz p1, :cond_0

    .line 677
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/BannerView;->setIMAdRequest(Lcom/inmobi/androidsdk/AdRequest;)V

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->loadNewAd()V

    .line 680
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1109
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->v:Z

    .line 1112
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->c()V

    .line 1113
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1117
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v1, "onDetatchedFromWindow"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->v:Z

    .line 1122
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1123
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    .line 1127
    :goto_0
    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->deinit()V

    .line 1130
    :cond_0
    return-void

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 1443
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 1446
    if-nez p1, :cond_0

    .line 1449
    :try_start_0
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;-><init>()V

    .line 1450
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->init()V

    .line 1452
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->processClick(Landroid/content/Context;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1458
    :cond_0
    :goto_0
    return-void

    .line 1453
    :catch_0
    move-exception v0

    .line 1455
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "Exception ping in background"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAdBackgroundColor(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 892
    return-void
.end method

.method public setAdBackgroundGradientColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 902
    return-void
.end method

.method public setAdServerUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->x:Ljava/lang/String;

    .line 662
    return-void
.end method

.method public setAdSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 1399
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;->a(I)V

    .line 1400
    iput p1, p0, Lcom/inmobi/androidsdk/BannerView;->p:I

    .line 1401
    return-void
.end method

.method public setAdTextColor(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 912
    return-void
.end method

.method public setAnimationType(Lcom/inmobi/commons/AnimationType;)V
    .locals 0
    .parameter

    .prologue
    .line 921
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->u:Lcom/inmobi/commons/AnimationType;

    .line 922
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1359
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->o:Ljava/lang/String;

    .line 1360
    return-void
.end method

.method public setIMAdListener(Lcom/inmobi/androidsdk/BannerViewListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->m:Lcom/inmobi/androidsdk/BannerViewListener;

    .line 1267
    return-void
.end method

.method public setIMAdRequest(Lcom/inmobi/androidsdk/AdRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->n:Lcom/inmobi/androidsdk/AdRequest;

    .line 1286
    return-void
.end method

.method public setRefTagParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 337
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 338
    :cond_0
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v1, "Key or Value cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_1
    :goto_0
    return-void

    .line 342
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 343
    :cond_3
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v1, "Key or Value cannot be empty"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setRefTagKey(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setRefTagValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSlotId(J)V
    .locals 0
    .parameter

    .prologue
    .line 1419
    iput-wide p1, p0, Lcom/inmobi/androidsdk/BannerView;->q:J

    .line 1420
    return-void
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    const/16 v2, 0x6c

    const/16 v1, 0x6b

    .line 1432
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1433
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->removeMessages(I)V

    .line 1434
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->sendEmptyMessage(I)Z

    .line 1439
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/BannerView$d;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/BannerView$d;->removeMessages(I)V

    .line 1437
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/BannerView$d;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
