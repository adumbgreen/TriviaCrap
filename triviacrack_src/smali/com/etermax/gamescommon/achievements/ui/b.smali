.class public Lcom/etermax/gamescommon/achievements/ui/b;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/ProgressBar;

.field d:Lcom/etermax/gamescommon/achievements/ui/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private b(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V
    .locals 4
    .parameter

    .prologue
    .line 65
    const-string v0, "#e9e9e9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 66
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 67
    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getActiveImageResourceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 68
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 69
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 33
    new-instance v0, Lcom/etermax/gamescommon/achievements/ui/b$1;

    invoke-direct {v0, p0, p1}, Lcom/etermax/gamescommon/achievements/ui/b$1;-><init>(Lcom/etermax/gamescommon/achievements/ui/b;Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/achievements/ui/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/b;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 46
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getStatus()Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    move-result-object v0

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;->NOT_OBTAINED:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    if-ne v0, v1, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getActiveImageResourceId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/achievements/ui/b;->b(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V

    .line 49
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/b;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/b;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getPercent()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 62
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getActiveImageResourceId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/b;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getActiveImageResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
