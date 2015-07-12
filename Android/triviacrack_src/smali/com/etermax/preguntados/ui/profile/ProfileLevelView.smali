.class public Lcom/etermax/preguntados/ui/profile/ProfileLevelView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;

.field f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method private a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileLevelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/j;->level_image_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 73
    add-int/lit8 v1, p2, -0x1

    rem-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 74
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

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level_up_profile_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/etermax/a/b;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileLevelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileLevelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/ProfileLevelView;->a:Landroid/widget/TextView;

    sget v2, Lcom/etermax/o;->level_number:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/ProfileLevelView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileLevelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getLevel()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/etermax/preguntados/ui/profile/ProfileLevelView;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/ProfileLevelView;->c:Landroid/widget/TextView;

    sget v2, Lcom/etermax/o;->number_answered_questions:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getPoints()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/ProfileLevelView;->d:Landroid/widget/TextView;

    sget v2, Lcom/etermax/o;->progress:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getPoints()I

    move-result v0

    .line 64
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getGoalPoints()I

    move-result v1

    .line 65
    if-le v0, v1, :cond_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileLevelView;->e:Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getProgress()I

    move-result v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;->a(II)V

    .line 69
    return-void
.end method
