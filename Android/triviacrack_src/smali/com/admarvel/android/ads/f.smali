.class Lcom/admarvel/android/ads/f;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static I:J


# instance fields
.field private A:Landroid/content/Context;

.field private B:I

.field private final C:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admarvel/android/ads/AdMarvelVideoActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final D:Z

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Z

.field private J:Lcom/admarvel/android/ads/f$c;

.field private K:Landroid/media/MediaPlayer$OnCompletionListener;

.field private L:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private M:Landroid/media/MediaPlayer$OnErrorListener;

.field private N:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field public a:Lcom/admarvel/android/ads/f$b;

.field public b:Lcom/admarvel/android/ads/f$a;

.field c:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field d:Landroid/media/MediaPlayer$OnPreparedListener;

.field private e:I

.field private f:Landroid/net/Uri;

.field private final g:Landroid/net/Uri;

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:Landroid/graphics/SurfaceTexture;

.field private m:Landroid/view/Surface;

.field private n:Landroid/media/MediaPlayer;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/media/MediaPlayer$OnCompletionListener;

.field private t:Landroid/media/MediaPlayer$OnPreparedListener;

.field private u:I

.field private v:Landroid/media/MediaPlayer$OnErrorListener;

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x927c0

    sput-wide v0, Lcom/admarvel/android/ads/f;->I:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/admarvel/android/ads/f;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admarvel/android/ads/f;->i:Z

    iput v1, p0, Lcom/admarvel/android/ads/f;->j:I

    iput v1, p0, Lcom/admarvel/android/ads/f;->k:I

    iput-object v2, p0, Lcom/admarvel/android/ads/f;->l:Landroid/graphics/SurfaceTexture;

    iput-object v2, p0, Lcom/admarvel/android/ads/f;->m:Landroid/view/Surface;

    iput-object v2, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    iput v1, p0, Lcom/admarvel/android/ads/f;->B:I

    iput v1, p0, Lcom/admarvel/android/ads/f;->E:I

    iput-boolean v1, p0, Lcom/admarvel/android/ads/f;->F:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/f;->G:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/f;->H:Z

    new-instance v0, Lcom/admarvel/android/ads/f$e;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/f$e;-><init>(Lcom/admarvel/android/ads/f;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/f;->c:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lcom/admarvel/android/ads/f$d;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/f$d;-><init>(Lcom/admarvel/android/ads/f;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/f;->d:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/admarvel/android/ads/f$1;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/f$1;-><init>(Lcom/admarvel/android/ads/f;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/f;->K:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/admarvel/android/ads/f$2;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/f$2;-><init>(Lcom/admarvel/android/ads/f;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/f;->L:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/admarvel/android/ads/f$3;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/f$3;-><init>(Lcom/admarvel/android/ads/f;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/f;->M:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/admarvel/android/ads/f$4;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/f$4;-><init>(Lcom/admarvel/android/ads/f;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/f;->N:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    iput-object p1, p0, Lcom/admarvel/android/ads/f;->A:Landroid/content/Context;

    iput-object v2, p0, Lcom/admarvel/android/ads/f;->C:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/admarvel/android/ads/f;->D:Z

    invoke-direct {p0}, Lcom/admarvel/android/ads/f;->j()V

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/f;->f:Landroid/net/Uri;

    return-void
.end method

.method static synthetic a(Lcom/admarvel/android/ads/f;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/f;->o:I

    return v0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/f;I)I
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/f;->j:I

    return p1
.end method

.method static synthetic a(Lcom/admarvel/android/ads/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/f;->x:Z

    return p1
.end method

.method static synthetic b(Lcom/admarvel/android/ads/f;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/f;->p:I

    return v0
.end method

.method static synthetic b(Lcom/admarvel/android/ads/f;I)I
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/f;->k:I

    return p1
.end method

.method static synthetic b(Lcom/admarvel/android/ads/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/f;->y:Z

    return p1
.end method

.method static synthetic c(Lcom/admarvel/android/ads/f;I)I
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/f;->u:I

    return p1
.end method

.method static synthetic c(Lcom/admarvel/android/ads/f;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->t:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic c(Lcom/admarvel/android/ads/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/f;->z:Z

    return p1
.end method

.method static synthetic d(Lcom/admarvel/android/ads/f;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic d(Lcom/admarvel/android/ads/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/f;->i:Z

    return p1
.end method

.method static synthetic e(Lcom/admarvel/android/ads/f;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/f;->w:I

    return v0
.end method

.method static synthetic f(Lcom/admarvel/android/ads/f;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/f;->k:I

    return v0
.end method

.method static synthetic g(Lcom/admarvel/android/ads/f;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->s:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic h(Lcom/admarvel/android/ads/f;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/f;->D:Z

    return v0
.end method

.method static synthetic i(Lcom/admarvel/android/ads/f;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->v:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method private j()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p0}, Lcom/admarvel/android/ads/f;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->setWillNotDraw(Z)V

    iput v0, p0, Lcom/admarvel/android/ads/f;->o:I

    iput v0, p0, Lcom/admarvel/android/ads/f;->p:I

    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/f;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/f;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->requestFocus()Z

    iput v0, p0, Lcom/admarvel/android/ads/f;->j:I

    iput v0, p0, Lcom/admarvel/android/ads/f;->k:I

    return-void
.end method

.method private k()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v0, "### openVideo"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->f:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->l:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/admarvel/android/ads/f;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    invoke-interface {v0}, Lcom/admarvel/android/ads/f$b;->f()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/admarvel/android/ads/f;->a(Z)V

    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->d:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->c:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/admarvel/android/ads/f;->h:I

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->K:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->M:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->N:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->L:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/f;->u:I

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->f:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->f:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_3
    :goto_1
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->l:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/f;->m:Landroid/view/Surface;

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->m:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/admarvel/android/ads/f;->j:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iput v3, p0, Lcom/admarvel/android/ads/f;->j:I

    iput v3, p0, Lcom/admarvel/android/ads/f;->k:I

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->M:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v5, v4}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iput v3, p0, Lcom/admarvel/android/ads/f;->j:I

    iput v3, p0, Lcom/admarvel/android/ads/f;->k:I

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->M:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v5, v4}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->A:Landroid/content/Context;

    iget-object v2, p0, Lcom/admarvel/android/ads/f;->f:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private l()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/admarvel/android/ads/f;->j:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/admarvel/android/ads/f;->j:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/admarvel/android/ads/f;->j:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;

    return-object v0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### getCachedVideoUriPath url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adm_cache_files"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/admarvel/android/ads/f;->I:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "## getCachedVideoUriPath cached: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IIII)V
    .locals 0

    iput p1, p0, Lcom/admarvel/android/ads/f;->o:I

    iput p2, p0, Lcom/admarvel/android/ads/f;->p:I

    iput p3, p0, Lcom/admarvel/android/ads/f;->q:I

    iput p4, p0, Lcom/admarvel/android/ads/f;->r:I

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/f;->s:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/f;->v:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/f;->t:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    :cond_0
    iput-object p1, p0, Lcom/admarvel/android/ads/f;->f:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/f;->w:I

    invoke-direct {p0}, Lcom/admarvel/android/ads/f;->k()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->requestLayout()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    invoke-interface {v1}, Lcom/admarvel/android/ads/f$b;->g()V

    :cond_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;Ljava/lang/Boolean;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/admarvel/android/ads/f;->f:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/f;->w:I

    const-string v0, "### setVideoURIForMrec"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/admarvel/android/ads/f;->k()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->requestLayout()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    invoke-interface {v1}, Lcom/admarvel/android/ads/f$b;->g()V

    :cond_0
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/admarvel/android/ads/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/f;->b:Lcom/admarvel/android/ads/f$a;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/admarvel/android/ads/f;->E:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/admarvel/android/ads/f;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admarvel/android/ads/f;->E:I

    invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "adm_cache_files"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### tempPath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    new-instance v1, Lcom/admarvel/android/ads/f$c;

    invoke-direct {v1, p1, v0, p2}, Lcom/admarvel/android/ads/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/admarvel/android/ads/f;->J:Lcom/admarvel/android/ads/f$c;

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->J:Lcom/admarvel/android/ads/f$c;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/admarvel/android/ads/f$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/admarvel/android/ads/f$c;

    invoke-direct {v1, p1, v0, p2}, Lcom/admarvel/android/ads/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/admarvel/android/ads/f;->J:Lcom/admarvel/android/ads/f$c;

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->J:Lcom/admarvel/android/ads/f$c;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/f$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/admarvel/android/ads/f;->a(Landroid/net/Uri;Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/f;->j:I

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/f;->k:I

    :cond_0
    iget-object v0, p0, Lcom/admarvel/android/ads/f;->m:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->m:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/f;->m:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    invoke-interface {v1}, Lcom/admarvel/android/ads/f$b;->g()V

    :cond_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->J:Lcom/admarvel/android/ads/f$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->J:Lcom/admarvel/android/ads/f$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/f$c;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/f;->J:Lcom/admarvel/android/ads/f$c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "### "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->J:Lcom/admarvel/android/ads/f$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " thread interuped "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### isVideoUriCached url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "adm_cache_files"

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/admarvel/android/ads/f;->I:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "## file cached: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/f;->j:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/f;->k:I

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    invoke-interface {v0}, Lcom/admarvel/android/ads/f$b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    invoke-interface {v1}, Lcom/admarvel/android/ads/f$b;->g()V

    :cond_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### isVideoUriProcessing url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "adm_cache_files"

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".PROCESSING"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/admarvel/android/ads/f;->I:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "## file processing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public canPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/f;->x:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/f;->y:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/f;->z:Z

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string v0, ""

    goto :goto_1
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/admarvel/android/ads/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const/high16 v1, 0x3f80

    invoke-direct {p0}, Lcom/admarvel/android/ads/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/admarvel/android/ads/f;->i:Z

    invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##### playWithCacheOrLoad  using cached path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "##### playWithCacheOrLoad: call start to make video play after loading"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->start()V

    invoke-virtual {p0, p1, v2}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public f()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v2, p0, Lcom/admarvel/android/ads/f;->i:Z

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/admarvel/android/ads/f;->a(Landroid/net/Uri;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->start()V

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "### ResumeVideoIfPaused"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/admarvel/android/ads/f;->B:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/admarvel/android/ads/f;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget v0, p0, Lcom/admarvel/android/ads/f;->B:I

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->seekTo(I)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/admarvel/android/ads/f;->k:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    invoke-interface {v0}, Lcom/admarvel/android/ads/f$b;->c()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/admarvel/android/ads/f;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/admarvel/android/ads/f;->a(Landroid/net/Uri;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->start()V

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_2
    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->start()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->a(Landroid/net/Uri;)V

    goto :goto_2
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/admarvel/android/ads/f;->u:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    invoke-direct {p0}, Lcom/admarvel/android/ads/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/admarvel/android/ads/f;->e:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    invoke-direct {p0}, Lcom/admarvel/android/ads/f;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/admarvel/android/ads/f;->h:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/admarvel/android/ads/f;->h:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/admarvel/android/ads/f;->h:I

    iget v0, p0, Lcom/admarvel/android/ads/f;->h:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/admarvel/android/ads/f;->h:I

    iget v0, p0, Lcom/admarvel/android/ads/f;->h:I

    goto :goto_0
.end method

.method public h()I
    .locals 1

    invoke-direct {p0}, Lcom/admarvel/android/ads/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/admarvel/android/ads/f;->e:I

    iget v0, p0, Lcom/admarvel/android/ads/f;->e:I

    iput v0, p0, Lcom/admarvel/android/ads/f;->B:I

    iget v0, p0, Lcom/admarvel/android/ads/f;->e:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/admarvel/android/ads/f;->B:I

    goto :goto_0
.end method

.method public i()V
    .locals 4

    const/4 v2, -0x2

    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v0, p0, Lcom/admarvel/android/ads/f;->o:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/admarvel/android/ads/f;->p:I

    if-lez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/admarvel/android/ads/f;->o:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iget v3, p0, Lcom/admarvel/android/ads/f;->p:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    iget v2, p0, Lcom/admarvel/android/ads/f;->q:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/admarvel/android/ads/f;->r:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/admarvel/android/ads/f;->q:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Lcom/admarvel/android/ads/f;->r:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/admarvel/android/ads/f;->q:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/admarvel/android/ads/f;->r:I

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/admarvel/android/ads/f;->r:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :cond_3
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1
.end method

.method public isPlaying()Z
    .locals 1

    invoke-direct {p0}, Lcom/admarvel/android/ads/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

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

.method protected onAttachedToWindow()V
    .locals 1

    const-string v0, "#### VideoView - onAttachedToWindow"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/f;->F:Z

    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admarvel/android/ads/f;->F:Z

    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### VideoView - onSurfaceTextureAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admarvel/android/ads/f;->G:Z

    iput-object p1, p0, Lcom/admarvel/android/ads/f;->l:Landroid/graphics/SurfaceTexture;

    iget v0, p0, Lcom/admarvel/android/ads/f;->j:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/admarvel/android/ads/f;->k()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/admarvel/android/ads/f;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->b:Lcom/admarvel/android/ads/f$a;

    if-eqz v0, :cond_0

    const-string v0, "#### VideoView - onSurfaceTextureDestroyed + windowDetached"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->b:Lcom/admarvel/android/ads/f$a;

    invoke-interface {v0}, Lcom/admarvel/android/ads/f$a;->a()V

    :cond_0
    const-string v0, "#### VideoView - onSurfaceTextureDestroyed"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/admarvel/android/ads/f;->G:Z

    iput-boolean v1, p0, Lcom/admarvel/android/ads/f;->H:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->a(Z)V

    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "#### VideoView - onSurfaceTextureSizeChanged"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    invoke-interface {v0}, Lcom/admarvel/android/ads/f$b;->e()V

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
    iput v0, p0, Lcom/admarvel/android/ads/f;->j:I

    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/admarvel/android/ads/f;->B:I

    invoke-direct {p0}, Lcom/admarvel/android/ads/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/admarvel/android/ads/f;->D:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :goto_0
    iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    invoke-interface {v0}, Lcom/admarvel/android/ads/f$b;->a()V

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/admarvel/android/ads/f;->k:I

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->c()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    invoke-interface {v1}, Lcom/admarvel/android/ads/f$b;->g()V

    :cond_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    invoke-interface {v0}, Lcom/admarvel/android/ads/f$b;->f()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/admarvel/android/ads/f;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/f;->w:I

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/admarvel/android/ads/f;->w:I

    goto :goto_0
.end method

.method public start()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/admarvel/android/ads/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/admarvel/android/ads/f;->j:I

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/admarvel/android/ads/f;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/admarvel/android/ads/f;->B:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    invoke-interface {v1}, Lcom/admarvel/android/ads/f$b;->g()V

    :cond_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
