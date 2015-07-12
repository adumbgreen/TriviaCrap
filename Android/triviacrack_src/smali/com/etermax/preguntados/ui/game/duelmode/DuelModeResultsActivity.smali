.class public Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/game/duelmode/d;


# instance fields
.field a:Lcom/etermax/gamescommon/login/datasource/a;

.field b:Lcom/etermax/preguntados/datasource/d;

.field c:Lcom/etermax/preguntados/sharing/m;

.field d:Lcom/etermax/gamescommon/shop/c;

.field e:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field f:Lcom/etermax/preguntados/ui/game/duelmode/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/ui/game/duelmode/g;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-static {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/game/duelmode/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/b;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/game/duelmode/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/game/duelmode/b;->a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/game/duelmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/duelmode/b;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(J)V
    .locals 2
    .parameter

    .prologue
    .line 107
    new-instance v0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity$1;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity$1;-><init>(Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;Ljava/lang/String;J)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity$1;->a(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;Landroid/support/v4/app/Fragment;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->e:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->f:Lcom/etermax/preguntados/ui/game/duelmode/g;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/game/duelmode/c;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/ui/game/duelmode/g;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Long;)V
    .locals 3
    .parameter

    .prologue
    .line 71
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/gamescommon/b/an;->k:Lcom/etermax/gamescommon/b/an;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/b/an;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/etermax/gamescommon/language/Language;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/etermax/gamescommon/language/Language;",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->b:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    .line 91
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v5}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->f:Lcom/etermax/preguntados/ui/game/duelmode/g;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->a(Landroid/content/Context;Ljava/lang/String;Lcom/etermax/gamescommon/language/Language;Ljava/util/ArrayList;Lcom/etermax/preguntados/ui/game/duelmode/g;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->finish()V

    .line 103
    :goto_1
    return-void

    .line 100
    :cond_2
    invoke-static {}, Lcom/etermax/preguntados/ui/dashboard/a/e;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 101
    const-string v1, "fragment_out_of_lives"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public b()V
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->e:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->f:Lcom/etermax/preguntados/ui/game/duelmode/g;

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/sharing/d;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/sharing/c;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->c:Lcom/etermax/preguntados/sharing/m;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/sharing/m;->a(Lcom/etermax/preguntados/sharing/ShareView;)V

    .line 79
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->e:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->a(J)V

    .line 84
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->d:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/shop/c;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 59
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onStart()V

    .line 60
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->d:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/shop/c;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 65
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onStop()V

    .line 66
    return-void
.end method
