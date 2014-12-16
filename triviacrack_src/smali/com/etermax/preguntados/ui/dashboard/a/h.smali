.class public Lcom/etermax/preguntados/ui/dashboard/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/h;->a:Landroid/os/Bundle;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/dashboard/a/g$1;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/dashboard/a/e;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/a/g;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/dashboard/a/g;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/a/h;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/dashboard/a/g;->setArguments(Landroid/os/Bundle;)V

    .line 130
    return-object v0
.end method
