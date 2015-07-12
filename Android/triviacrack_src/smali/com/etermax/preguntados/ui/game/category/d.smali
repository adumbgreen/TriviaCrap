.class public Lcom/etermax/preguntados/ui/game/category/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/d;->a:Landroid/os/Bundle;

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/game/category/c$1;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/category/a;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/game/category/c;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/d;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/category/c;->setArguments(Landroid/os/Bundle;)V

    .line 138
    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/game/category/d;
    .locals 2
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/d;->a:Landroid/os/Bundle;

    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 143
    return-object p0
.end method
