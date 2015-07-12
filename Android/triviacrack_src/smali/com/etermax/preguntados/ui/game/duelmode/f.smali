.class public Lcom/etermax/preguntados/ui/game/duelmode/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/f;->a:Landroid/os/Bundle;

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/game/duelmode/e$1;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/duelmode/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/duelmode/c;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/etermax/preguntados/ui/game/duelmode/e;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/game/duelmode/e;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/f;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/duelmode/e;->setArguments(Landroid/os/Bundle;)V

    .line 126
    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/game/duelmode/f;
    .locals 2
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/f;->a:Landroid/os/Bundle;

    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 136
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/game/duelmode/f;
    .locals 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/f;->a:Landroid/os/Bundle;

    const-string v1, "mTheme"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 131
    return-object p0
.end method
