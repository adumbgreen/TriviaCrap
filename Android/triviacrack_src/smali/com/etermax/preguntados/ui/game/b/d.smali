.class public Lcom/etermax/preguntados/ui/game/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/b/d;->a:Landroid/os/Bundle;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/game/b/c$1;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/b/a;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/etermax/preguntados/ui/game/b/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/game/b/c;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/b/d;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/b/c;->setArguments(Landroid/os/Bundle;)V

    .line 93
    return-object v0
.end method

.method public a(I)Lcom/etermax/preguntados/ui/game/b/d;
    .locals 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/b/d;->a:Landroid/os/Bundle;

    const-string v1, "mMyPlayerNumber"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;)Lcom/etermax/preguntados/ui/game/b/d;
    .locals 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/b/d;->a:Landroid/os/Bundle;

    const-string v1, "mStatistics"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 98
    return-object p0
.end method
