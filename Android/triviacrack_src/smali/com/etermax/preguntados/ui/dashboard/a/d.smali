.class public Lcom/etermax/preguntados/ui/dashboard/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/d;->a:Landroid/os/Bundle;

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/dashboard/a/c$1;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/dashboard/a/a;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/a/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/dashboard/a/c;-><init>()V

    .line 122
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/a/d;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/dashboard/a/c;->setArguments(Landroid/os/Bundle;)V

    .line 123
    return-object v0
.end method
