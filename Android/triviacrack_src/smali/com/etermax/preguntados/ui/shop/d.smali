.class public Lcom/etermax/preguntados/ui/shop/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/shop/d;->a:Landroid/os/Bundle;

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/shop/c$1;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/shop/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/shop/a;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/etermax/preguntados/ui/shop/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/shop/c;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/etermax/preguntados/ui/shop/d;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/shop/c;->setArguments(Landroid/os/Bundle;)V

    .line 116
    return-object v0
.end method

.method public a(I)Lcom/etermax/preguntados/ui/shop/d;
    .locals 2
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/d;->a:Landroid/os/Bundle;

    const-string v1, "mExtraShots"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    return-object p0
.end method
