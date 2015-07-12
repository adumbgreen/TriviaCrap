.class public abstract Lcom/etermax/gamescommon/j/a;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Host:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/etermax/tools/i/a",
        "<THost;TResult;>;"
    }
.end annotation


# instance fields
.field protected d:Lcom/etermax/tools/social/a/b;

.field protected e:Z


# direct methods
.method public constructor <init>(Lcom/etermax/tools/social/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/j/a;->e:Z

    .line 26
    iput-object p1, p0, Lcom/etermax/gamescommon/j/a;->d:Lcom/etermax/tools/social/a/b;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/etermax/tools/social/a/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/j/a;->e:Z

    .line 31
    iput-object p2, p0, Lcom/etermax/gamescommon/j/a;->d:Lcom/etermax/tools/social/a/b;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/j/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/gamescommon/j/a;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/j/a;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/etermax/tools/i/f;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/etermax/gamescommon/j/a;->i()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/j/a;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/j/a;->d()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/etermax/tools/a/c/b; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Lcom/etermax/tools/a/c/b;->c()I

    move-result v1

    const/16 v2, 0x25f

    if-ne v1, v2, :cond_0

    .line 40
    new-instance v0, Lcom/etermax/tools/social/a/a;

    invoke-direct {v0}, Lcom/etermax/tools/social/a/a;-><init>()V

    throw v0

    .line 42
    :cond_0
    throw v0
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2
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
    .line 48
    instance-of v0, p2, Lcom/etermax/tools/social/a/a;

    .line 49
    if-eqz v0, :cond_0

    .line 50
    iget-object v1, p0, Lcom/etermax/gamescommon/j/a;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v1}, Lcom/etermax/tools/social/a/b;->c()V

    .line 51
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/j/a;->b(Z)V

    .line 53
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 55
    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/etermax/gamescommon/j/a;->f()V

    .line 58
    :cond_1
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/j/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/etermax/o;->error_fb_authentication_failed:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 139
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/etermax/gamescommon/j/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THost;)Z"
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/j/a;->e(Ljava/lang/Object;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/etermax/gamescommon/j/a;->d:Lcom/etermax/tools/social/a/b;

    iget-boolean v2, p0, Lcom/etermax/gamescommon/j/a;->e:Z

    new-instance v3, Lcom/etermax/gamescommon/j/a$1;

    invoke-direct {v3, p0, p1}, Lcom/etermax/gamescommon/j/a$1;-><init>(Lcom/etermax/gamescommon/j/a;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;ZLcom/etermax/tools/social/a/g;)V

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method protected abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method protected f()V
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/etermax/gamescommon/j/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/etermax/gamescommon/j/b;->a(Landroid/content/Context;Lcom/etermax/gamescommon/j/a;)Lcom/etermax/gamescommon/j/b;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/etermax/gamescommon/j/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "fb_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/j/b;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 64
    return-void
.end method
