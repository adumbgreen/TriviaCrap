.class public Lcom/etermax/preguntados/ui/newgame/duelmode/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/e;->a:Landroid/os/Bundle;

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/newgame/duelmode/d$1;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/newgame/duelmode/b;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/duelmode/d;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/d;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/e;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/d;->setArguments(Landroid/os/Bundle;)V

    .line 109
    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/newgame/duelmode/e;
    .locals 2
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/e;->a:Landroid/os/Bundle;

    const-string v1, "mTheme"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 119
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/newgame/duelmode/e;
    .locals 2
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/e;->a:Landroid/os/Bundle;

    const-string v1, "mDuelName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-object p0
.end method
