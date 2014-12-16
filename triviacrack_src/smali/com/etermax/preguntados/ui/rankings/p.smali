.class public Lcom/etermax/preguntados/ui/rankings/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/p;->a:Landroid/os/Bundle;

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/rankings/o$1;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/rankings/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/rankings/m;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/etermax/preguntados/ui/rankings/o;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/rankings/o;-><init>()V

    .line 126
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/p;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/rankings/o;->setArguments(Landroid/os/Bundle;)V

    .line 127
    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/UserRankDTO;)Lcom/etermax/preguntados/ui/rankings/p;
    .locals 2
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/p;->a:Landroid/os/Bundle;

    const-string v1, "userRankDTO"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 132
    return-object p0
.end method
