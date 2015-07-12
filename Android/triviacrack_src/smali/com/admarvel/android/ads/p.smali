.class Lcom/admarvel/android/ads/p;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field private A:Landroid/media/MediaPlayer$OnCompletionListener;

.field private B:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private C:Landroid/media/MediaPlayer$OnErrorListener;

.field private D:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field b:Landroid/media/MediaPlayer$OnPreparedListener;

.field c:Landroid/view/SurfaceHolder$Callback;

.field private d:I

.field private e:Landroid/net/Uri;

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/view/SurfaceHolder;

.field private j:Landroid/media/MediaPlayer;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/media/MediaPlayer$OnCompletionListener;

.field private p:Landroid/media/MediaPlayer$OnPreparedListener;

.field private q:I

.field private r:Landroid/media/MediaPlayer$OnErrorListener;

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Landroid/content/Context;

.field private x:Lcom/admarvel/android/ads/p$a;

.field private y:I

.field private final z:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admarvel/android/ads/AdMarvelVideoActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/admarvel/android/ads/p;->d:I

    iput v0, p0, Lcom/admarvel/android/ads/p;->g:I

    iput v0, p0, Lcom/admarvel/android/ads/p;->h:I

    iput-object v1, p0, Lcom/admarvel/android/ads/p;->i:Landroid/view/SurfaceHolder;

    iput-object v1, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    iput v0, p0, Lcom/admarvel/android/ads/p;->y:I

    new-instance v0, Lcom/admarvel/android/ads/p$1;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/p$1;-><init>(Lcom/admarvel/android/ads/p;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/p;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lcom/admarvel/android/ads/p$2;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/p$2;-><init>(Lcom/admarvel/android/ads/p;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/p;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/admarvel/android/ads/p$3;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/p$3;-><init>(Lcom/admarvel/android/ads/p;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/p;->A:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/admarvel/android/ads/p$4;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/p$4;-><init>(Lcom/admarvel/android/ads/p;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/p;->B:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/admarvel/android/ads/p$5;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/p$5;-><init>(Lcom/admarvel/android/ads/p;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/p;->C:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/admarvel/android/ads/p$6;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/p$6;-><init>(Lcom/admarvel/android/ads/p;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/p;->D:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/admarvel/android/ads/p$7;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/p$7;-><init>(Lcom/admarvel/android/ads/p;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/p;->c:Landroid/view/SurfaceHolder$Callback;

    iput-object p1, p0, Lcom/admarvel/android/ads/p;->w:Landroid/content/Context;

    iput-object v1, p0, Lcom/admarvel/android/ads/p;->z:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/admarvel/android/ads/p;->g()V

    return-void
.end method

.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/admarvel/android/ads/p;->d:I

    iput v0, p0, Lcom/admarvel/android/ads/p;->g:I

    iput v0, p0, Lcom/admarvel/android/ads/p;->h:I

    iput-object v1, p0, Lcom/admarvel/android/ads/p;->i:Landroid/view/SurfaceHolder;

    iput-object v1, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    iput v0, p0, Lcom/admarvel/android/ads/p;->y:I

    new-instance v0, Lcom/admarvel/android/ads/p$1;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/p$1;-><init>(Lcom/admarvel/android/ads/p;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/p;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lcom/admarvel/android/ads/p$2;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/p$2;-><init>(Lcom/admarvel/android/ads/p;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/p;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/admarvel/android/ads/p$3;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/p$3;-><init>(Lcom/admarvel/android/ads/p;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/p;->A:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/admarvel/android/ads/p$4;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/p$4;-><init>(Lcom/admarvel/android/ads/p;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/p;->B:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/admarvel/android/ads/p$5;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/p$5;-><init>(Lcom/admarvel/android/ads/p;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/p;->C:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/admarvel/android/ads/p$6;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/p$6;-><init>(Lcom/admarvel/android/ads/p;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/p;->D:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/admarvel/android/ads/p$7;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/p$7;-><init>(Lcom/admarvel/android/ads/p;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/p;->c:Landroid/view/SurfaceHolder$Callback;

    iput-object p2, p0, Lcom/admarvel/android/ads/p;->w:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/p;->z:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/admarvel/android/ads/p;->g()V

    return-void
.end method

.method private a(J)I
    .locals 1

    long-to-int v0, p1

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/p;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/p;->k:I

    return v0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/p;I)I
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/p;->k:I

    return p1
.end method

.method static synthetic a(Lcom/admarvel/android/ads/p;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/p;->i:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic a(Lcom/admarvel/android/ads/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/p;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/admarvel/android/ads/p;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/p;->l:I

    return v0
.end method

.method static synthetic b(Lcom/admarvel/android/ads/p;I)I
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/p;->l:I

    return p1
.end method

.method static synthetic b(Lcom/admarvel/android/ads/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/p;->u:Z

    return p1
.end method

.method static synthetic c(Lcom/admarvel/android/ads/p;I)I
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/p;->g:I

    return p1
.end method

.method static synthetic c(Lcom/admarvel/android/ads/p;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->p:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic c(Lcom/admarvel/android/ads/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/p;->v:Z

    return p1
.end method

.method static synthetic d(Lcom/admarvel/android/ads/p;I)I
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/p;->h:I

    return p1
.end method

.method static synthetic d(Lcom/admarvel/android/ads/p;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic e(Lcom/admarvel/android/ads/p;I)I
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/p;->q:I

    return p1
.end method

.method static synthetic e(Lcom/admarvel/android/ads/p;)Lcom/admarvel/android/ads/p$a;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    return-object v0
.end method

.method static synthetic f(Lcom/admarvel/android/ads/p;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/p;->s:I

    return v0
.end method

.method static synthetic f(Lcom/admarvel/android/ads/p;I)I
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/p;->m:I

    return p1
.end method

.method static synthetic g(Lcom/admarvel/android/ads/p;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/p;->m:I

    return v0
.end method

.method static synthetic g(Lcom/admarvel/android/ads/p;I)I
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/p;->n:I

    return p1
.end method

.method private g()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/admarvel/android/ads/p;->k:I

    iput v2, p0, Lcom/admarvel/android/ads/p;->l:I

    invoke-virtual {p0}, Lcom/admarvel/android/ads/p;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->c:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/p;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    invoke-virtual {p0, v3}, Lcom/admarvel/android/ads/p;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/admarvel/android/ads/p;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/p;->requestFocus()Z

    iput v2, p0, Lcom/admarvel/android/ads/p;->g:I

    iput v2, p0, Lcom/admarvel/android/ads/p;->h:I

    return-void
.end method

.method static synthetic h(Lcom/admarvel/android/ads/p;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/p;->n:I

    return v0
.end method

.method private h()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->e:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->i:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/admarvel/android/ads/p;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    invoke-interface {v0}, Lcom/admarvel/android/ads/p$a;->l()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/admarvel/android/ads/p;->a(Z)V

    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/admarvel/android/ads/p;->f:I

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->A:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->C:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->D:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->B:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/p;->q:I

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->w:Landroid/content/Context;

    iget-object v2, p0, Lcom/admarvel/android/ads/p;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->i:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/admarvel/android/ads/p;->g:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iput v3, p0, Lcom/admarvel/android/ads/p;->g:I

    iput v3, p0, Lcom/admarvel/android/ads/p;->h:I

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->C:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v5, v4}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_0

    :catch_1
    move-exception v0

    iput v3, p0, Lcom/admarvel/android/ads/p;->g:I

    iput v3, p0, Lcom/admarvel/android/ads/p;->h:I

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->C:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v5, v4}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method static synthetic i(Lcom/admarvel/android/ads/p;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/p;->h:I

    return v0
.end method

.method private i()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/admarvel/android/ads/p;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/admarvel/android/ads/p;->g:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/admarvel/android/ads/p;->g:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/admarvel/android/ads/p;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->o:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic k(Lcom/admarvel/android/ads/p;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->r:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic l(Lcom/admarvel/android/ads/p;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->z:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic m(Lcom/admarvel/android/ads/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/admarvel/android/ads/p;->h()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/p;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/p;->h:I

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    invoke-interface {v0}, Lcom/admarvel/android/ads/p$a;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    invoke-interface {v1}, Lcom/admarvel/android/ads/p$a;->m()V

    :cond_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    invoke-interface {v0}, Lcom/admarvel/android/ads/p$a;->l()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    iput p1, p0, Lcom/admarvel/android/ads/p;->s:I

    invoke-direct {p0}, Lcom/admarvel/android/ads/p;->h()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/p;->o:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/p;->r:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/p;->p:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const-string v0, "AdMarvelVideoView-ResetMedia Player"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    iput-object p1, p0, Lcom/admarvel/android/ads/p;->e:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/p;->s:I

    invoke-direct {p0}, Lcom/admarvel/android/ads/p;->h()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/p;->requestLayout()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/p;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    invoke-interface {v1}, Lcom/admarvel/android/ads/p$a;->m()V

    :cond_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/admarvel/android/ads/p$a;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    return-void
.end method

.method public a(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/p;->g:I

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/p;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    invoke-interface {v1}, Lcom/admarvel/android/ads/p$a;->m()V

    :cond_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/admarvel/android/ads/p;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const/high16 v1, 0x3f80

    invoke-direct {p0}, Lcom/admarvel/android/ads/p;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public canPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/p;->t:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/p;->u:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/p;->v:Z

    return v0
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/admarvel/android/ads/p;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/admarvel/android/ads/p;->y:I

    return-void
.end method

.method public e()V
    .locals 3

    iget v0, p0, Lcom/admarvel/android/ads/p;->y:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/admarvel/android/ads/p;->y:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/admarvel/android/ads/p;->a(J)I

    move-result v0

    invoke-virtual {p0}, Lcom/admarvel/android/ads/p;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lcom/admarvel/android/ads/p;->a(J)I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/admarvel/android/ads/p;->start()V

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    invoke-interface {v0}, Lcom/admarvel/android/ads/p$a;->k()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    invoke-interface {v0}, Lcom/admarvel/android/ads/p$a;->j()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/admarvel/android/ads/p;->y:I

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/p;->a(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/admarvel/android/ads/p;->start()V

    goto :goto_1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/p;->d:I

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/admarvel/android/ads/p;->q:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    invoke-direct {p0}, Lcom/admarvel/android/ads/p;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/admarvel/android/ads/p;->d:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    invoke-direct {p0}, Lcom/admarvel/android/ads/p;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/admarvel/android/ads/p;->f:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/admarvel/android/ads/p;->f:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/admarvel/android/ads/p;->f:I

    iget v0, p0, Lcom/admarvel/android/ads/p;->f:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/admarvel/android/ads/p;->f:I

    iget v0, p0, Lcom/admarvel/android/ads/p;->f:I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-direct {p0}, Lcom/admarvel/android/ads/p;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    iget v0, p0, Lcom/admarvel/android/ads/p;->k:I

    invoke-static {v0, p1}, Lcom/admarvel/android/ads/p;->getDefaultSize(II)I

    move-result v1

    iget v0, p0, Lcom/admarvel/android/ads/p;->l:I

    invoke-static {v0, p2}, Lcom/admarvel/android/ads/p;->getDefaultSize(II)I

    move-result v0

    iget v2, p0, Lcom/admarvel/android/ads/p;->k:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/admarvel/android/ads/p;->l:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/admarvel/android/ads/p;->k:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/admarvel/android/ads/p;->l:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    iget v0, p0, Lcom/admarvel/android/ads/p;->l:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/admarvel/android/ads/p;->k:I

    div-int/2addr v0, v2

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/admarvel/android/ads/p;->setMeasuredDimension(II)V

    return-void

    :cond_1
    iget v2, p0, Lcom/admarvel/android/ads/p;->k:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/admarvel/android/ads/p;->l:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    iget v1, p0, Lcom/admarvel/android/ads/p;->k:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/admarvel/android/ads/p;->l:I

    div-int/2addr v1, v2

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    invoke-interface {v0}, Lcom/admarvel/android/ads/p$a;->n()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x4

    :try_start_0
    iput v0, p0, Lcom/admarvel/android/ads/p;->g:I

    invoke-virtual {p0}, Lcom/admarvel/android/ads/p;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/admarvel/android/ads/p;->y:I

    invoke-direct {p0}, Lcom/admarvel/android/ads/p;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    invoke-interface {v0}, Lcom/admarvel/android/ads/p$a;->h()V

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/admarvel/android/ads/p;->h:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    invoke-interface {v1}, Lcom/admarvel/android/ads/p$a;->m()V

    :cond_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    invoke-interface {v0}, Lcom/admarvel/android/ads/p$a;->l()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/admarvel/android/ads/p;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/p;->s:I

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/admarvel/android/ads/p;->s:I

    goto :goto_0
.end method

.method public start()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/admarvel/android/ads/p;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/admarvel/android/ads/p;->g:I

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/admarvel/android/ads/p;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/p;->y:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/admarvel/android/ads/p;->x:Lcom/admarvel/android/ads/p$a;

    invoke-interface {v1}, Lcom/admarvel/android/ads/p$a;->m()V

    :cond_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
