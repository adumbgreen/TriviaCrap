.class public Lcom/etermax/preguntados/ui/newgame/duelmode/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a;->a:Landroid/content/Context;

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a;->b:Landroid/content/Intent;

    .line 123
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public a(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/preguntados/ui/newgame/duelmode/a;
    .locals 2
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a;->b:Landroid/content/Intent;

    const-string v1, "mSelectedLanguage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 163
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/newgame/duelmode/a;
    .locals 2
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a;->b:Landroid/content/Intent;

    const-string v1, "mTheme"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 173
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/newgame/duelmode/a;
    .locals 2
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a;->b:Landroid/content/Intent;

    const-string v1, "mDuelName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    return-object p0
.end method

.method public a(Ljava/util/ArrayList;)Lcom/etermax/preguntados/ui/newgame/duelmode/a;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)",
            "Lcom/etermax/preguntados/ui/newgame/duelmode/a;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a;->b:Landroid/content/Intent;

    const-string v1, "mPreselectedFriends"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 168
    return-object p0
.end method
