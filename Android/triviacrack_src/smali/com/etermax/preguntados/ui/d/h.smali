.class public Lcom/etermax/preguntados/ui/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/h;->a:Landroid/os/Bundle;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/d/g$1;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/d/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/d/e;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/etermax/preguntados/ui/d/g;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/d/g;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/etermax/preguntados/ui/d/h;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/d/g;->setArguments(Landroid/os/Bundle;)V

    .line 107
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/d/h;
    .locals 2
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/h;->a:Landroid/os/Bundle;

    const-string v1, "mTutorialType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-object p0
.end method
