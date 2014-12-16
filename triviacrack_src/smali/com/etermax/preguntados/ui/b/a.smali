.class public Lcom/etermax/preguntados/ui/b/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/LinearLayout;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 32
    return-void
.end method

.method private a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/j;->level_image_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 116
    add-int/lit8 v1, p2, -0x1

    rem-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 117
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level_up_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/etermax/a/b;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-static {}, Lcom/etermax/preguntados/ui/b/c;->e()Lcom/etermax/preguntados/ui/b/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/b/d;->a(Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;)Lcom/etermax/preguntados/ui/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/b/d;->a()Lcom/etermax/preguntados/ui/b/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/b/b;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/etermax/preguntados/ui/b/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/b/a$1;-><init>(Lcom/etermax/preguntados/ui/b/a;)V

    return-object v0
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x0

    .line 79
    iget-object v0, p0, Lcom/etermax/preguntados/ui/b/a;->a:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getRewards()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/preguntados/ui/b/a;->a:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getRewards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/ui/b/a;->a:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getRewards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/RewardDTO;

    .line 82
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/RewardDTO;->getType()Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    move-result-object v1

    sget-object v2, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->COINS:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    if-ne v1, v2, :cond_0

    .line 83
    iget-object v1, p0, Lcom/etermax/preguntados/ui/b/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/RewardDTO;->getQuantity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/etermax/preguntados/ui/b/a;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/h;->coins_achievment:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/b/a;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/b/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/b/a;->a:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getLevel()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/etermax/preguntados/ui/b/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lcom/etermax/preguntados/ui/b/a;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/b/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/o;->level_number:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/b/a;->a:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/etermax/o;->congratulations:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/b/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/etermax/o;->you_made_it:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/b/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/etermax/preguntados/ui/b/a;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-void

    .line 85
    :cond_0
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/RewardDTO;->getType()Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    move-result-object v1

    sget-object v2, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->EXTRA_SHOTS:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    if-ne v1, v2, :cond_1

    .line 86
    iget-object v1, p0, Lcom/etermax/preguntados/ui/b/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/RewardDTO;->getQuantity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/etermax/preguntados/ui/b/a;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/h;->character_spin_shop:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/b/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/b/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/etermax/preguntados/ui/b/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/b/b;

    invoke-interface {v0, p0}, Lcom/etermax/preguntados/ui/b/b;->a(Lcom/etermax/preguntados/ui/b/a;)V

    .line 105
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/b/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/b/a;->a:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/sharing/h;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;)Lcom/etermax/preguntados/sharing/g;

    move-result-object v1

    .line 110
    iget-object v0, p0, Lcom/etermax/preguntados/ui/b/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/b/b;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/b/b;->a(Lcom/etermax/preguntados/sharing/ShareView;)V

    .line 111
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/b/a;->a()Lcom/etermax/preguntados/ui/b/b;

    move-result-object v0

    return-object v0
.end method
