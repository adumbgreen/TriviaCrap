.class public Lcom/etermax/preguntados/ui/game/question/crown/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/d;->a:Landroid/os/Bundle;

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/game/question/crown/c$1;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/crown/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/question/crown/a;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/crown/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/game/question/crown/c;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/crown/d;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/question/crown/c;->setArguments(Landroid/os/Bundle;)V

    .line 97
    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/game/question/crown/d;
    .locals 2
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/d;->a:Landroid/os/Bundle;

    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 102
    return-object p0
.end method
