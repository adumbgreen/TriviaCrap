.class public Lcom/etermax/preguntados/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/d/g;->a:Landroid/os/Bundle;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/d/f$1;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/etermax/preguntados/d/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/d/c;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/etermax/preguntados/d/f;

    invoke-direct {v0}, Lcom/etermax/preguntados/d/f;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/etermax/preguntados/d/g;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/d/f;->setArguments(Landroid/os/Bundle;)V

    .line 101
    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)Lcom/etermax/preguntados/d/g;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)",
            "Lcom/etermax/preguntados/d/g;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/etermax/preguntados/d/g;->a:Landroid/os/Bundle;

    const-string v1, "mInactiveUsers"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 106
    return-object p0
.end method
