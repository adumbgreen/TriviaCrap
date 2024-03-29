.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final ACCELERATE_INTERPOLATION_FACTOR:F = 1.5f

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field private static final LAYOUT_ATTRS:[I = null

.field private static final MAX_SWIPE_DISTANCE_FACTOR:F = 0.6f

.field private static final PROGRESS_BAR_HEIGHT:F = 4.0f

.field private static final REFRESH_TRIGGER_DISTANCE:I = 0x78

.field private static final RETURN_TO_ORIGINAL_POSITION_TIMEOUT:J = 0x12cL


# instance fields
.field private final mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private final mCancel:Ljava/lang/Runnable;

.field private mCurrPercentage:F

.field private mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mDistanceToTriggerSync:F

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mFrom:I

.field private mFromPercentage:F

.field private mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mOriginalOffsetTop:I

.field private mPrevY:F

.field private mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

.field private mProgressBarHeight:I

.field private mRefreshing:Z

.field private final mReturnToStartPosition:Ljava/lang/Runnable;

.field private final mReturnToStartPositionListener:Landroid/view/animation/Animation$AnimationListener;

.field private mReturningToStart:Z

.field private final mShrinkAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShrinkTrigger:Landroid/view/animation/Animation;

.field private mTarget:Landroid/view/View;

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 177
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 74
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    .line 77
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFromPercentage:F

    .line 78
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    .line 90
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 106
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mShrinkTrigger:Landroid/view/animation/Animation;

    .line 114
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturnToStartPositionListener:Landroid/view/animation/Animation$AnimationListener;

    .line 123
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$4;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mShrinkAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 130
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$5;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturnToStartPosition:Ljava/lang/Runnable;

    .line 142
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$6;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    .line 179
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    .line 181
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 184
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 185
    new-instance v0, Landroid/support/v4/widget/SwipeProgressBar;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeProgressBar;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    .line 186
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 187
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBarHeight:I

    .line 188
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 189
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 191
    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 192
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 193
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    return v0
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    return v0
.end method

.method static synthetic access$1000(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturnToStartPositionListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v4/widget/SwipeRefreshLayout;ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    return v0
.end method

.method static synthetic access$1300(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mShrinkTrigger:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mShrinkAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/DecelerateInterpolator;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SwipeRefreshLayout;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFromPercentage:F

    return v0
.end method

.method static synthetic access$402(Landroid/support/v4/widget/SwipeRefreshLayout;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFromPercentage:F

    return p1
.end method

.method static synthetic access$500(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return v0
.end method

.method static synthetic access$702(Landroid/support/v4/widget/SwipeRefreshLayout;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return p1
.end method

.method static synthetic access$800(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    return v0
.end method

.method static synthetic access$802(Landroid/support/v4/widget/SwipeRefreshLayout;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    return p1
.end method

.method static synthetic access$902(Landroid/support/v4/widget/SwipeRefreshLayout;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    return p1
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 211
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 212
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 213
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 214
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 215
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 216
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 217
    return-void
.end method

.method private ensureTarget()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_1

    .line 288
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SwipeRefreshLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 293
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 295
    :cond_1
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 296
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 297
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 298
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f19999a

    mul-float/2addr v0, v2

    const/high16 v2, 0x42f0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    .line 303
    :cond_2
    return-void
.end method

.method private setTargetOffsetTopAndBottom(I)V
    .locals 1
    .parameter

    .prologue
    .line 455
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 456
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 457
    return-void
.end method

.method private setTriggerPercentage(F)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 228
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    .line 231
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    .line 235
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeProgressBar;->setTriggerPercentage(F)V

    goto :goto_0
.end method

.method private startRefresh()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 439
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturnToStartPosition:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 440
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 441
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-interface {v0}, Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    .line 442
    return-void
.end method

.method private updateContentOffsetTop(I)V
    .locals 3
    .parameter

    .prologue
    .line 445
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 446
    int-to-float v1, p1

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 447
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    float-to-int p1, v1

    .line 451
    :cond_0
    :goto_0
    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 452
    return-void

    .line 448
    :cond_1
    if-gez p1, :cond_0

    .line 449
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private updatePositionTimeout()V
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 461
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 462
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_4

    .line 350
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 352
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_1

    :cond_0
    move v0, v1

    .line 359
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 352
    goto :goto_0

    .line 356
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 359
    :cond_4
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 308
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeProgressBar;->draw(Landroid/graphics/Canvas;)V

    .line 309
    return-void
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 199
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 200
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturnToStartPosition:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 206
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturnToStartPosition:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 207
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 208
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 365
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 367
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 368
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 370
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_1

    .line 371
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 373
    :cond_1
    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 313
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v0

    .line 314
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v1

    .line 315
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBarHeight:I

    invoke-virtual {v2, v4, v4, v0, v3}, Landroid/support/v4/widget/SwipeProgressBar;->setBounds(IIII)V

    .line 316
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 325
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 320
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    .line 321
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 322
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v0, v5

    .line 323
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v1, v5

    .line 324
    add-int/2addr v0, v3

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    .line 329
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 330
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SwipeRefreshLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 342
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 384
    const/4 v2, 0x0

    .line 385
    packed-switch v0, :pswitch_data_0

    .line 434
    :cond_0
    :goto_0
    return v2

    .line 387
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    .line 388
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDownEvent:Landroid/view/MotionEvent;

    .line 389
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mPrevY:F

    goto :goto_0

    .line 392
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v0, :cond_0

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 394
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float v0, v3, v0

    .line 395
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_4

    .line 397
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 399
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startRefresh()V

    move v2, v1

    .line 401
    goto :goto_0

    .line 404
    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    div-float v4, v0, v4

    invoke-virtual {v2, v4}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTriggerPercentage(F)V

    .line 408
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mPrevY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 409
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 411
    :cond_2
    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->updateContentOffsetTop(I)V

    .line 412
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mPrevY:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    if-ge v0, v2, :cond_3

    .line 416
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 420
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mPrevY:F

    move v0, v1

    :goto_2
    move v2, v0

    .line 424
    goto :goto_0

    .line 418
    :cond_3
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->updatePositionTimeout()V

    goto :goto_1

    .line 428
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDownEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter

    .prologue
    .line 379
    return-void
.end method

.method public setColorScheme(IIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 269
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 270
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 271
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 272
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 273
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 274
    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/support/v4/widget/SwipeProgressBar;->setColorScheme(IIII)V

    .line 275
    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 225
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_0

    .line 246
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    .line 248
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 249
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeProgressBar;->start()V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeProgressBar;->stop()V

    goto :goto_0
.end method
