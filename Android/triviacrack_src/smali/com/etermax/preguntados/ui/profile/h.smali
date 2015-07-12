.class public Lcom/etermax/preguntados/ui/profile/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/h;->a:Landroid/os/Bundle;

    .line 222
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/profile/g$1;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/profile/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/profile/e;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lcom/etermax/preguntados/ui/profile/g;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/profile/g;-><init>()V

    .line 226
    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/h;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/profile/g;->setArguments(Landroid/os/Bundle;)V

    .line 227
    return-object v0
.end method

.method public a(J)Lcom/etermax/preguntados/ui/profile/h;
    .locals 2
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/h;->a:Landroid/os/Bundle;

    const-string v1, "mConsultedUser"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 232
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/profile/h;
    .locals 2
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/h;->a:Landroid/os/Bundle;

    const-string v1, "mFrom"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-object p0
.end method
