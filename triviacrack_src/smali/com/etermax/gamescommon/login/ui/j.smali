.class public abstract Lcom/etermax/gamescommon/login/ui/j;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/b/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/gamescommon/login/ui/m;",
        ">;",
        "Lcom/etermax/gamescommon/b/y;"
    }
.end annotation


# instance fields
.field protected a:Lcom/etermax/gamescommon/login/datasource/c;

.field protected b:Lcom/etermax/tools/b/a;

.field protected c:Lcom/etermax/tools/social/a/b;

.field protected d:Lcom/etermax/gamescommon/login/datasource/a;

.field protected e:Lcom/etermax/tools/f/a;

.field private f:Lcom/etermax/gamescommon/b/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/login/ui/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/gamescommon/login/ui/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/j;->e:Lcom/etermax/tools/f/a;

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Lcom/etermax/gamescommon/b/ac;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/ac;-><init>()V

    .line 218
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/b/ac;->a(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, p2}, Lcom/etermax/gamescommon/b/ac;->b(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p3}, Lcom/etermax/gamescommon/b/ac;->c(Ljava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/etermax/gamescommon/login/ui/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/j;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/gamescommon/login/ui/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/j;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/etermax/gamescommon/b/l;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/j;->e:Lcom/etermax/tools/f/a;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/j;->e:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 205
    :cond_0
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/b/z;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/j;->f:Lcom/etermax/gamescommon/b/z;

    .line 209
    return-void
.end method

.method protected a(Lcom/etermax/gamescommon/login/ui/j;)V
    .locals 3
    .parameter

    .prologue
    .line 124
    new-instance v0, Lcom/etermax/gamescommon/login/ui/j$2;

    sget v1, Lcom/etermax/o;->authenticating:I

    invoke-virtual {p1, v1}, Lcom/etermax/gamescommon/login/ui/j;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/login/ui/j;->c:Lcom/etermax/tools/social/a/b;

    invoke-direct {v0, p0, v1, v2}, Lcom/etermax/gamescommon/login/ui/j$2;-><init>(Lcom/etermax/gamescommon/login/ui/j;Ljava/lang/String;Lcom/etermax/tools/social/a/b;)V

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/login/ui/j$2;->a(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public g()Lcom/etermax/gamescommon/b/z;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/j;->f:Lcom/etermax/gamescommon/b/z;

    return-object v0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/j;->k()Lcom/etermax/gamescommon/login/ui/m;

    move-result-object v0

    return-object v0
.end method

.method protected abstract h()Lcom/etermax/gamescommon/b/l;
.end method

.method protected abstract i()Lcom/etermax/gamescommon/b/l;
.end method

.method protected j()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/etermax/gamescommon/login/ui/j$1;

    sget v1, Lcom/etermax/o;->connecting:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/login/ui/j;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/login/ui/j;->c:Lcom/etermax/tools/social/a/b;

    invoke-direct {v0, p0, v1, v2}, Lcom/etermax/gamescommon/login/ui/j$1;-><init>(Lcom/etermax/gamescommon/login/ui/j;Ljava/lang/String;Lcom/etermax/tools/social/a/b;)V

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/login/ui/j$1;->a(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public k()Lcom/etermax/gamescommon/login/ui/m;
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/etermax/gamescommon/login/ui/j$3;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/login/ui/j$3;-><init>(Lcom/etermax/gamescommon/login/ui/j;)V

    return-object v0
.end method
