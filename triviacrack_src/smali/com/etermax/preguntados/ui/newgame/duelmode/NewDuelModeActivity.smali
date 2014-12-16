.class public Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/newgame/duelmode/c;
.implements Lcom/etermax/preguntados/ui/newgame/duelmode/g;
.implements Lcom/etermax/preguntados/ui/newgame/duelmode/k;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/etermax/gamescommon/language/Language;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/etermax/preguntados/ui/game/duelmode/g;

.field e:Lcom/etermax/preguntados/datasource/d;

.field f:Lcom/etermax/gamescommon/c/a;

.field g:Lcom/etermax/gamescommon/login/datasource/a;

.field h:Lcom/etermax/tools/f/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/etermax/gamescommon/language/Language;Ljava/util/ArrayList;Lcom/etermax/preguntados/ui/game/duelmode/g;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/etermax/gamescommon/language/Language;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;",
            "Lcom/etermax/preguntados/ui/game/duelmode/g;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/newgame/duelmode/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/a;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/newgame/duelmode/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/newgame/duelmode/a;->a(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/preguntados/ui/newgame/duelmode/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/etermax/preguntados/ui/newgame/duelmode/a;->a(Ljava/util/ArrayList;)Lcom/etermax/preguntados/ui/newgame/duelmode/a;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/etermax/preguntados/ui/newgame/duelmode/a;->a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/newgame/duelmode/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcom/etermax/tools/nationality/Nationality;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 123
    new-instance v0, Lcom/etermax/preguntados/a/b;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/b;-><init>()V

    .line 124
    const-string v1, "normal"

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/a/b;->a(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/b;->a(I)V

    .line 126
    invoke-virtual {p2}, Lcom/etermax/tools/nationality/Nationality;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/a/b;->b(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 128
    return-void
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity$1;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity$1;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V

    .line 119
    invoke-virtual {v0, p0}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;ILcom/etermax/tools/nationality/Nationality;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->a(ILcom/etermax/tools/nationality/Nationality;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->d:Lcom/etermax/preguntados/ui/game/duelmode/g;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->a(Ljava/lang/String;Lcom/etermax/preguntados/ui/game/duelmode/g;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->a:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->a(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 72
    const/4 v1, 0x1

    const-string v2, "fragment_duel_players"

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 73
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->a:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 96
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 97
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->b:Lcom/etermax/gamescommon/language/Language;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Ljava/lang/String;Lcom/etermax/gamescommon/language/Language;Ljava/util/List;)V

    .line 79
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V

    .line 80
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->onBackPressed()V

    .line 86
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->finish()V

    .line 91
    return-void
.end method
