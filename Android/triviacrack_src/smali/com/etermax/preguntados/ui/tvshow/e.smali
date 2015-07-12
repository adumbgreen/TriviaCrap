.class public Lcom/etermax/preguntados/ui/tvshow/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/e;->a:Landroid/os/Bundle;

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/tvshow/d$1;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/tvshow/a;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/d;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/tvshow/d;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/e;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/tvshow/d;->setArguments(Landroid/os/Bundle;)V

    .line 124
    return-object v0
.end method

.method public a(I)Lcom/etermax/preguntados/ui/tvshow/e;
    .locals 2
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/e;->a:Landroid/os/Bundle;

    const-string v1, "mBackgroundColor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    return-object p0
.end method

.method public b(I)Lcom/etermax/preguntados/ui/tvshow/e;
    .locals 2
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/e;->a:Landroid/os/Bundle;

    const-string v1, "mSubtitleResource"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    return-object p0
.end method

.method public c(I)Lcom/etermax/preguntados/ui/tvshow/e;
    .locals 2
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/e;->a:Landroid/os/Bundle;

    const-string v1, "mTextColor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    return-object p0
.end method

.method public d(I)Lcom/etermax/preguntados/ui/tvshow/e;
    .locals 2
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/e;->a:Landroid/os/Bundle;

    const-string v1, "mTitleResource"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    return-object p0
.end method
