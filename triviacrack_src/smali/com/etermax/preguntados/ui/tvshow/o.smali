.class public Lcom/etermax/preguntados/ui/tvshow/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/o;->a:Landroid/os/Bundle;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/tvshow/n$1;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/tvshow/l;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/n;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/tvshow/n;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/o;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/tvshow/n;->setArguments(Landroid/os/Bundle;)V

    .line 82
    return-object v0
.end method
