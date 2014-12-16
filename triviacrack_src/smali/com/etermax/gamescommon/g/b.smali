.class public Lcom/etermax/gamescommon/g/b;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/gamescommon/g/i;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    new-instance v0, Lcom/etermax/gamescommon/g/i;

    invoke-direct {v0, p1, p2}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/g/b;-><init>(Lcom/etermax/gamescommon/g/i;)V

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    new-instance v0, Lcom/etermax/gamescommon/g/i;

    invoke-direct {v0, p1, p2}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/etermax/gamescommon/g/b;-><init>(Lcom/etermax/gamescommon/g/i;Ljava/lang/Exception;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/etermax/gamescommon/g/i;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/etermax/gamescommon/g/b;-><init>(Lcom/etermax/gamescommon/g/i;Ljava/lang/Exception;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/etermax/gamescommon/g/i;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    iput-object p1, p0, Lcom/etermax/gamescommon/g/b;->a:Lcom/etermax/gamescommon/g/i;

    .line 38
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/g/i;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/etermax/gamescommon/g/b;->a:Lcom/etermax/gamescommon/g/i;

    return-object v0
.end method
