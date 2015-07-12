.class public Lcom/etermax/preguntados/ui/dashboard/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/d;->a:Landroid/os/Bundle;

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/dashboard/c$1;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/dashboard/a;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/dashboard/c;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/d;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/dashboard/c;->setArguments(Landroid/os/Bundle;)V

    .line 136
    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/dashboard/d;
    .locals 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/d;->a:Landroid/os/Bundle;

    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 141
    return-object p0
.end method
