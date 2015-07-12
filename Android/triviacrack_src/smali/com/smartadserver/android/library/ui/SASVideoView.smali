.class public Lcom/smartadserver/android/library/ui/SASVideoView;
.super Landroid/widget/VideoView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Landroid/media/AudioManager;

.field private e:I

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smartadserver/android/library/ui/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 28
    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->a:I

    .line 29
    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->b:I

    .line 30
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->c:Z

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    .line 44
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->e()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->a:I

    .line 29
    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->b:I

    .line 30
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->c:Z

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    .line 49
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->e()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->a:I

    .line 29
    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->b:I

    .line 30
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->c:Z

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    .line 54
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->e()V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASVideoView;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->b:I

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/widget/ImageView;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x40c0

    .line 216
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 217
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 218
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 221
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4020

    div-float/2addr v1, v2

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v1, v5

    .line 229
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 230
    invoke-virtual {v5, p3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 231
    invoke-virtual {v5, p2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 234
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 237
    return-object v0
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/SASVideoView;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->a:I

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->d:Landroid/media/AudioManager;

    .line 59
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 211
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/widget/ImageView;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    sget-object v0, Lcom/smartadserver/android/library/g/a;->c:Landroid/graphics/Bitmap;

    const/16 v1, 0x9

    const/16 v2, 0xc

    invoke-static {p1, v0, v1, v2}, Lcom/smartadserver/android/library/ui/SASVideoView;->a(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/widget/ImageView;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 145
    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/ProgressBar;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 123
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 126
    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->getCurrentVolume()I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    .line 87
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->d:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 88
    return-void
.end method

.method public a(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iput p4, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->a:I

    .line 65
    iput p3, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->b:I

    .line 67
    new-instance v0, Lcom/smartadserver/android/library/ui/SASVideoView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/smartadserver/android/library/ui/SASVideoView$1;-><init>(Lcom/smartadserver/android/library/ui/SASVideoView;II)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/widget/ImageView;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0xb

    .line 149
    .line 151
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->getCurrentVolume()I

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/smartadserver/android/library/g/a;->e:Landroid/graphics/Bitmap;

    invoke-static {p1, v0, v1, v2}, Lcom/smartadserver/android/library/ui/SASVideoView;->a(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/widget/ImageView;

    move-result-object v0

    .line 158
    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    return-object v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->a()V

    .line 155
    sget-object v0, Lcom/smartadserver/android/library/g/a;->f:Landroid/graphics/Bitmap;

    invoke-static {p1, v0, v1, v2}, Lcom/smartadserver/android/library/ui/SASVideoView;->a(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/widget/ImageView;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 107
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x5

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->d:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    .line 112
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->c:Z

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->c:Z

    .line 196
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->stopPlayback()V

    .line 197
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->f()V

    .line 198
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASVideoView;->b()V

    goto :goto_0
.end method

.method public getCurrentVolume()I
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->d:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public getOnVideoViewVisibilityChangedListener()Lcom/smartadserver/android/library/ui/f;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/f;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->setOnVideoViewVisibilityChangedListener(Lcom/smartadserver/android/library/ui/f;)V

    .line 183
    invoke-super {p0}, Landroid/widget/VideoView;->onDetachedFromWindow()V

    .line 184
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->b:I

    iget v1, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/ui/SASVideoView;->setMeasuredDimension(II)V

    .line 82
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onWindowVisibilityChanged(I)V

    .line 172
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/f;

    .line 174
    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/f;->a(I)V

    .line 178
    :cond_0
    return-void
.end method

.method public setMutedVolume(I)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput p1, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->e:I

    .line 120
    return-void
.end method

.method public setOnVideoViewVisibilityChangedListener(Lcom/smartadserver/android/library/ui/f;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView;->f:Ljava/lang/ref/WeakReference;

    .line 92
    return-void
.end method
