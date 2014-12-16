.class public Lcom/etermax/gamescommon/achievements/ui/d;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/LinearLayout;

.field g:Landroid/widget/ImageView;

.field h:Lcom/etermax/gamescommon/achievements/ui/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private b(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V
    .locals 4
    .parameter

    .prologue
    .line 79
    const-string v0, "#e9e9e9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 80
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 81
    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getActiveImageResourceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 82
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 83
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/d;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    return-void
.end method

.method private c(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getActiveImageResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 88
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 89
    iget-object v1, p0, Lcom/etermax/gamescommon/achievements/ui/d;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 42
    new-instance v0, Lcom/etermax/gamescommon/achievements/ui/d$1;

    invoke-direct {v0, p0, p1}, Lcom/etermax/gamescommon/achievements/ui/d$1;-><init>(Lcom/etermax/gamescommon/achievements/ui/d;Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/achievements/ui/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/d;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/d;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/d;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getStatus()Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    move-result-object v0

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;->NOT_OBTAINED:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    if-ne v0, v1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/d;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/d;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/d;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getPercent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/d;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getRewards()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getActiveImageResourceId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/achievements/ui/d;->b(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V

    .line 76
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/d;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/d;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/d;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getActiveImageResourceId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/achievements/ui/d;->c(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/d;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
