.class Lcom/etermax/gamescommon/animations/v1/a;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/animations/v1/AnimatedView;

.field private b:Landroid/graphics/drawable/AnimationDrawable;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/animations/v1/AnimatedView;Landroid/content/Context;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/etermax/gamescommon/animations/v1/a;->a:Lcom/etermax/gamescommon/animations/v1/AnimatedView;

    .line 296
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 298
    iput-object p3, p0, Lcom/etermax/gamescommon/animations/v1/a;->b:Landroid/graphics/drawable/AnimationDrawable;

    .line 300
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/a;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/animations/v1/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 303
    invoke-virtual {p3}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .line 305
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 306
    iget-wide v2, p0, Lcom/etermax/gamescommon/animations/v1/a;->c:J

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/etermax/gamescommon/animations/v1/a;->c:J

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/animations/v1/a;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/a;->b:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 314
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/animations/v1/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    :goto_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/animations/v1/a;->postInvalidate()V

    .line 319
    return-void

    .line 316
    :cond_0
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/animations/v1/a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/a;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/animations/v1/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 323
    new-instance v0, Lcom/etermax/gamescommon/animations/v1/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/animations/v1/a$1;-><init>(Lcom/etermax/gamescommon/animations/v1/a;)V

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/animations/v1/a;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 333
    new-instance v0, Lcom/etermax/gamescommon/animations/v1/a$2;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/animations/v1/a$2;-><init>(Lcom/etermax/gamescommon/animations/v1/a;)V

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/animations/v1/a;->post(Ljava/lang/Runnable;)Z

    .line 339
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 359
    iget-wide v0, p0, Lcom/etermax/gamescommon/animations/v1/a;->c:J

    return-wide v0
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .parameter

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/a;->b:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/a;->b:Landroid/graphics/drawable/AnimationDrawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
