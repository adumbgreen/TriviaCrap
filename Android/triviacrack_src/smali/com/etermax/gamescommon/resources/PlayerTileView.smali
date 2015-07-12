.class public Lcom/etermax/gamescommon/resources/PlayerTileView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/dashboard/c;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/resources/PlayerTileView;->c:Z

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/resources/PlayerTileView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/resources/PlayerTileView;->c:Z

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/resources/PlayerTileView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method private static a(ILandroid/content/Context;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x1

    int-to-float v1, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 32
    sget-object v0, Lcom/etermax/q;->PlayerTileView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/resources/PlayerTileView;->a:Ljava/lang/String;

    .line 34
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/gamescommon/resources/PlayerTileView;->b:I

    .line 35
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/gamescommon/resources/PlayerTileView;->c:Z

    .line 36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/etermax/gamescommon/resources/PlayerTileView;->c:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/etermax/gamescommon/resources/PlayerTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/h;->dashboard_random:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/etermax/gamescommon/resources/PlayerTileView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etermax/gamescommon/resources/PlayerTileView;->a(ILandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/etermax/tools/j/f;->b(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/resources/PlayerTileView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    sget v0, Lcom/etermax/h;->dashboard_random:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/resources/PlayerTileView;->setImageResource(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 41
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 44
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/etermax/gamescommon/resources/PlayerTileView;->b:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/etermax/gamescommon/resources/PlayerTileView;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/etermax/gamescommon/resources/PlayerTileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {p0}, Lcom/etermax/gamescommon/resources/PlayerTileView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 48
    iget-boolean v1, p0, Lcom/etermax/gamescommon/resources/PlayerTileView;->c:Z

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/etermax/gamescommon/resources/PlayerTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const v1, 0x3da3d70a

    invoke-static {v0, v1}, Lcom/etermax/tools/j/f;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/resources/PlayerTileView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/resources/PlayerTileView;->setImageResource(I)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/etermax/gamescommon/resources/PlayerTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/f;->dashboard_avatar_waiting:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/resources/PlayerTileView;->setBackgroundColor(I)V

    .line 74
    return-void
.end method
