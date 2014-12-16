.class public Lcom/etermax/gamescommon/achievements/ui/n;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/gamescommon/achievements/ui/o;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/gamescommon/achievements/ui/k;

.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/LinearLayout;

.field g:I

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 49
    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;",
            ">;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lcom/etermax/gamescommon/achievements/ui/p;->d()Lcom/etermax/gamescommon/achievements/ui/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/achievements/ui/q;->a(Ljava/util/ArrayList;)Lcom/etermax/gamescommon/achievements/ui/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/achievements/ui/q;->a()Lcom/etermax/gamescommon/achievements/ui/n;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/achievements/ui/n;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/etermax/gamescommon/achievements/ui/n;->d()V

    return-void
.end method

.method private d()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 85
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/etermax/gamescommon/achievements/ui/n;->g:I

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/n;->a:Lcom/etermax/gamescommon/achievements/ui/k;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/achievements/ui/k;->b()V

    .line 120
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/n;->h:Ljava/util/ArrayList;

    iget v1, p0, Lcom/etermax/gamescommon/achievements/ui/n;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getId()I

    move-result v0

    .line 90
    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_1
    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/n;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "achievement_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/etermax/a/b;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 92
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/etermax/gamescommon/achievements/ui/n;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/etermax/gamescommon/achievements/ui/n;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/n;->h:Ljava/util/ArrayList;

    iget v2, p0, Lcom/etermax/gamescommon/achievements/ui/n;->g:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p0, Lcom/etermax/gamescommon/achievements/ui/n;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/n;->h:Ljava/util/ArrayList;

    iget v2, p0, Lcom/etermax/gamescommon/achievements/ui/n;->g:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getRewards()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lcom/etermax/gamescommon/achievements/ui/n;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/n;->h:Ljava/util/ArrayList;

    iget v2, p0, Lcom/etermax/gamescommon/achievements/ui/n;->g:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 97
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 98
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 100
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 101
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 102
    const-wide/16 v2, 0x157c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 103
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 105
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 106
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 107
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 108
    new-instance v0, Lcom/etermax/gamescommon/achievements/ui/n$3;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/achievements/ui/n$3;-><init>(Lcom/etermax/gamescommon/achievements/ui/n;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 119
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/n;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 90
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/achievements/ui/o;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/etermax/gamescommon/achievements/ui/n$1;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/achievements/ui/n$1;-><init>(Lcom/etermax/gamescommon/achievements/ui/n;)V

    return-object v0
.end method

.method b()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/n;->f:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/etermax/gamescommon/achievements/ui/n$2;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/achievements/ui/n$2;-><init>(Lcom/etermax/gamescommon/achievements/ui/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-direct {p0}, Lcom/etermax/gamescommon/achievements/ui/n;->d()V

    .line 76
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/n;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/gamescommon/achievements/ui/o;

    iget-object v1, p0, Lcom/etermax/gamescommon/achievements/ui/n;->h:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/achievements/ui/o;->a(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V

    .line 81
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/n;->a()Lcom/etermax/gamescommon/achievements/ui/o;

    move-result-object v0

    return-object v0
.end method
