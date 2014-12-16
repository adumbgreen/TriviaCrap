.class public Lcom/etermax/preguntados/ui/game/category/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/h;->a:Landroid/os/Bundle;

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/game/category/g$1;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/category/e;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/g;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/game/category/g;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/h;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/category/g;->setArguments(Landroid/os/Bundle;)V

    .line 134
    return-object v0
.end method

.method public a(I)Lcom/etermax/preguntados/ui/game/category/h;
    .locals 2
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/h;->a:Landroid/os/Bundle;

    const-string v1, "mExtraShots"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/game/category/h;
    .locals 2
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/h;->a:Landroid/os/Bundle;

    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 139
    return-object p0
.end method
