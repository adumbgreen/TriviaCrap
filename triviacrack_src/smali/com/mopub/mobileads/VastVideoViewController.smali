.class public Lcom/mopub/mobileads/VastVideoViewController;
.super Lcom/mopub/mobileads/m;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/DownloadTask$DownloadTaskListener;


# static fields
.field private static final a:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final b:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

.field private final c:Lcom/mopub/mobileads/util/vast/VastCompanionAd;

.field private final d:Lcom/mopub/mobileads/bj;

.field private final e:Landroid/widget/VideoView;

.field private final f:Landroid/widget/ImageView;

.field private final g:Landroid/view/View$OnTouchListener;

.field private final h:Landroid/os/Handler;

.field private final i:Ljava/lang/Runnable;

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Z

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 56
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v1, 0xa

    const/16 v2, 0x32

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/mopub/mobileads/VastVideoViewController;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;JLcom/mopub/mobileads/n;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/mopub/mobileads/m;-><init>(Landroid/content/Context;JLcom/mopub/mobileads/n;)V

    .line 70
    const/16 v0, 0x1388

    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->k:I

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->h:Landroid/os/Handler;

    .line 88
    iput-boolean v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->j:Z

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->q:I

    .line 90
    iput v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->s:I

    .line 92
    const-string v0, "vast_video_configuration"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    if-eqz v1, :cond_0

    .line 94
    check-cast v0, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->b:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->b:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VastVideoConfiguration does not have a video disk path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VastVideoConfiguration is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->b:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getVastCompanionAd()Lcom/mopub/mobileads/util/vast/VastCompanionAd;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->c:Lcom/mopub/mobileads/util/vast/VastCompanionAd;

    .line 105
    new-instance v0, Lcom/mopub/mobileads/VastVideoViewController$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/VastVideoViewController$1;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->g:Landroid/view/View$OnTouchListener;

    .line 118
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->a(Landroid/content/Context;)V

    .line 120
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->c(Landroid/content/Context;)Landroid/widget/VideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->e:Landroid/widget/VideoView;

    .line 121
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 123
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->b(Landroid/content/Context;)Lcom/mopub/mobileads/bj;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->d:Lcom/mopub/mobileads/bj;

    .line 124
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->i()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->d:Lcom/mopub/mobileads/bj;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->d(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->f:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->b:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getImpressionTrackers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mopub/common/HttpClient;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 130
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->l()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->i:Ljava/lang/Runnable;

    .line 131
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 279
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v6, [I

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v4

    const/16 v3, 0xff

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v5

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 283
    new-array v1, v6, [Landroid/graphics/drawable/Drawable;

    .line 284
    sget-object v2, Lcom/mopub/common/util/Drawables;->THATCHED_BACKGROUND:Lcom/mopub/common/util/Drawables;

    invoke-virtual {v2, p1}, Lcom/mopub/common/util/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    .line 285
    aput-object v0, v1, v5

    .line 286
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 287
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->i()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/VastVideoViewController;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/VastVideoViewController;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mopub/common/HttpClient;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 418
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->j()V

    .line 420
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 421
    const-string v1, "URL"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->g()Lcom/mopub/mobileads/n;

    move-result-object v1

    const-class v2, Lcom/mopub/common/MoPubBrowser;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/mopub/mobileads/n;->onStartActivityForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 425
    return-void
.end method

.method private a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 428
    const/16 v0, 0x3e80

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/mopub/mobileads/VastVideoViewController;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->a(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/mopub/mobileads/VastVideoViewController;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->k:I

    return p1
.end method

.method private b(Landroid/content/Context;)Lcom/mopub/mobileads/bj;
    .locals 2
    .parameter

    .prologue
    .line 291
    new-instance v0, Lcom/mopub/mobileads/bj;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/bj;-><init>(Landroid/content/Context;)V

    .line 292
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$4;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VastVideoViewController$4;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bj;->a(Landroid/view/View$OnTouchListener;)V

    .line 301
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->g:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bj;->b(Landroid/view/View$OnTouchListener;)V

    .line 302
    return-object v0
.end method

.method static synthetic b(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->b:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    return-object v0
.end method

.method static synthetic b(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->n:Z

    return p1
.end method

.method private c(Landroid/content/Context;)Landroid/widget/VideoView;
    .locals 2
    .parameter

    .prologue
    .line 306
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 307
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$5;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VastVideoViewController$5;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 315
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->g:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 317
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/mopub/mobileads/VastVideoViewController$6;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/content/Context;Landroid/widget/VideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 336
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$7;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VastVideoViewController$7;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 350
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->b:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-virtual {v1}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 352
    return-object v0
.end method

.method static synthetic c(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/util/vast/VastCompanionAd;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->c:Lcom/mopub/mobileads/util/vast/VastCompanionAd;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->o:Z

    return p1
.end method

.method private d(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 393
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 394
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 395
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 399
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->d:Lcom/mopub/mobileads/bj;

    invoke-virtual {v3}, Lcom/mopub/mobileads/bj;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 400
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->i()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 404
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 411
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    return-object v1
.end method

.method static synthetic d(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/VideoView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->e:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic d(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->p:Z

    return p1
.end method

.method static synthetic e(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->m:Z

    return v0
.end method

.method static synthetic e(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->r:Z

    return p1
.end method

.method static synthetic f(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->n:Z

    return v0
.end method

.method static synthetic g(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->o:Z

    return v0
.end method

.method static synthetic h(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->p:Z

    return v0
.end method

.method static synthetic i(Lcom/mopub/mobileads/VastVideoViewController;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->k:I

    return v0
.end method

.method static synthetic j(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/bj;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->d:Lcom/mopub/mobileads/bj;

    return-object v0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->c:Lcom/mopub/mobileads/util/vast/VastCompanionAd;

    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->c:Lcom/mopub/mobileads/util/vast/VastCompanionAd;

    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/VastCompanionAd;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/common/HttpClient;->initializeHttpGet(Ljava/lang/String;Landroid/content/Context;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 222
    new-instance v1, Lcom/mopub/common/DownloadTask;

    invoke-direct {v1, p0}, Lcom/mopub/common/DownloadTask;-><init>(Lcom/mopub/common/DownloadTask$DownloadTaskListener;)V

    .line 223
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string v1, "Failed to download companion ad"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->n()Z

    move-result v0

    return v0
.end method

.method private l()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lcom/mopub/mobileads/VastVideoViewController$3;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/VastVideoViewController$3;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    return-object v0
.end method

.method static synthetic l(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->m()V

    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Z

    .line 433
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->d:Lcom/mopub/mobileads/bj;

    invoke-virtual {v0}, Lcom/mopub/mobileads/bj;->a()V

    .line 434
    return-void
.end method

.method static synthetic m(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->j:Z

    return v0
.end method

.method static synthetic n(Lcom/mopub/mobileads/VastVideoViewController;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method private n()Z
    .locals 2

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->k:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic o(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private o()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Z

    return v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->j:Z

    if-nez v0, :cond_0

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->j:Z

    .line 447
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 449
    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->q()V

    return-void
.end method

.method static synthetic q(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->j:Z

    if-eqz v0, :cond_0

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->j:Z

    .line 454
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 456
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/mopub/mobileads/m;->a()V

    .line 141
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->g()Lcom/mopub/mobileads/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/n;->onSetRequestedOrientation(I)V

    .line 143
    const-string v0, "com.mopub.action.interstitial.show"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->a(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->k()V

    .line 146
    return-void
.end method

.method a(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->g()Lcom/mopub/mobileads/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/n;->onFinish()V

    .line 185
    :cond_0
    return-void
.end method

.method a(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 362
    invoke-static {}, Lcom/mopub/common/util/VersionCode;->currentApiLevel()Lcom/mopub/common/util/VersionCode;

    move-result-object v2

    sget-object v3, Lcom/mopub/common/util/VersionCode;->JELLY_BEAN:Lcom/mopub/common/util/VersionCode;

    invoke-virtual {v2, v3}, Lcom/mopub/common/util/VersionCode;->isBelow(Lcom/mopub/common/util/VersionCode;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne p2, v0, :cond_0

    const/high16 v2, -0x8000

    if-ne p3, v2, :cond_0

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->s:I

    if-ge v2, v0, :cond_0

    .line 367
    const/4 v3, 0x0

    .line 369
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 370
    new-instance v4, Ljava/io/File;

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->b:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-virtual {v2}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 379
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 380
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->e:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 385
    invoke-static {v2}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 386
    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->s:I

    .line 389
    :goto_0
    return v0

    .line 382
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 385
    :goto_1
    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 386
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->s:I

    move v0, v1

    goto :goto_0

    .line 385
    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v3}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 386
    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->s:I

    throw v0

    :cond_0
    move v0, v1

    .line 389
    goto :goto_0

    .line 385
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_2

    .line 382
    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method b()Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->e:Landroid/widget/VideoView;

    return-object v0
.end method

.method c()V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->q()V

    .line 164
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->q:I

    .line 165
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 166
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->s:I

    .line 153
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->p()V

    .line 155
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->e:Landroid/widget/VideoView;

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->q:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 156
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->r:Z

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 159
    :cond_0
    return-void
.end method

.method e()V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->q()V

    .line 171
    const-string v0, "com.mopub.action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->a(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method f()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Z

    return v0
.end method

.method public onComplete(Ljava/lang/String;Lcom/mopub/common/DownloadResponse;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 190
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/mopub/common/DownloadResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 191
    invoke-static {p2}, Lcom/mopub/common/HttpResponses;->asBitmap(Lcom/mopub/common/DownloadResponse;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->h()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 195
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->h()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 196
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->f:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    .line 197
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoViewController;->f:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    .line 198
    if-ge v1, v3, :cond_0

    if-ge v2, v4, :cond_0

    .line 199
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->f:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 200
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 203
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VastVideoViewController$2;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :cond_1
    return-void
.end method
