.class public Lcom/etermax/preguntados/ui/withoutcoins/f;
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

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/f;->a:Landroid/os/Bundle;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/withoutcoins/e$1;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/withoutcoins/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/withoutcoins/a;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/etermax/preguntados/ui/withoutcoins/e;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/withoutcoins/e;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/etermax/preguntados/ui/withoutcoins/f;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/withoutcoins/e;->setArguments(Landroid/os/Bundle;)V

    .line 107
    return-object v0
.end method
