.class public Lcom/etermax/preguntados/ui/profile/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/c;->a:Landroid/os/Bundle;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/profile/b$1;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/profile/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/profile/a;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/etermax/preguntados/ui/profile/b;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/profile/b;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/c;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/profile/b;->setArguments(Landroid/os/Bundle;)V

    .line 90
    return-object v0
.end method

.method public a(J)Lcom/etermax/preguntados/ui/profile/c;
    .locals 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/c;->a:Landroid/os/Bundle;

    const-string v1, "mUserId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 95
    return-object p0
.end method
