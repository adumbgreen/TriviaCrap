.class public Lcom/etermax/preguntados/ui/newgame/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/etermax/preguntados/datasource/d;

.field protected c:Lcom/etermax/gamescommon/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;)Lcom/etermax/gamescommon/language/Language;
    .locals 4
    .parameter

    .prologue
    .line 86
    const-string v0, "last_played_language"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    const-string v1, "selected_flag_item_tag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    if-nez v0, :cond_1

    .line 90
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/b/d/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    const-string v0, "EN_UK"

    .line 96
    :cond_0
    :goto_0
    const-string v1, "NewGameFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT LANGUAGE FOR THIS DEVICE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/language/Language;->get(Ljava/lang/String;Z)Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    return-object v0

    .line 93
    :cond_2
    const-string v1, "BR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string v0, "PT_BR"

    goto :goto_0
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/e;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/e;->a:Landroid/content/Context;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 50
    invoke-static {}, Lcom/etermax/preguntados/ui/dashboard/a/e;->a()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 51
    const-string v2, "out_of_lives_fragment"

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 52
    const-string v1, "out_of_lives_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 53
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 56
    :cond_0
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/gamescommon/language/Language;Ljava/lang/Long;IIZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    new-instance v3, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

    invoke-direct {v3, p1, p2, p3}, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/gamescommon/language/Language;Ljava/lang/Long;)V

    .line 62
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/e$1;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/e;->a:Landroid/content/Context;

    sget v2, Lcom/etermax/o;->loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/etermax/preguntados/ui/newgame/e$1;-><init>(Lcom/etermax/preguntados/ui/newgame/e;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;IIZ)V

    .line 82
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/e;->a:Landroid/content/Context;

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/e;->b:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->B()Z

    move-result v0

    return v0
.end method
