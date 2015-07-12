.class public Lcom/etermax/preguntados/ui/rankings/m;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/rankings/n;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 39
    return-void
.end method

.method private a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 73
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ranking_puesto_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/etermax/a/b;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    const/4 v1, 0x3

    if-gt p2, v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/m;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/m;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ranking_puesto_04"

    invoke-static {p1, v1}, Lcom/etermax/a/b;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/UserRankDTO;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-static {}, Lcom/etermax/preguntados/ui/rankings/o;->e()Lcom/etermax/preguntados/ui/rankings/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/rankings/p;->a(Lcom/etermax/preguntados/datasource/dto/UserRankDTO;)Lcom/etermax/preguntados/ui/rankings/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/rankings/p;->a()Lcom/etermax/preguntados/ui/rankings/m;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/rankings/n;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/etermax/preguntados/ui/rankings/m$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/rankings/m$1;-><init>(Lcom/etermax/preguntados/ui/rankings/m;)V

    return-object v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 61
    sget v0, Lcom/etermax/o;->place_weekly_ranking:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/rankings/m;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/etermax/preguntados/ui/rankings/m;->a:Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/m;->a:Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->getPosition()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 63
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/m;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/etermax/o;->congrats:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/rankings/m;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/m;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/m;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/rankings/m;->a:Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->getPosition()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/etermax/preguntados/ui/rankings/m;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/m;->c:Landroid/widget/TextView;

    sget v1, Lcom/etermax/o;->weekly_ranking:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/m;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/m;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/rankings/n;

    invoke-interface {v0, p0}, Lcom/etermax/preguntados/ui/rankings/n;->a(Lcom/etermax/preguntados/ui/rankings/m;)V

    .line 86
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/m;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/m;->a:Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/sharing/v;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/UserRankDTO;)Lcom/etermax/preguntados/sharing/u;

    move-result-object v1

    .line 91
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/m;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/rankings/n;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/rankings/n;->b(Lcom/etermax/preguntados/sharing/ShareView;)V

    .line 92
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/m;->a()Lcom/etermax/preguntados/ui/rankings/n;

    move-result-object v0

    return-object v0
.end method
