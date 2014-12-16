.class public Lcom/etermax/preguntados/ui/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/c/d;->a:Landroid/os/Bundle;

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/c/c$1;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/c/b;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/etermax/preguntados/ui/c/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/c/c;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/etermax/preguntados/ui/c/d;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/c/c;->setArguments(Landroid/os/Bundle;)V

    .line 104
    return-object v0
.end method
