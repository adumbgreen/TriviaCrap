.class public Lcom/etermax/preguntados/sharing/a;
.super Lcom/etermax/preguntados/sharing/ShareView;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/ViewSwitcher;

.field private g:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/sharing/ShareView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/etermax/preguntados/sharing/a;->g:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    .line 34
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/a;->b()V

    .line 39
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/a;->l:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/a;->f:Landroid/widget/ViewSwitcher;

    iget-object v2, p0, Lcom/etermax/preguntados/sharing/a;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/sharing/a;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/sharing/a;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->n()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etermax/tools/nationality/NationalityManager;->getNameResource(Landroid/content/Context;Lcom/etermax/tools/nationality/Nationality;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/a;->m:Lcom/etermax/gamescommon/login/datasource/a;

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

    iget-object v2, p0, Lcom/etermax/preguntados/sharing/a;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    iget-object v2, p0, Lcom/etermax/preguntados/sharing/a;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/etermax/preguntados/sharing/a;->g:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v2, p0, Lcom/etermax/preguntados/sharing/a;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/etermax/preguntados/sharing/a;->g:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v2, p0, Lcom/etermax/preguntados/sharing/a;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/a;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/a;->g:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getImageResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/a;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getShareText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/a;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/o;->user_unlocked_badge:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/etermax/preguntados/sharing/a;->g:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    invoke-virtual {v4}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/a;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/o;->landing_url:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
