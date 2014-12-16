.class public Lcom/etermax/preguntados/sharing/g;
.super Lcom/etermax/preguntados/sharing/ShareView;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/ViewSwitcher;

.field private g:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/sharing/ShareView;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Lcom/etermax/preguntados/sharing/g;->h:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/etermax/preguntados/sharing/g;->g:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    .line 50
    return-void
.end method

.method private a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/j;->level_image_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 82
    add-int/lit8 v1, p2, -0x1

    rem-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 83
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

    .line 84
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

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/g;->b()V

    .line 55
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 60
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/g;->l:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/g;->f:Landroid/widget/ViewSwitcher;

    iget-object v2, p0, Lcom/etermax/preguntados/sharing/g;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/sharing/g;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/g;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/sharing/g;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->n()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etermax/tools/nationality/NationalityManager;->getNameResource(Landroid/content/Context;Lcom/etermax/tools/nationality/Nationality;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/g;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/etermax/preguntados/sharing/g;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/etermax/preguntados/sharing/g;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/g;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/g;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/g;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/etermax/preguntados/sharing/g;->g:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getLevel()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/etermax/preguntados/sharing/g;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/g;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/g;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/o;->level_number:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/etermax/preguntados/sharing/g;->g:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/g;->h:Landroid/content/Context;

    sget v2, Lcom/etermax/o;->congratulations:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/g;->h:Landroid/content/Context;

    sget v2, Lcom/etermax/o;->you_made_it:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/etermax/preguntados/sharing/g;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/g;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getShareText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 76
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/g;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/g;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/g;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/etermax/o;->user_levelup_3p:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/etermax/preguntados/sharing/g;->g:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/g;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/o;->landing_url:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/g;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
