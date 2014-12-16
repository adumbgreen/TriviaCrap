.class public Lcom/etermax/preguntados/ui/game/category/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/h;->a:Landroid/os/Bundle;

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/game/category/a/g$1;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/category/a/e;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/a/g;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/game/category/a/g;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a/h;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/category/a/g;->setArguments(Landroid/os/Bundle;)V

    .line 103
    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/game/category/a/h;
    .locals 2
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/h;->a:Landroid/os/Bundle;

    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 108
    return-object p0
.end method
