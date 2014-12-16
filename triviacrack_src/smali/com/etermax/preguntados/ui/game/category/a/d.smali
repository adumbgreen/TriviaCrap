.class public Lcom/etermax/preguntados/ui/game/category/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/d;->a:Landroid/os/Bundle;

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/game/category/a/c$1;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/category/a/a;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/a/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/game/category/a/c;-><init>()V

    .line 165
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a/d;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/category/a/c;->setArguments(Landroid/os/Bundle;)V

    .line 166
    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/game/category/a/d;
    .locals 2
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/d;->a:Landroid/os/Bundle;

    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 171
    return-object p0
.end method

.method public a(Z)Lcom/etermax/preguntados/ui/game/category/a/d;
    .locals 2
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/d;->a:Landroid/os/Bundle;

    const-string v1, "mTieBreakDuel"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    return-object p0
.end method
