.class public abstract Lcom/etermax/gamescommon/j/f;
.super Lcom/etermax/tools/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Host:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/etermax/tools/i/c",
        "<THost;TResult;>;"
    }
.end annotation


# instance fields
.field protected b:Lcom/etermax/tools/social/twitter/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/etermax/tools/social/twitter/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/etermax/tools/i/c;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lcom/etermax/gamescommon/j/f;->b:Lcom/etermax/tools/social/twitter/a;

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/j/f;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/etermax/tools/i/f;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/etermax/gamescommon/j/f;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/etermax/gamescommon/j/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/etermax/gamescommon/j/f$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/etermax/gamescommon/j/f$2;-><init>(Lcom/etermax/gamescommon/j/f;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THost;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/c;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 29
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THost;)Z"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/j/f;->e(Ljava/lang/Object;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 43
    const-string v1, "TwitterAsyncTask"

    const-string v2, "execute"

    invoke-static {v1, v2}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/etermax/gamescommon/j/f;->b:Lcom/etermax/tools/social/twitter/a;

    new-instance v2, Lcom/etermax/gamescommon/j/f$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/etermax/gamescommon/j/f$1;-><init>(Lcom/etermax/gamescommon/j/f;Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Lcom/etermax/tools/social/twitter/a;->a(Landroid/app/Activity;Lcom/etermax/tools/social/twitter/c;)V

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract c()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method
