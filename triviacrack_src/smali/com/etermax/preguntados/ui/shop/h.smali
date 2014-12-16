.class public Lcom/etermax/preguntados/ui/shop/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/shop/h;->a:Landroid/os/Bundle;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/shop/g$1;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/shop/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/shop/e;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/etermax/preguntados/ui/shop/g;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/shop/g;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/etermax/preguntados/ui/shop/h;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/shop/g;->setArguments(Landroid/os/Bundle;)V

    .line 77
    return-object v0
.end method
