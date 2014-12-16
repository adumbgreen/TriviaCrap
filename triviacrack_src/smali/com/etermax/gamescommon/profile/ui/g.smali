.class public Lcom/etermax/gamescommon/profile/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/g;->a:Landroid/os/Bundle;

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/gamescommon/profile/ui/f$1;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/ui/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/profile/ui/e;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/etermax/gamescommon/profile/ui/f;

    invoke-direct {v0}, Lcom/etermax/gamescommon/profile/ui/f;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/g;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/f;->setArguments(Landroid/os/Bundle;)V

    .line 96
    return-object v0
.end method

.method public a(Lcom/etermax/gamescommon/k;)Lcom/etermax/gamescommon/profile/ui/g;
    .locals 2
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/g;->a:Landroid/os/Bundle;

    const-string v1, "mUser"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 101
    return-object p0
.end method
