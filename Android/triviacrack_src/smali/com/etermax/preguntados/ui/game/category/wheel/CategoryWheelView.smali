.class public Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Landroid/view/animation/RotateAnimation;

.field private d:I

.field private e:Lcom/etermax/preguntados/ui/game/category/wheel/b;

.field private f:I

.field private g:I

.field private h:I

.field private i:J

.field private j:Z

.field private k:I

.field private l:F

.field private m:Landroid/view/animation/Animation$AnimationListener;

.field private n:Landroid/view/animation/Interpolator;

.field private o:Landroid/view/animation/Interpolator;

.field private p:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->j:Z

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->l:F

    .line 280
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$3;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$3;-><init>(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->m:Landroid/view/animation/Animation$AnimationListener;

    .line 355
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$4;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$4;-><init>(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->n:Landroid/view/animation/Interpolator;

    .line 364
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$5;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$5;-><init>(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->o:Landroid/view/animation/Interpolator;

    .line 380
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$6;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$6;-><init>(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->p:Landroid/view/animation/Interpolator;

    .line 60
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->b()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->j:Z

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->l:F

    .line 280
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$3;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$3;-><init>(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->m:Landroid/view/animation/Animation$AnimationListener;

    .line 355
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$4;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$4;-><init>(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->n:Landroid/view/animation/Interpolator;

    .line 364
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$5;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$5;-><init>(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->o:Landroid/view/animation/Interpolator;

    .line 380
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$6;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$6;-><init>(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->p:Landroid/view/animation/Interpolator;

    .line 65
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->b()V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput p1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->l:F

    return p1
.end method

.method private static a(I)I
    .locals 2
    .parameter

    .prologue
    .line 98
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_0
    int-to-float v0, p0

    const v1, 0x424db6db

    mul-float/2addr v0, v1

    const v1, -0x3ce5b6dc

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)I
    .locals 11
    .parameter

    .prologue
    const-wide/high16 v9, 0x4000

    const-wide/16 v7, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->getWidth()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v9

    sub-double v1, v0, v2

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v3, v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->getHeight()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v5, v9

    sub-double/2addr v3, v5

    .line 155
    cmpg-double v0, v1, v7

    if-gez v0, :cond_0

    const/16 v0, 0xb4

    .line 156
    :goto_0
    div-double v1, v3, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L

    div-double/2addr v1, v3

    int-to-double v3, v0

    add-double v0, v1, v3

    double-to-int v0, v0

    return v0

    .line 155
    :cond_0
    cmpg-double v0, v3, v7

    if-gez v0, :cond_1

    const/16 v0, 0x168

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(FIZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    .line 196
    if-eqz p3, :cond_0

    const/high16 v0, 0x4434

    .line 198
    :goto_0
    if-eqz p4, :cond_1

    sub-float v2, v0, p1

    .line 200
    :goto_1
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v1, p1

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 202
    if-eqz p4, :cond_2

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->p:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 203
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/wheel/a;

    invoke-direct {v1, p0, p2, p3}, Lcom/etermax/preguntados/ui/game/category/wheel/a;-><init>(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;IZ)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 204
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 205
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 207
    int-to-float v1, p2

    const/high16 v3, 0x43b4

    div-float/2addr v1, v3

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    .line 208
    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 210
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->setEnabled(Z)V

    .line 212
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 213
    return-void

    .line 196
    :cond_0
    const/high16 v0, -0x3bcc

    goto :goto_0

    .line 198
    :cond_1
    const/high16 v1, 0x4000

    div-float v2, v0, v1

    goto :goto_1

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->n:Landroid/view/animation/Interpolator;

    goto :goto_2
.end method

.method private a(IIZ)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f00

    const/4 v4, 0x1

    .line 245
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START DESCELERATE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    invoke-static {p1}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(I)I

    move-result v2

    .line 248
    const-wide/high16 v6, -0x4010

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v8, 0x2

    rem-long/2addr v0, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v1, v0

    .line 249
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v3, 0x41a5b6db

    mul-float/2addr v3, v0

    .line 250
    if-gez v2, :cond_2

    .line 251
    add-int/lit16 v0, v2, 0x168

    move v9, v0

    .line 255
    :goto_1
    int-to-float v2, v9

    if-eqz p3, :cond_1

    const/high16 v0, 0x44e1

    :goto_2
    add-float/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float v3, v0, v1

    .line 256
    const v0, 0x424db6db

    div-float v0, v3, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->k:I

    .line 258
    const-string v0, "CategoryWheelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of steps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$2;

    const/4 v2, 0x0

    move-object v1, p0

    move v6, v4

    move v7, v5

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$2;-><init>(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;FFIFIFF)V

    .line 271
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->o:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 272
    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 273
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->m:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 274
    invoke-virtual {v0, v4}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 275
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 277
    iput v9, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->d:I

    .line 278
    return-void

    .line 248
    :cond_0
    const-wide/high16 v0, 0x3ff0

    goto :goto_0

    .line 255
    :cond_1
    const/high16 v0, -0x3b1f

    goto :goto_2

    :cond_2
    move v9, v2

    goto :goto_1
.end method

.method private a(IZ)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f00

    const/4 v4, 0x1

    .line 218
    if-eqz p2, :cond_0

    const/high16 v3, 0x4434

    .line 219
    :goto_0
    int-to-float v0, p1

    const/high16 v1, 0x43b4

    div-float/2addr v0, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v9, v0

    .line 221
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$1;

    const/4 v2, 0x0

    move-object v1, p0

    move v6, v4

    move v7, v5

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$1;-><init>(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;FFIFIFF)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->c:Landroid/view/animation/RotateAnimation;

    .line 231
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->c:Landroid/view/animation/RotateAnimation;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->n:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 232
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->c:Landroid/view/animation/RotateAnimation;

    new-instance v1, Lcom/etermax/preguntados/ui/game/category/wheel/c;

    invoke-direct {v1, p0, p1, p2, v9}, Lcom/etermax/preguntados/ui/game/category/wheel/c;-><init>(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;IZI)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 233
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->c:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 234
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->c:Landroid/view/animation/RotateAnimation;

    int-to-long v1, v9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 235
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->c:Landroid/view/animation/RotateAnimation;

    const/16 v1, 0x1f40

    div-int/2addr v1, v9

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 237
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->c:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 238
    return-void

    .line 218
    :cond_0
    const/high16 v3, -0x3bcc

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 167
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->g:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x41cdb6db

    add-float/2addr v0, v1

    const v1, 0x424db6db

    rem-float/2addr v0, v1

    float-to-double v0, v0

    .line 168
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->f:I

    if-eq v0, p2, :cond_1

    .line 169
    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->b(Landroid/view/MotionEvent;)I

    move-result v1

    if-lez v1, :cond_0

    .line 171
    const/4 v0, 0x1

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->e:Lcom/etermax/preguntados/ui/game/category/wheel/b;

    invoke-interface {v1, v0}, Lcom/etermax/preguntados/ui/game/category/wheel/b;->a(Z)V

    .line 175
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(IIZ)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->j:Z

    return v0
.end method

.method private b(Landroid/view/MotionEvent;)I
    .locals 5
    .parameter

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(Landroid/view/MotionEvent;)I

    move-result v0

    iget v1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->h:I

    sub-int/2addr v0, v1

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->i:J

    sub-long/2addr v1, v3

    .line 163
    const-wide/16 v3, 0x168

    mul-long/2addr v1, v3

    long-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)Lcom/etermax/preguntados/ui/game/category/wheel/b;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->e:Lcom/etermax/preguntados/ui/game/category/wheel/b;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->d:I

    .line 71
    return-void
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)F
    .locals 1
    .parameter

    .prologue
    .line 19
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->l:F

    return v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a:I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->b:Ljava/lang/Object;

    .line 76
    return-void
.end method

.method static synthetic d(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)I
    .locals 1
    .parameter

    .prologue
    .line 19
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a:I

    return v0
.end method

.method static synthetic f(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)Landroid/view/animation/RotateAnimation;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->c:Landroid/view/animation/RotateAnimation;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->c()V

    .line 85
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->g:I

    rem-int/lit16 v0, v0, 0x168

    iget v1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->d:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/16 v1, 0xfa

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(FIZZ)V

    .line 86
    iput v3, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->g:I

    .line 87
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput p1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a:I

    .line 92
    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->b:Ljava/lang/Object;

    .line 93
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 179
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->g:I

    if-nez v0, :cond_0

    .line 180
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 190
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 185
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 186
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 187
    iget v2, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->g:I

    int-to-float v2, v2

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 188
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 149
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->f:I

    goto :goto_0

    .line 118
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 120
    iget v2, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->f:I

    iput v2, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->h:I

    .line 121
    iget v2, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->g:I

    iget v3, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->f:I

    sub-int v3, v0, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->g:I

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->i:J

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(Landroid/view/MotionEvent;I)V

    .line 124
    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->f:I

    .line 126
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->invalidate()V

    goto :goto_0

    .line 129
    :pswitch_2
    iput v2, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->f:I

    .line 132
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 133
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 134
    if-lez v0, :cond_2

    move v0, v1

    .line 135
    :goto_1
    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->j:Z

    .line 137
    const-string v4, "WHEEL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cicle duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/16 v4, 0x44c

    if-ge v3, v4, :cond_0

    const/16 v4, 0x64

    if-le v3, v4, :cond_0

    .line 140
    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->setEnabled(Z)V

    .line 141
    iget v3, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->d:I

    iget v4, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->g:I

    rem-int/lit16 v4, v4, 0x168

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/16 v4, 0xfa

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(FIZZ)V

    .line 142
    iput v2, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->g:I

    .line 143
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->e:Lcom/etermax/preguntados/ui/game/category/wheel/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/category/wheel/b;->a()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 134
    goto :goto_1

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setListener(Lcom/etermax/preguntados/ui/game/category/wheel/b;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->e:Lcom/etermax/preguntados/ui/game/category/wheel/b;

    .line 80
    return-void
.end method
