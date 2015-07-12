.class public Lcom/etermax/preguntados/ui/rankings/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/h;->a:Landroid/os/Bundle;

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/rankings/g$1;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/rankings/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/rankings/e;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/etermax/preguntados/ui/rankings/g;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/rankings/g;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/h;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/rankings/g;->setArguments(Landroid/os/Bundle;)V

    .line 105
    return-object v0
.end method
