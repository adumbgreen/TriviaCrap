.class public Lcom/etermax/preguntados/ui/tvshow/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/e;->a:Landroid/os/Bundle;

    .line 228
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/tvshow/a/d$1;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/tvshow/a/a;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/a/d;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/tvshow/a/d;-><init>()V

    .line 232
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/a/e;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/d;->setArguments(Landroid/os/Bundle;)V

    .line 233
    return-object v0
.end method
