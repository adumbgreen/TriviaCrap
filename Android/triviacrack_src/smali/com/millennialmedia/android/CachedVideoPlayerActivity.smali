.class Lcom/millennialmedia/android/CachedVideoPlayerActivity;
.super Lcom/millennialmedia/android/VideoPlayerActivity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field a:Z

.field b:Z

.field private q:Landroid/os/Handler;

.field private r:Lcom/millennialmedia/android/VideoAd;

.field private s:Lcom/millennialmedia/android/MMWebView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/RelativeLayout;

.field private w:I

.field private x:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->x:Z

    .line 796
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)Lcom/millennialmedia/android/MMWebView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    return-object v0
.end method

.method private a(J)V
    .locals 2
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    new-instance v1, Lcom/millennialmedia/android/CachedVideoPlayerActivity$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$1;-><init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 678
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->u:Landroid/widget/TextView;

    .line 679
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->u:Landroid/widget/TextView;

    const-string v1, " seconds remaining ..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->u:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 681
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->u:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 682
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->u:Landroid/widget/TextView;

    const/16 v1, 0x192

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 683
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->u:Landroid/widget/TextView;

    const/high16 v1, 0x3f80

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 685
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 688
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 689
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 690
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/CachedVideoPlayerActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->f(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 695
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->t:Landroid/widget/TextView;

    .line 696
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->t:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->t:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 698
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->t:Landroid/widget/TextView;

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 699
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->t:Landroid/widget/TextView;

    const/high16 v1, 0x3f80

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 701
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 704
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 705
    const/4 v1, 0x0

    const/16 v2, 0x192

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 706
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    return-void
.end method

.method private b(Lcom/millennialmedia/android/VideoImage;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 506
    .line 507
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v1, p1, Lcom/millennialmedia/android/VideoImage;->p:F

    iget v2, p1, Lcom/millennialmedia/android/VideoImage;->q:F

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 509
    iget-wide v1, p1, Lcom/millennialmedia/android/VideoImage;->r:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 510
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 511
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 512
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 513
    iget-object v1, p1, Lcom/millennialmedia/android/VideoImage;->t:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 514
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a(I)V

    .line 395
    :cond_0
    return-void
.end method

.method private p()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    move v2, v3

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    .line 206
    iget-boolean v1, v0, Lcom/millennialmedia/android/VideoImage;->s:Z

    if-nez v1, :cond_0

    .line 207
    iget-object v1, v0, Lcom/millennialmedia/android/VideoImage;->t:Landroid/widget/ImageButton;

    iget v4, v0, Lcom/millennialmedia/android/VideoImage;->p:F

    invoke-virtual {p0, v1, v4}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a(Landroid/widget/ImageButton;F)V

    .line 208
    :cond_0
    iget-object v1, v0, Lcom/millennialmedia/android/VideoImage;->t:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->v:Landroid/widget/RelativeLayout;

    iget-object v4, v0, Lcom/millennialmedia/android/VideoImage;->t:Landroid/widget/ImageButton;

    iget-object v5, v0, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    move v4, v3

    .line 211
    :goto_1
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_2

    .line 212
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->v:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/VideoImage;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoImage;->t:Landroid/widget/ImageButton;

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 211
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 214
    :cond_2
    const-string v1, "CachedVideoPlayerActivity"

    const-string v4, "Button: %d alpha: %f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x1

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->p:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 217
    :cond_3
    return-void
.end method

.method private q()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 399
    new-instance v0, Lcom/millennialmedia/android/MMWebView;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    iget-wide v2, v2, Lcom/millennialmedia/android/MMActivity;->a:J

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMWebView;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    .line 400
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    const/16 v1, 0x19d

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->setId(I)V

    .line 402
    new-instance v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$CachedVideoWebViewClientListener;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$CachedVideoWebViewClientListener;-><init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)V

    .line 404
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    new-instance v2, Lcom/millennialmedia/android/InterstitialWebViewClient;

    iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->h:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    invoke-direct {v2, v0, v3}, Lcom/millennialmedia/android/InterstitialWebViewClient;-><init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 406
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 409
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 410
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->setBackgroundColor(I)V

    .line 413
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->c(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method private r()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 670
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-wide v1, v1, Lcom/millennialmedia/android/VideoAd;->q:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 674
    return-void
.end method

.method private s()Ljava/lang/String;
    .locals 4

    .prologue
    .line 711
    iget v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->e:I

    if-eqz v0, :cond_0

    .line 712
    iget v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->e:I

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 716
    :goto_0
    return-object v0

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->q:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 716
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private t()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 721
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 725
    :cond_1
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 183
    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->a()V

    .line 184
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->m:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->f:Z

    if-ne v0, v1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->p()V

    .line 188
    :cond_0
    return-void
.end method

.method protected a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 587
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    if-nez v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    const-string v1, "Sorry. There was a problem playing the video"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 601
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 600
    :cond_1
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->a(I)V

    goto :goto_0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 118
    const-string v0, "videoAd"

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->a(Landroid/os/Bundle;)V

    .line 120
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/HttpGetRequest;->a([Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.cachedVideo.setError("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 112
    :cond_1
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->a(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method protected b()Landroid/widget/RelativeLayout;
    .locals 12

    .prologue
    .line 222
    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->b()Landroid/widget/RelativeLayout;

    move-result-object v4

    .line 225
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->setRequestedOrientation(I)V

    .line 228
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->x:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0, v4}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a(Landroid/view/ViewGroup;)V

    .line 230
    invoke-direct {p0, v4}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->b(Landroid/view/ViewGroup;)V

    .line 231
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r()V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 235
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q()V

    .line 236
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a:Z

    .line 363
    :cond_1
    :goto_0
    return-object v4

    .line 241
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a:Z

    .line 242
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->v:Landroid/widget/RelativeLayout;

    .line 243
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->v:Landroid/widget/RelativeLayout;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 245
    const/4 v0, 0x0

    .line 246
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    if-eqz v1, :cond_b

    .line 247
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    move-object v3, v0

    .line 249
    :goto_1
    if-eqz v3, :cond_9

    .line 250
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/AdCache;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 252
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 254
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    .line 257
    new-instance v6, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v6, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/millennialmedia/android/VideoImage;->t:Landroid/widget/ImageButton;

    .line 259
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v7}, Lcom/millennialmedia/android/VideoAd;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v0, Lcom/millennialmedia/android/VideoImage;->a:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\.[^\\.]*$"

    const-string v9, ".dat"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 265
    if-eqz v2, :cond_5

    .line 266
    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_3
    iget v2, v0, Lcom/millennialmedia/android/VideoImage;->p:F

    invoke-virtual {p0, v6, v2}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a(Landroid/widget/ImageButton;F)V

    .line 284
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 285
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 287
    iget-boolean v2, v0, Lcom/millennialmedia/android/VideoImage;->s:Z

    if-eqz v2, :cond_6

    .line 288
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 289
    const/high16 v2, -0x100

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 290
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 310
    :goto_4
    iget-object v7, v0, Lcom/millennialmedia/android/VideoImage;->d:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 311
    new-instance v7, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;

    invoke-direct {v7, p0, v6, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;-><init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;Landroid/widget/ImageButton;Lcom/millennialmedia/android/VideoImage;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    :cond_3
    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->n:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_7

    .line 328
    iput-object v2, v0, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/RelativeLayout$LayoutParams;

    .line 329
    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-static {v2, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 332
    iget-object v6, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->n:J

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 339
    :goto_5
    iget-wide v6, v0, Lcom/millennialmedia/android/VideoImage;->o:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_4

    .line 340
    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-static {v2, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 344
    iget-object v6, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->o:J

    iget-wide v9, v0, Lcom/millennialmedia/android/VideoImage;->n:J

    add-long/2addr v7, v9

    iget-wide v9, v0, Lcom/millennialmedia/android/VideoImage;->r:J

    add-long/2addr v7, v9

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 252
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    .line 271
    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v7}, Lcom/millennialmedia/android/VideoAd;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v0, Lcom/millennialmedia/android/VideoImage;->a:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\.[^\\.]*$"

    const-string v9, ".dat"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 278
    :catch_0
    move-exception v2

    .line 279
    const-string v7, "CachedVideoPlayerActivity"

    const-string v8, "Problem creating layout with bitmap buttons: "

    invoke-static {v7, v8, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 294
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 295
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 298
    const-string v7, "CachedVideoPlayerActivity"

    const-string v8, "Button: %d Anchor: %d Position: %d Anchor2: %d Position2: %d"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, v0, Lcom/millennialmedia/android/VideoImage;->k:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget v11, v0, Lcom/millennialmedia/android/VideoImage;->j:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget v11, v0, Lcom/millennialmedia/android/VideoImage;->m:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget v11, v0, Lcom/millennialmedia/android/VideoImage;->l:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget v7, v0, Lcom/millennialmedia/android/VideoImage;->j:I

    iget v8, v0, Lcom/millennialmedia/android/VideoImage;->k:I

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 304
    iget v7, v0, Lcom/millennialmedia/android/VideoImage;->l:I

    iget v8, v0, Lcom/millennialmedia/android/VideoImage;->m:I

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 305
    iget v7, v0, Lcom/millennialmedia/android/VideoImage;->h:I

    iget v8, v0, Lcom/millennialmedia/android/VideoImage;->f:I

    iget v9, v0, Lcom/millennialmedia/android/VideoImage;->i:I

    iget v10, v0, Lcom/millennialmedia/android/VideoImage;->g:I

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4

    .line 335
    :cond_7
    iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 353
    :cond_8
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->v:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    :cond_9
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->v:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_a

    .line 358
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 360
    :cond_a
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_b
    move-object v3, v0

    goto/16 :goto_1
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    const-string v0, "videoAd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    .line 126
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->b(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->e(Ljava/lang/String;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->g()V

    .line 136
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->m:Z

    if-nez v0, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->m()V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 140
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->p()V

    .line 142
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->m()V

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 149
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->c(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->bringToFront()V

    .line 154
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 155
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->s:J

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a(J)V

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 151
    :cond_6
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a:Z

    if-eqz v0, :cond_4

    .line 152
    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->m()V

    goto :goto_1
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 519
    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->c()V

    .line 520
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 522
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    return-void
.end method

.method protected c(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->c(Landroid/os/Bundle;)V

    .line 65
    if-nez p1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "videoId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-static {v1, v0}, Lcom/millennialmedia/android/AdCache;->i(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    .line 69
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->g:Z

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->d:Z

    .line 71
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->n:Z

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->x:Z

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string v0, "videoAd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    .line 75
    const-string v0, "shouldShowBottomBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->d:Z

    .line 76
    const-string v0, "lastVideoPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->w:I

    .line 77
    const-string v0, "currentVideoPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->e:I

    .line 79
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->n:Z

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->x:Z

    goto :goto_0
.end method

.method c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 418
    new-instance v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;-><init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;Ljava/lang/String;)V

    .line 419
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 420
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->d()V

    .line 194
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->bringToFront()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->v:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 199
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 750
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_4

    .line 751
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 755
    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a:Z

    if-nez v0, :cond_4

    .line 756
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 757
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    .line 758
    iget-object v2, v0, Lcom/millennialmedia/android/VideoImage;->t:Landroid/widget/ImageButton;

    iget v3, v0, Lcom/millennialmedia/android/VideoImage;->p:F

    invoke-virtual {p0, v2, v3}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a(Landroid/widget/ImageButton;F)V

    .line 759
    iget-wide v2, v0, Lcom/millennialmedia/android/VideoImage;->o:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 761
    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    invoke-static {v2, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 765
    iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    iget-wide v4, v0, Lcom/millennialmedia/android/VideoImage;->o:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 756
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 769
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 770
    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 771
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    iget v3, v0, Lcom/millennialmedia/android/VideoImage;->p:F

    iget v4, v0, Lcom/millennialmedia/android/VideoImage;->q:F

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 773
    iget-wide v3, v0, Lcom/millennialmedia/android/VideoImage;->r:J

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 774
    invoke-virtual {v2, v6}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 775
    invoke-virtual {v2, v6}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 776
    invoke-virtual {v2, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 777
    iget-object v0, v0, Lcom/millennialmedia/android/VideoImage;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 779
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 780
    iget-object v2, v0, Lcom/millennialmedia/android/VideoImage;->t:Landroid/widget/ImageButton;

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->p:F

    invoke-virtual {p0, v2, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a(Landroid/widget/ImageButton;F)V

    goto :goto_1

    .line 787
    :cond_4
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected g()V
    .locals 10

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v2, 0x2

    const-wide/16 v4, 0x0

    .line 531
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_5

    .line 532
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 537
    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a:Z

    if-nez v0, :cond_5

    .line 538
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->x:Z

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->q:J

    iget v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->e:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v6

    .line 540
    cmp-long v2, v0, v4

    if-lez v2, :cond_4

    .line 541
    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->t:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 542
    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->t:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 548
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 549
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    .line 552
    iget-wide v2, v0, Lcom/millennialmedia/android/VideoImage;->n:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->v:Landroid/widget/RelativeLayout;

    iget-object v3, v0, Lcom/millennialmedia/android/VideoImage;->t:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    .line 554
    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 558
    iget-wide v2, v0, Lcom/millennialmedia/android/VideoImage;->n:J

    iget v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->e:I

    int-to-long v7, v7

    sub-long/2addr v2, v7

    .line 560
    cmp-long v7, v2, v4

    if-gez v7, :cond_2

    .line 561
    const-wide/16 v2, 0x1f4

    .line 562
    :cond_2
    iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    invoke-virtual {v7, v6, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 566
    :goto_2
    iget-wide v6, v0, Lcom/millennialmedia/android/VideoImage;->o:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_3

    .line 567
    iget-object v6, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-static {v6, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 572
    iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    iget-wide v8, v0, Lcom/millennialmedia/android/VideoImage;->o:J

    add-long/2addr v2, v8

    iget-wide v8, v0, Lcom/millennialmedia/android/VideoImage;->r:J

    add-long/2addr v2, v8

    invoke-virtual {v7, v6, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 548
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 544
    :cond_4
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->t()V

    goto :goto_0

    .line 581
    :cond_5
    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->g()V

    .line 582
    return-void

    :cond_6
    move-wide v2, v4

    goto :goto_2
.end method

.method protected h()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 606
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    if-eqz v1, :cond_6

    .line 607
    iget-boolean v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->b:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v1, v1, Lcom/millennialmedia/android/VideoAd;->w:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoAd;->j:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    if-eqz v1, :cond_1

    .line 609
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoAd;->j:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->c(Ljava/lang/String;)V

    .line 610
    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->b:Z

    .line 612
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v2, v1, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    .line 615
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 617
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 619
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    iput v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->w:I

    .line 624
    iget-boolean v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->v:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    move v1, v0

    .line 625
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 626
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    .line 628
    if-eqz v0, :cond_3

    .line 629
    iget-wide v3, v0, Lcom/millennialmedia/android/VideoImage;->n:J

    cmp-long v3, v3, v12

    if-lez v3, :cond_2

    .line 630
    iget-object v3, v0, Lcom/millennialmedia/android/VideoImage;->t:Landroid/widget/ImageButton;

    .line 631
    iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 632
    iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    invoke-static {v3, v11, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 636
    iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    iget-wide v5, v0, Lcom/millennialmedia/android/VideoImage;->n:J

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 641
    :cond_2
    iget-wide v3, v0, Lcom/millennialmedia/android/VideoImage;->o:J

    cmp-long v3, v3, v12

    if-lez v3, :cond_3

    .line 642
    iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    invoke-static {v3, v9, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 647
    iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    iget-wide v5, v0, Lcom/millennialmedia/android/VideoImage;->o:J

    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->n:J

    add-long/2addr v5, v7

    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->r:J

    add-long/2addr v5, v7

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 625
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 657
    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 658
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    invoke-static {v1, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 662
    :cond_5
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->x:Z

    if-eqz v0, :cond_6

    .line 663
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r()V

    .line 665
    :cond_6
    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->h()V

    .line 666
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 426
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 501
    :cond_0
    :goto_0
    return v9

    .line 428
    :pswitch_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->b(Lcom/millennialmedia/android/VideoImage;)V

    goto :goto_0

    .line 433
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    .line 435
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->v:Landroid/widget/RelativeLayout;

    iget-object v3, v0, Lcom/millennialmedia/android/VideoImage;->t:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 436
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->v:Landroid/widget/RelativeLayout;

    iget-object v3, v0, Lcom/millennialmedia/android/VideoImage;->t:Landroid/widget/ImageButton;

    iget-object v4, v0, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->b(Lcom/millennialmedia/android/VideoImage;)V

    .line 443
    const-string v1, "CachedVideoPlayerActivity"

    const-string v3, "Beginning animation to visibility. Fade duration: %d Button: %d Time: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, v0, Lcom/millennialmedia/android/VideoImage;->r:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v0, v0, Lcom/millennialmedia/android/VideoImage;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :catch_0
    move-exception v1

    .line 438
    const-string v3, "CachedVideoPlayerActivity"

    const-string v4, "Problem adding buttons"

    invoke-static {v3, v4, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 450
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 451
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v4

    .line 454
    iget v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->w:I

    if-le v4, v0, :cond_5

    .line 455
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_4

    .line 456
    iget v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->w:I

    if-nez v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->f()V

    :cond_2
    move v3, v2

    .line 458
    :goto_2
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 459
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoLogEvent;

    .line 461
    if-eqz v0, :cond_3

    .line 462
    iget-wide v5, v0, Lcom/millennialmedia/android/VideoLogEvent;->a:J

    iget v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->w:I

    int-to-long v7, v1

    cmp-long v1, v5, v7

    if-ltz v1, :cond_3

    iget-wide v5, v0, Lcom/millennialmedia/android/VideoLogEvent;->a:J

    int-to-long v7, v4

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    move v1, v2

    .line 464
    :goto_3
    iget-object v5, v0, Lcom/millennialmedia/android/VideoLogEvent;->b:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 465
    iget-object v5, v0, Lcom/millennialmedia/android/VideoLogEvent;->b:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v5}, Lcom/millennialmedia/android/MMSDK$Event;->a(Ljava/lang/String;)V

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 458
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 472
    :cond_4
    iput v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->w:I

    .line 474
    :cond_5
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_6

    .line 475
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->s:Lcom/millennialmedia/android/MMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.cachedVideo.updateVideoSeekTime("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, v4

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 481
    :cond_6
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->x:Z

    if-eqz v0, :cond_7

    .line 482
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->q:J

    int-to-long v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 483
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_8

    .line 484
    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->t:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    .line 485
    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->t:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->q:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 495
    :catch_1
    move-exception v0

    .line 496
    const-string v1, "CachedVideoPlayerActivity"

    const-string v2, "Error with video check"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 487
    :cond_8
    :try_start_2
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->t()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 426
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected i()V
    .locals 3

    .prologue
    .line 730
    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->i()V

    .line 731
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a:Z

    if-nez v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 739
    :cond_0
    return-void

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    .line 735
    iget-object v2, v0, Lcom/millennialmedia/android/VideoImage;->t:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    .line 736
    iget-object v0, v0, Lcom/millennialmedia/android/VideoImage;->t:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected j()Z
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->m:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 87
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->x:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->t()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->r:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->b(Ljava/lang/String;)V

    .line 92
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const-string v0, "CachedVideoPlayerActivity"

    const-string v1, "Is Cached Ad"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    const-string v0, "Error while playing, %d - %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a(Ljava/lang/String;)V

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/millennialmedia/android/VideoPlayerActivity;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    return v0
.end method
