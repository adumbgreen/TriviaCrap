.class public Lcom/etermax/gamescommon/social/TileImageView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/tools/widget/CustomFontTextView;

.field private b:Lcom/etermax/tools/widget/CustomFontTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lcom/etermax/gamescommon/social/TileImageView;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lcom/etermax/gamescommon/social/TileImageView;->a()V

    .line 30
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 33
    invoke-virtual {p0}, Lcom/etermax/gamescommon/social/TileImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/etermax/k;->tile_avatar_layout:I

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/social/TileImageView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/social/TileImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    sget v0, Lcom/etermax/h;->chat_tile:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/social/TileImageView;->setBackgroundResource(I)V

    .line 38
    sget v0, Lcom/etermax/i;->tile_image_big_letter:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/social/TileImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontTextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/social/TileImageView;->a:Lcom/etermax/tools/widget/CustomFontTextView;

    .line 39
    sget v0, Lcom/etermax/i;->tile_image_number_value:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/social/TileImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontTextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/social/TileImageView;->b:Lcom/etermax/tools/widget/CustomFontTextView;

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/social/TileImageView;->setFocusableInTouchMode(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public setBigLetter(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/etermax/gamescommon/social/TileImageView;->a:Lcom/etermax/tools/widget/CustomFontTextView;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method public setImageIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 50
    sget v0, Lcom/etermax/i;->tile_image_downloaded:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/social/TileImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/social/TileImageView;->setBackgroundColor(I)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/social/TileImageView;->a:Lcom/etermax/tools/widget/CustomFontTextView;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/etermax/gamescommon/social/TileImageView;->b:Lcom/etermax/tools/widget/CustomFontTextView;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setVisibility(I)V

    .line 58
    return-void
.end method
