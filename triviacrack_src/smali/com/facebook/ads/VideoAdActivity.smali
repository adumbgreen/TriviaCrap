.class public Lcom/facebook/ads/VideoAdActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final CONTROLS_FADE_DELAY:J = 0xbb8L

.field public static final MARKET_URI_INTENT_EXTRA:Ljava/lang/String; = "adMarketUri"

.field public static final URI_INTENT_EXTRA:Ljava/lang/String; = "adUri"

.field public static final VIDEO_PATH_INTENT_EXTRA:Ljava/lang/String; = "adVideoPath"


# instance fields
.field private mAllControls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mBufferingView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseButton:Landroid/widget/ImageButton;

.field private mCurrentPosition:I

.field private mEndControls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mFullPlayingControls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mGoToAppStore:Z

.field private mHandler:Landroid/os/Handler;

.field private mInstallButton:Landroid/widget/ImageButton;

.field private mIsMuted:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMinPlayingControls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mMuteButton:Landroid/widget/ImageButton;

.field private mPausedControls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mRootView:Landroid/view/View;

.field private mSkipButton:Landroid/widget/ImageButton;

.field private mState:Lcom/facebook/ads/VideoAdActivity$PlayerState;

.field private mTimeOfLastTouch:J

.field private mVideoView:Landroid/widget/VideoView;

.field private marketUri:Landroid/net/Uri;

.field private path:Ljava/lang/String;

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field private uniqueId:Ljava/lang/String;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    iput-boolean v1, p0, Lcom/facebook/ads/VideoAdActivity;->mIsMuted:Z

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/VideoAdActivity;->mCurrentPosition:I

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mHandler:Landroid/os/Handler;

    .line 72
    iput-boolean v1, p0, Lcom/facebook/ads/VideoAdActivity;->mGoToAppStore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/ads/VideoAdActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/ads/VideoAdActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/ads/VideoAdActivity;->updateVideoPlayerSize()V

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/ads/VideoAdActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/ads/VideoAdActivity;->videoPlay()V

    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/ads/VideoAdActivity;Lcom/facebook/ads/VideoAdActivity$PlayerState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/ads/VideoAdActivity;->setState(Lcom/facebook/ads/VideoAdActivity$PlayerState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/facebook/ads/VideoAdActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/ads/VideoAdActivity;->updateControlState()V

    return-void
.end method

.method static synthetic access$202(Lcom/facebook/ads/VideoAdActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/facebook/ads/VideoAdActivity;->mGoToAppStore:Z

    return p1
.end method

.method static synthetic access$300(Lcom/facebook/ads/VideoAdActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/ads/VideoAdActivity;->displayInterstitial()V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/ads/VideoAdActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/ads/VideoAdActivity;->videoMute()V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/ads/VideoAdActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/ads/VideoAdActivity;->pulseControlsFromTouch()V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/ads/VideoAdActivity;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/facebook/ads/VideoAdActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/ads/VideoAdActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/facebook/ads/VideoAdActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/facebook/ads/VideoAdActivity;->mIsMuted:Z

    return v0
.end method

.method static synthetic access$800(Lcom/facebook/ads/VideoAdActivity;)Lcom/facebook/ads/VideoAdActivity$PlayerState;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mState:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/ads/VideoAdActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/facebook/ads/VideoAdActivity;->mCurrentPosition:I

    return v0
.end method

.method private activateControlSet(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mAllControls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 379
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 382
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 385
    :cond_1
    return-void
.end method

.method private bindModel()V
    .locals 3

    .prologue
    .line 318
    sget-object v0, Lcom/facebook/ads/VideoAdActivity$PlayerState;->UNINITIALIZED:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    invoke-direct {p0, v0}, Lcom/facebook/ads/VideoAdActivity;->setState(Lcom/facebook/ads/VideoAdActivity$PlayerState;)V

    .line 319
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mInstallButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/facebook/ads/VideoAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 320
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mSkipButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/facebook/ads/VideoAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 321
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/facebook/ads/VideoAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 322
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/facebook/ads/VideoAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 323
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method private configureLayout()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 342
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mInstallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 343
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mSkipButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 344
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 345
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 346
    return-void
.end method

.method private configureViews()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    new-array v0, v6, [Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mInstallButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mMuteButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mCloseButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mSkipButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mAllControls:Ljava/util/List;

    .line 180
    new-array v0, v6, [Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mInstallButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mMuteButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mCloseButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mSkipButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mFullPlayingControls:Ljava/util/List;

    .line 185
    new-array v0, v5, [Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mCloseButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mInstallButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mSkipButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mMinPlayingControls:Ljava/util/List;

    .line 189
    new-array v0, v6, [Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mInstallButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mMuteButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mCloseButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mSkipButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mPausedControls:Ljava/util/List;

    .line 194
    new-array v0, v6, [Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mInstallButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mMuteButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mCloseButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mSkipButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mEndControls:Ljava/util/List;

    .line 199
    new-array v0, v5, [Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mInstallButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mCloseButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mSkipButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mBufferingView:Ljava/util/List;

    .line 203
    new-instance v0, Lcom/facebook/ads/VideoAdActivity$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/VideoAdActivity$2;-><init>(Lcom/facebook/ads/VideoAdActivity;)V

    .line 216
    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mInstallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mSkipButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mInstallButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/facebook/ads/VideoAdActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/ads/VideoAdActivity$3;-><init>(Lcom/facebook/ads/VideoAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mSkipButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/facebook/ads/VideoAdActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/ads/VideoAdActivity$4;-><init>(Lcom/facebook/ads/VideoAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mMuteButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/facebook/ads/VideoAdActivity$5;

    invoke-direct {v1, p0}, Lcom/facebook/ads/VideoAdActivity$5;-><init>(Lcom/facebook/ads/VideoAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/facebook/ads/VideoAdActivity$6;

    invoke-direct {v1, p0}, Lcom/facebook/ads/VideoAdActivity$6;-><init>(Lcom/facebook/ads/VideoAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/facebook/ads/VideoAdActivity$7;

    invoke-direct {v1, p0}, Lcom/facebook/ads/VideoAdActivity$7;-><init>(Lcom/facebook/ads/VideoAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 258
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/facebook/ads/VideoAdActivity$8;

    invoke-direct {v1, p0}, Lcom/facebook/ads/VideoAdActivity$8;-><init>(Lcom/facebook/ads/VideoAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 283
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/facebook/ads/VideoAdActivity$9;

    invoke-direct {v1, p0}, Lcom/facebook/ads/VideoAdActivity$9;-><init>(Lcom/facebook/ads/VideoAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 291
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/facebook/ads/VideoAdActivity$10;

    invoke-direct {v1, p0}, Lcom/facebook/ads/VideoAdActivity$10;-><init>(Lcom/facebook/ads/VideoAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 298
    return-void
.end method

.method private displayInterstitial()V
    .locals 4

    .prologue
    .line 301
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/facebook/ads/InterstitialAdActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/facebook/ads/VideoAdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 304
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 305
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 306
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 307
    const-string v3, "displayRotation"

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string v0, "displayWidth"

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const-string v0, "displayHeight"

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    const-string v0, "adInterstitialUniqueId"

    iget-object v2, p0, Lcom/facebook/ads/VideoAdActivity;->uniqueId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0}, Lcom/facebook/ads/VideoAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/HtmlAdDataModel;->fromIntentExtra(Landroid/content/Intent;)Lcom/facebook/ads/internal/HtmlAdDataModel;

    move-result-object v0

    .line 312
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/HtmlAdDataModel;->addToIntentExtra(Landroid/content/Intent;)V

    .line 313
    invoke-virtual {p0, v1}, Lcom/facebook/ads/VideoAdActivity;->startActivity(Landroid/content/Intent;)V

    .line 314
    invoke-virtual {p0}, Lcom/facebook/ads/VideoAdActivity;->finish()V

    .line 315
    return-void
.end method

.method private getIntentExtras()V
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/facebook/ads/VideoAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 169
    const-string v1, "adUri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->uri:Landroid/net/Uri;

    .line 170
    const-string v1, "adMarketUri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->marketUri:Landroid/net/Uri;

    .line 171
    const-string v1, "adVideoPath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->path:Ljava/lang/String;

    .line 172
    const-string v1, "adInterstitialUniqueId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->uniqueId:Ljava/lang/String;

    .line 173
    return-void
.end method

.method private pulseControlsFromTouch()V
    .locals 4

    .prologue
    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/VideoAdActivity;->mTimeOfLastTouch:J

    .line 366
    invoke-direct {p0}, Lcom/facebook/ads/VideoAdActivity;->updateControlState()V

    .line 368
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/VideoAdActivity$11;

    invoke-direct {v1, p0}, Lcom/facebook/ads/VideoAdActivity$11;-><init>(Lcom/facebook/ads/VideoAdActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    return-void
.end method

.method private setButtonPosition()V
    .locals 4

    .prologue
    const/high16 v3, 0x44af

    const/high16 v2, 0x3fc0

    .line 327
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mInstallButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x4387

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setX(F)V

    .line 328
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mInstallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setY(F)V

    .line 329
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mSkipButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x442f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setX(F)V

    .line 330
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mSkipButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setY(F)V

    .line 331
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mMuteButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setX(F)V

    .line 332
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mMuteButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x4491

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setY(F)V

    .line 333
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mCloseButton:Landroid/widget/ImageButton;

    const v1, 0x44728000

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setX(F)V

    .line 334
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mInstallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setScaleX(F)V

    .line 335
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mInstallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setScaleY(F)V

    .line 336
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mSkipButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setScaleX(F)V

    .line 337
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mSkipButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setScaleY(F)V

    .line 338
    return-void
.end method

.method private setState(Lcom/facebook/ads/VideoAdActivity$PlayerState;)V
    .locals 1
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mState:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    if-eq p1, v0, :cond_0

    .line 425
    iput-object p1, p0, Lcom/facebook/ads/VideoAdActivity;->mState:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    .line 426
    invoke-direct {p0}, Lcom/facebook/ads/VideoAdActivity;->pulseControlsFromTouch()V

    .line 428
    :cond_0
    return-void
.end method

.method private updateControlState()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f00

    const/high16 v3, 0x3f80

    .line 388
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mInstallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 389
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mSkipButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 390
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 391
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->setAlpha(F)V

    .line 393
    sget-object v0, Lcom/facebook/ads/VideoAdActivity$12;->$SwitchMap$com$facebook$ads$VideoAdActivity$PlayerState:[I

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mState:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    invoke-virtual {v1}, Lcom/facebook/ads/VideoAdActivity$PlayerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 421
    :goto_0
    return-void

    .line 395
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/ads/VideoAdActivity;->mTimeOfLastTouch:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mMinPlayingControls:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/facebook/ads/VideoAdActivity;->activateControlSet(Ljava/util/List;)V

    .line 397
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mInstallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 398
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mSkipButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 399
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mFullPlayingControls:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/facebook/ads/VideoAdActivity;->activateControlSet(Ljava/util/List;)V

    goto :goto_0

    .line 405
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mPausedControls:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/facebook/ads/VideoAdActivity;->activateControlSet(Ljava/util/List;)V

    goto :goto_0

    .line 408
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mBufferingView:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/facebook/ads/VideoAdActivity;->activateControlSet(Ljava/util/List;)V

    goto :goto_0

    .line 411
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mBufferingView:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/facebook/ads/VideoAdActivity;->activateControlSet(Ljava/util/List;)V

    goto :goto_0

    .line 414
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mEndControls:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/facebook/ads/VideoAdActivity;->activateControlSet(Ljava/util/List;)V

    .line 415
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f40

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 416
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->setAlpha(F)V

    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateVideoPlayerSize()V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/facebook/ads/VideoAdActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 355
    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 356
    iget-object v2, p0, Lcom/facebook/ads/VideoAdActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 358
    iget-object v2, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 359
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestLayout()V

    .line 360
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->invalidate()V

    .line 362
    :cond_0
    return-void
.end method

.method private videoBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 431
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/VideoAdActivity;->mCurrentPosition:I

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 435
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 436
    iput-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 437
    return-void
.end method

.method private videoMute()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 452
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mState:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    sget-object v1, Lcom/facebook/ads/VideoAdActivity$PlayerState;->UNINITIALIZED:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    if-eq v0, v1, :cond_0

    .line 453
    iget-boolean v0, p0, Lcom/facebook/ads/VideoAdActivity;->mIsMuted:Z

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 455
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/facebook/ads/VideoAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 461
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/VideoAdActivity;->mIsMuted:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/VideoAdActivity;->mIsMuted:Z

    .line 463
    :cond_0
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 458
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/facebook/ads/VideoAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 461
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private videoPlay()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mState:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    sget-object v1, Lcom/facebook/ads/VideoAdActivity$PlayerState;->UNINITIALIZED:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mState:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    sget-object v1, Lcom/facebook/ads/VideoAdActivity$PlayerState;->PLAYING:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    if-eq v0, v1, :cond_1

    .line 441
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mState:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    sget-object v1, Lcom/facebook/ads/VideoAdActivity$PlayerState;->COMPLETED:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    if-ne v0, v1, :cond_0

    .line 442
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 446
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/VideoAdActivity;->mCurrentPosition:I

    .line 447
    sget-object v0, Lcom/facebook/ads/VideoAdActivity$PlayerState;->PLAYING:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    invoke-direct {p0, v0}, Lcom/facebook/ads/VideoAdActivity;->setState(Lcom/facebook/ads/VideoAdActivity$PlayerState;)V

    .line 449
    :cond_1
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 123
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/facebook/ads/VideoAdActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/VideoAdActivity$1;-><init>(Lcom/facebook/ads/VideoAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 132
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x400

    const/4 v1, -0x1

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/VideoAdActivity;->requestWindowFeature(I)Z

    .line 91
    invoke-virtual {p0}, Lcom/facebook/ads/VideoAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 93
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 95
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 100
    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/VideoAdActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v1, Landroid/widget/VideoView;

    invoke-direct {v1, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    .line 103
    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 106
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mRootView:Landroid/view/View;

    .line 107
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mInstallButton:Landroid/widget/ImageButton;

    .line 108
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mSkipButton:Landroid/widget/ImageButton;

    .line 109
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mMuteButton:Landroid/widget/ImageButton;

    .line 110
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mCloseButton:Landroid/widget/ImageButton;

    .line 112
    invoke-direct {p0}, Lcom/facebook/ads/VideoAdActivity;->getIntentExtras()V

    .line 113
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/VideoAdActivity;->setVolumeControlStream(I)V

    .line 114
    invoke-direct {p0}, Lcom/facebook/ads/VideoAdActivity;->configureViews()V

    .line 115
    invoke-direct {p0}, Lcom/facebook/ads/VideoAdActivity;->bindModel()V

    .line 116
    invoke-direct {p0}, Lcom/facebook/ads/VideoAdActivity;->setButtonPosition()V

    .line 117
    invoke-direct {p0}, Lcom/facebook/ads/VideoAdActivity;->configureLayout()V

    .line 118
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 161
    iget-boolean v0, p0, Lcom/facebook/ads/VideoAdActivity;->mGoToAppStore:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->uri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/action/AdActionFactory;->getAdAction(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/ads/internal/action/AdAction;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/action/AppAdAction;

    .line 163
    invoke-virtual {v0}, Lcom/facebook/ads/internal/action/AppAdAction;->goToMarketURL()V

    .line 165
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 137
    invoke-direct {p0}, Lcom/facebook/ads/VideoAdActivity;->videoBackground()V

    .line 138
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 144
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mState:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    sget-object v1, Lcom/facebook/ads/VideoAdActivity$PlayerState;->PLAYING:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/facebook/ads/VideoAdActivity;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 146
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/VideoAdActivity;->pulseControlsFromTouch()V

    .line 150
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 155
    invoke-direct {p0}, Lcom/facebook/ads/VideoAdActivity;->videoBackground()V

    .line 156
    return-void
.end method
