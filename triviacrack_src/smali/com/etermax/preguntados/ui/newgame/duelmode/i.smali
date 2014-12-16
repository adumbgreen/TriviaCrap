.class public Lcom/etermax/preguntados/ui/newgame/duelmode/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/i;->a:Landroid/os/Bundle;

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/newgame/duelmode/h$1;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/newgame/duelmode/f;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/duelmode/h;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/h;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/i;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->setArguments(Landroid/os/Bundle;)V

    .line 131
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/newgame/duelmode/i;
    .locals 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/i;->a:Landroid/os/Bundle;

    const-string v1, "mDuelName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-object p0
.end method

.method public a(Ljava/util/ArrayList;)Lcom/etermax/preguntados/ui/newgame/duelmode/i;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)",
            "Lcom/etermax/preguntados/ui/newgame/duelmode/i;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/i;->a:Landroid/os/Bundle;

    const-string v1, "mPreselectedFriends"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 136
    return-object p0
.end method
