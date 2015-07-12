.class Lcom/millennialmedia/android/InlineVideoView;
.super Landroid/widget/VideoView;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Landroid/os/Handler;

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMLayout;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

.field d:Lcom/millennialmedia/android/InlineVideoView$MediaController;

.field e:Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 564
    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->e:Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;

    .line 52
    const v0, 0x86c5ad

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setId(I)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setFocusable(Z)V

    .line 54
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdImplController;->a(Landroid/content/Context;)V

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->b:Ljava/lang/ref/WeakReference;

    .line 56
    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 360
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->r:Z

    if-nez v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->h:I

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->seekTo(I)V

    .line 362
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->m:Z

    if-eqz v0, :cond_1

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->startInternal()V

    .line 365
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 375
    :cond_1
    return-void
.end method

.method private d(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    .line 227
    return-void
.end method

.method private l()Z
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoAd;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$DownloadRunnable;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$DownloadRunnable;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method private n()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 283
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->q()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    .line 284
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->o()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 285
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setBackgroundColor(I)V

    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setClickable(Z)V

    .line 287
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->t()Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 288
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->u()Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 289
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->v()Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 290
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->p()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 292
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->m:Z

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->h:I

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->seekTo(I)V

    .line 294
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->startInternal()V

    .line 296
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->n:Z

    if-eqz v0, :cond_1

    .line 305
    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$MediaController;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->d:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    .line 306
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->d:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 307
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->d:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->show()V

    .line 309
    :cond_1
    const-string v0, "InlineVideoView"

    const-string v1, "Finished inserting inlineVideo player"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method private o()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->t:Z

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->t:Z

    .line 316
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoAd;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->t:Z

    .line 320
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 379
    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$VideoTouchListener;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$VideoTouchListener;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    return-object v0
.end method

.method private q()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 426
    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$VideoHandler;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$VideoHandler;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    return-object v0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 514
    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 516
    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 610
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->e:Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->e:Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;->sendEmptyMessage(I)Z

    .line 615
    :cond_0
    return-void
.end method

.method private t()Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 664
    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$VideoErrorListener;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$VideoErrorListener;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    return-object v0
.end method

.method private u()Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 710
    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$VideoCompletionListener;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$VideoCompletionListener;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    return-object v0
.end method

.method private v()Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 751
    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$VideoPreparedListener;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$VideoPreparedListener;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    return-object v0
.end method

.method private w()V
    .locals 3

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 808
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 810
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->requestFocus()Z

    .line 811
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Lcom/millennialmedia/a/a/e;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/e;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(D)V
    .locals 3
    .parameter

    .prologue
    .line 481
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    .line 482
    if-nez v0, :cond_0

    .line 483
    const-string v1, "InlineVideoView"

    const-string v2, "MMLayout weak reference broken"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.inlineVideo.updateVideoSeekTime("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMLayout;->b(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method a(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 736
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->r:Z

    .line 743
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, p0, Lcom/millennialmedia/android/InlineVideoView;->f:I

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->h:I

    .line 744
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 745
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->h:I

    .line 746
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->e()V

    .line 747
    return-void
.end method

.method a(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 587
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 589
    :pswitch_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->e:Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->e:Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 598
    :pswitch_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 599
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setBackgroundColor(I)V

    .line 600
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->removeBlackView()V

    goto :goto_0

    .line 587
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 923
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    .line 924
    if-eqz v0, :cond_1

    .line 925
    const/high16 v1, -0x100

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->setBackgroundColor(I)V

    .line 927
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 928
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v2

    iput v2, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->h:I

    .line 931
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->b:Z

    if-eqz v1, :cond_3

    .line 932
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iput-boolean v4, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->b:Z

    .line 933
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->q:I

    if-ne v1, v3, :cond_2

    .line 934
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 935
    if-eqz v0, :cond_1

    .line 936
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 963
    :cond_1
    :goto_0
    return-void

    .line 940
    :cond_2
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v1

    .line 941
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    .line 942
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->g()V

    .line 943
    invoke-direct {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->a(Z)V

    goto :goto_0

    .line 946
    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->q:I

    .line 948
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iput-boolean v3, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->b:Z

    .line 949
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->q:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 950
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 951
    if-eqz v0, :cond_1

    .line 952
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 956
    :cond_4
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v1

    .line 957
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    .line 958
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->h()V

    .line 959
    invoke-direct {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->a(Z)V

    goto :goto_0
.end method

.method a(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V
    .locals 2
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, p1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->a:I

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->a:I

    .line 232
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, p1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->c:I

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->c:I

    .line 233
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, p1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->f:I

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->f:I

    .line 234
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, p1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->g:I

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->g:I

    .line 235
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->h:I

    .line 799
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setBackgroundColor(I)V

    .line 800
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 801
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->startInternal()V

    .line 802
    return-void
.end method

.method a(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x2

    .line 690
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    .line 697
    if-nez v0, :cond_1

    .line 698
    const-string v0, "InlineVideoView"

    const-string v2, "MMLayout weak reference broken"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 705
    :goto_0
    return v0

    .line 701
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:MMJS.setError("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Error while playing, %d - %d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ");"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMLayout;->b(Ljava/lang/String;)V

    move v0, v2

    .line 705
    goto :goto_0
.end method

.method a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 404
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 405
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    .line 406
    if-nez v0, :cond_0

    .line 407
    const-string v0, "InlineVideoView"

    const-string v2, "MMLayout weak reference broken"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 421
    :goto_0
    return v0

    .line 410
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->l:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v4, v4, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(%f,%f)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMLayout;->b(Ljava/lang/String;)V

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->d:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->d:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->d:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->show()V

    move v0, v2

    .line 418
    goto :goto_0

    :cond_2
    move v0, v2

    .line 421
    goto :goto_0
.end method

.method b(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 780
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->m:Z

    if-eqz v0, :cond_0

    .line 781
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->s()V

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->h:I

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->seekTo(I)V

    .line 784
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->o:Z

    if-nez v0, :cond_2

    .line 785
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getHeight()I

    .line 789
    :goto_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/InlineVideoView;->f:I

    .line 790
    return-void

    .line 787
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->o:Z

    goto :goto_0
.end method

.method declared-synchronized b(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V
    .locals 2
    .parameter

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/InlineVideoView;->d(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V

    .line 240
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->m()V

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :goto_0
    monitor-exit p0

    return-void

    .line 246
    :cond_1
    :try_start_1
    const-string v0, "InlineVideoView"

    const-string v1, "The videoURI attribute was not specified on the video marker div."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 3

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v2, v2, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/VideoAd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 279
    return-void
.end method

.method declared-synchronized c(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)Z
    .locals 2
    .parameter

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/InlineVideoView;->a(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V

    .line 329
    const-string v0, "InlineVideoView"

    const-string v1, "Called initInlineVideo inside reposition section code"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v1

    .line 332
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    .line 334
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    .line 335
    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->e()V

    .line 338
    :cond_0
    invoke-direct {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()V
    .locals 4

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v0

    .line 461
    if-ltz v0, :cond_0

    .line 462
    const-string v1, "InlineVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 464
    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/InlineVideoView;->a(D)V

    .line 466
    :cond_0
    return-void
.end method

.method e()V
    .locals 3

    .prologue
    .line 472
    iget v0, p0, Lcom/millennialmedia/android/InlineVideoView;->f:I

    if-lez v0, :cond_0

    .line 473
    const-string v0, "InlineVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/millennialmedia/android/InlineVideoView;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget v0, p0, Lcom/millennialmedia/android/InlineVideoView;->f:I

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 475
    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/InlineVideoView;->a(D)V

    .line 477
    :cond_0
    return-void
.end method

.method f()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 494
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    .line 504
    :cond_1
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 505
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 506
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 507
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 508
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->r()V

    .line 509
    return-void
.end method

.method g()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 520
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->s:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->o()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->s:Z

    .line 523
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->o()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 524
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->seekTo(I)V

    .line 528
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->r:Z

    .line 529
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->startInternal()V

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 538
    :cond_2
    return-void

    .line 525
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->r:Z

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->seekTo(I)V

    goto :goto_0
.end method

.method public getCustomLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 209
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->b:Z

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 221
    :goto_0
    return-object v0

    .line 213
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->p:F

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v2, v2, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->f:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v2, v2, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->p:F

    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v3, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->g:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 216
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->p:F

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v2, v2, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->c:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 217
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->p:F

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v2, v2, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->a:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 219
    const-string v1, "InlineVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lp height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method h()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 619
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 625
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->s:Z

    .line 626
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->h:I

    .line 628
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->addBlackView()V

    .line 631
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    .line 633
    :cond_2
    return-void
.end method

.method i()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 637
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->h:I

    .line 644
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->pause()V

    .line 646
    :cond_1
    return-void
.end method

.method j()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 650
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->r:Z

    if-nez v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->startInternal()V

    .line 652
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 660
    :cond_0
    return-void
.end method

.method k()Z
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 171
    instance-of v0, p1, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;

    if-nez v0, :cond_0

    .line 172
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 181
    :goto_0
    return-void

    .line 176
    :cond_0
    check-cast p1, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;

    .line 177
    invoke-virtual {p1}, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/VideoView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 180
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v1, p1, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 159
    invoke-super {p0}, Landroid/widget/VideoView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 160
    new-instance v1, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;

    invoke-direct {v1, v0}, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 161
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v2

    iput v2, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->h:I

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;->a:Ljava/lang/String;

    .line 164
    return-object v1
.end method

.method public start()V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->s()V

    .line 555
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->w()V

    .line 556
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 557
    return-void
.end method

.method public startInternal()V
    .locals 2

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 546
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->start()V

    .line 549
    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 346
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->h:I

    .line 355
    :cond_1
    invoke-super {p0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 356
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->c:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
