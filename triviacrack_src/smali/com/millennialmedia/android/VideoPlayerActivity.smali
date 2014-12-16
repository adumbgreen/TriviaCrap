.class Lcom/millennialmedia/android/VideoPlayerActivity;
.super Lcom/millennialmedia/android/MMBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private a:Z

.field private b:Z

.field protected d:Z

.field protected e:I

.field protected f:Z

.field protected g:Landroid/widget/VideoView;

.field h:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

.field i:Ljava/lang/String;

.field j:Landroid/widget/RelativeLayout;

.field k:Landroid/widget/ProgressBar;

.field l:Landroid/widget/Button;

.field m:Landroid/view/View;

.field n:Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;

.field o:Z

.field p:Z

.field private q:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/millennialmedia/android/MMBaseActivity;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->q:Z

    .line 55
    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->d:Z

    .line 56
    iput v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->e:I

    .line 462
    new-instance v0, Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->n:Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;

    .line 547
    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->p:Z

    return-void
.end method

.method private a(Landroid/widget/RelativeLayout;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, -0x2

    .line 231
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 232
    const v1, 0x4fe0613

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 233
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 234
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 237
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 240
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 241
    new-instance v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->l:Landroid/widget/Button;

    .line 242
    new-instance v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 244
    const v4, 0x1080025

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 245
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->l:Landroid/widget/Button;

    const v5, 0x1080023

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 249
    :goto_0
    const v4, 0x1080038

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 252
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 255
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 258
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 262
    const/16 v7, 0xe

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 263
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    const/4 v4, 0x0

    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->l:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getId()I

    move-result v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 266
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 268
    const/16 v4, 0xb

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 269
    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    new-instance v4, Lcom/millennialmedia/android/VideoPlayerActivity$2;

    invoke-direct {v4, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$2;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->l:Landroid/widget/Button;

    new-instance v4, Lcom/millennialmedia/android/VideoPlayerActivity$3;

    invoke-direct {v4, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$3;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    new-instance v2, Lcom/millennialmedia/android/VideoPlayerActivity$4;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$4;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    return-void

    .line 248
    :cond_0
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->l:Landroid/widget/Button;

    const v5, 0x1080024

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mmsdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/millennialmedia/android/VideoPlayerActivity;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    :goto_0
    return v0

    .line 181
    :cond_0
    const-string v2, "VideoPlayerActivity"

    const-string v3, "Unrecognized mmsdk:// URI %s."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    .line 184
    goto :goto_0
.end method

.method static synthetic a(Lcom/millennialmedia/android/VideoPlayerActivity;Landroid/net/Uri;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/millennialmedia/android/VideoPlayerActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->q:Z

    return p1
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 443
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 444
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 448
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 449
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->k:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 452
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->k:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->l:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->l:Landroid/widget/Button;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 458
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->r()V

    .line 460
    :cond_2
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 189
    if-eqz p1, :cond_1

    const-string v0, "restartVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "endVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method private p()V
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->requestWindowFeature(I)Z

    .line 99
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 101
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 102
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->h:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    .line 168
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 509
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->n:Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->n:Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;->sendEmptyMessage(I)Z

    .line 512
    :cond_0
    return-void
.end method

.method private s()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 518
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 519
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 521
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 5
    .parameter

    .prologue
    .line 409
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->p:Z

    .line 410
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    const-string v1, "VideoPlayerActivity"

    const-string v2, "playVideo path: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    if-nez v1, :cond_1

    .line 417
    :cond_0
    const-string v0, "no name or null videoview"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->a(Ljava/lang/String;)V

    .line 430
    :goto_0
    return-void

    .line 419
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->f:Z

    .line 420
    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->q:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    if-eqz v1, :cond_2

    .line 421
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 424
    :cond_2
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    const-string v1, "VideoPlayerActivity"

    const-string v2, "playVideo error: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 634
    const-string v0, "currentVideoPosition"

    iget v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 635
    const-string v0, "isVideoCompleted"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 636
    const-string v0, "isVideoCompletedOnce"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 637
    const-string v0, "hasBottomBar"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 638
    const-string v0, "shouldSetUri"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 639
    const-string v0, "isUserPausing"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->p:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 640
    const-string v0, "isPaused"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->o:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 641
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->a(Landroid/os/Bundle;)V

    .line 642
    return-void
.end method

.method a(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    .line 485
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 487
    :pswitch_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 490
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->n:Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->n:Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v3, v1, v2}, Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 498
    :pswitch_1
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Landroid/widget/ImageButton;F)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 378
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 379
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 380
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 381
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 382
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 383
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 384
    return-void
.end method

.method protected a(Lcom/millennialmedia/android/VideoImage;)V
    .locals 2
    .parameter

    .prologue
    .line 394
    const-string v0, "VideoPlayerActivity"

    const-string v1, "Cached video button event logged"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/millennialmedia/android/VideoImage;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 396
    iget-object v1, p1, Lcom/millennialmedia/android/VideoImage;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->a(Ljava/lang/String;)V

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 434
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    const-string v1, "Sorry. There was a problem playing the video"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 437
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 439
    :cond_0
    return-void
.end method

.method protected b()Landroid/widget/RelativeLayout;
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v7, -0x2

    const/high16 v6, -0x100

    const/4 v5, -0x1

    .line 323
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 324
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 325
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 329
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->j:Landroid/widget/RelativeLayout;

    .line 330
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 331
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->j:Landroid/widget/RelativeLayout;

    const/16 v2, 0x19a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 332
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 335
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 338
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 339
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 340
    new-instance v3, Landroid/widget/VideoView;

    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v3, v4}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    .line 341
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    const/16 v4, 0x19b

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setId(I)V

    .line 342
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 343
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v3, v6}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 344
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->s()V

    .line 345
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->j:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->m:Landroid/view/View;

    .line 348
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->m:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 349
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 352
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->d:Z

    if-eqz v1, :cond_0

    .line 355
    const/4 v1, 0x2

    const v3, 0x4fe0613

    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 356
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->a(Landroid/widget/RelativeLayout;)V

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->m:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 360
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->k:Landroid/widget/ProgressBar;

    .line 361
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->k:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 362
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 364
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 365
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 367
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->k:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 368
    return-object v0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 647
    const-string v0, "currentVideoPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->e:I

    .line 649
    const-string v0, "isVideoCompleted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->f:Z

    .line 650
    const-string v0, "isVideoCompletedOnce"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->a:Z

    .line 652
    const-string v0, "hasBottomBar"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->d:Z

    .line 654
    const-string v0, "shouldSetUri"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->q:Z

    .line 656
    const-string v0, "isUserPausing"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->p:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->p:Z

    .line 658
    const-string v0, "isPaused"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->o:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->o:Z

    .line 659
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->b(Landroid/os/Bundle;)V

    .line 660
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->e:I

    .line 674
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 675
    const-string v0, "VideoPlayerActivity"

    const-string v1, "Video paused"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :cond_0
    return-void
.end method

.method protected c(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    const-string v0, "videoCompleted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->f:Z

    .line 108
    const-string v0, "videoCompletedOnce"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->a:Z

    .line 110
    const-string v0, "videoPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->e:I

    .line 111
    const-string v0, "hasBottomBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->d:Z

    .line 112
    const-string v0, "shouldSetUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->q:Z

    .line 114
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 556
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->d()V

    .line 557
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 558
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 559
    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->o:Z

    .line 560
    const-string v0, "VideoPlayerActivity"

    const-string v1, "VideoPlayer - onResume"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->p:Z

    if-nez v0, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->g()V

    .line 563
    :cond_0
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 196
    new-instance v0, Lcom/millennialmedia/android/VideoPlayerActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity$1;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 572
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->e()V

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->o:Z

    .line 574
    const-string v0, "VideoPlayerActivity"

    const-string v1, "VideoPlayer - onPause"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->c()V

    .line 576
    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 695
    if-nez p1, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    const-string v0, "VideoPlayerActivity"

    const-string v1, "Button Click with URL: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->h:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    iput-object p1, v0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->a:Ljava/lang/String;

    .line 699
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->h:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->b:Ljava/lang/ref/WeakReference;

    .line 701
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->h:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->isHandlingMMVideo(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->h:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/HttpRedirection;->a(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    goto :goto_0
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->e:I

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->a(I)V

    .line 691
    :cond_0
    return-void
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 212
    const-string v0, "VideoPlayerActivity"

    const-string v1, "Restart Video."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->a(I)V

    .line 216
    :cond_0
    return-void
.end method

.method protected i()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method protected j()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected l()V
    .locals 2

    .prologue
    .line 220
    const-string v0, "VideoPlayerActivity"

    const-string v1, "End Video."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->q:Z

    .line 223
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->m()V

    .line 225
    :cond_0
    return-void
.end method

.method protected m()V
    .locals 2

    .prologue
    .line 608
    const-string v0, "VideoPlayerActivity"

    const-string v1, "Video ad player closed"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 612
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    .line 614
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->finish()V

    .line 615
    return-void
.end method

.method protected n()V
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->p:Z

    .line 665
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->c()V

    .line 666
    return-void
.end method

.method protected o()Z
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->a:Z

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->f:Z

    .line 527
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->l:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->l:Landroid/widget/Button;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 530
    :cond_0
    const-string v0, "VideoPlayerActivity"

    const-string v1, "Video player on complete"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    const v0, 0x1030005

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->setTheme(I)V

    .line 83
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const-string v0, "VideoPlayerActivity"

    const-string v1, "Setting up the video player"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->p()V

    .line 88
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->c(Landroid/os/Bundle;)V

    .line 89
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->q()V

    .line 91
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->b()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 624
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onDestroy()V

    .line 625
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 598
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->a:Z

    if-nez v0, :cond_0

    .line 600
    const/4 v0, 0x1

    .line 602
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/MMBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 537
    const-string v0, "VideoPlayerActivity"

    const-string v1, "Video Prepared"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 581
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onWindowFocusChanged(Z)V

    .line 582
    iput-boolean p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->b:Z

    .line 583
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->o:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->p:Z

    if-nez v0, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->g()V

    .line 586
    :cond_0
    return-void
.end method
