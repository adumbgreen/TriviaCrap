.class public Lcom/etermax/gamescommon/b/q;
.super Lcom/etermax/tools/f/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/etermax/tools/f/a/a;-><init>()V

    .line 25
    if-eqz p1, :cond_1

    .line 26
    const-string v0, "publish_action_skip"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/b/q;->e(Ljava/lang/String;)V

    .line 30
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const-string v0, "from"

    invoke-virtual {p0, v0, p2}, Lcom/etermax/gamescommon/b/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void

    .line 28
    :cond_1
    const-string v0, "publish_action_accept"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/b/q;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public b()[Lcom/etermax/tools/f/c;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/gamescommon/b/q;->P:[Lcom/etermax/tools/f/c;

    return-object v0
.end method
