.class public Lcom/etermax/preguntados/ui/profile/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/k;->a:Landroid/os/Bundle;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/profile/j$1;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/profile/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/profile/i;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/etermax/preguntados/ui/profile/j;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/profile/j;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/k;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/profile/j;->setArguments(Landroid/os/Bundle;)V

    .line 94
    return-object v0
.end method

.method public a(J)Lcom/etermax/preguntados/ui/profile/k;
    .locals 2
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/k;->a:Landroid/os/Bundle;

    const-string v1, "mUserId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 104
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/profile/k;
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/k;->a:Landroid/os/Bundle;

    const-string v1, "mUsername"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object p0
.end method
