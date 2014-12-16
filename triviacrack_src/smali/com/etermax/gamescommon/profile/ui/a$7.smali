.class Lcom/etermax/gamescommon/profile/ui/a$7;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/a;->q()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/gamescommon/profile/ui/a",
        "<*>;[",
        "Lcom/etermax/tools/social/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/ui/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/a$7;->a:Lcom/etermax/gamescommon/profile/ui/a;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/profile/ui/a$7;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/a$7;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/gamescommon/profile/ui/a$7;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/a$7;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/gamescommon/profile/ui/a$7;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/a$7;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/a$7;->b()[Lcom/etermax/tools/social/a/c;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/gamescommon/profile/ui/a;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/profile/ui/a",
            "<*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 340
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 341
    return-void
.end method

.method protected a(Lcom/etermax/gamescommon/profile/ui/a;[Lcom/etermax/tools/social/a/c;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/profile/ui/a",
            "<*>;[",
            "Lcom/etermax/tools/social/a/c;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 310
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 311
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/a$7;->a:Lcom/etermax/gamescommon/profile/ui/a;

    sget v2, Lcom/etermax/o;->try_out:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/etermax/gamescommon/profile/ui/a$7;->a:Lcom/etermax/gamescommon/profile/ui/a;

    sget v5, Lcom/etermax/o;->app_name:I

    invoke-virtual {v4, v5}, Lcom/etermax/gamescommon/profile/ui/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/profile/ui/a;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 312
    const-string v1, ""

    .line 313
    const/16 v3, 0x31

    array-length v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 314
    :goto_0
    if-ge v0, v3, :cond_0

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, p2, v0

    invoke-virtual {v4}, Lcom/etermax/tools/social/a/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a$7;->a:Lcom/etermax/gamescommon/profile/ui/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/a;->e:Lcom/etermax/tools/social/a/b;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/a$7;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/etermax/gamescommon/profile/ui/a$7$1;

    invoke-direct {v4, p0}, Lcom/etermax/gamescommon/profile/ui/a$7$1;-><init>(Lcom/etermax/gamescommon/profile/ui/a$7;)V

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/etermax/tools/social/a/b;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/tools/social/a/g;)V

    .line 336
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 302
    check-cast p1, Lcom/etermax/gamescommon/profile/ui/a;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/profile/ui/a$7;->a(Lcom/etermax/gamescommon/profile/ui/a;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 302
    check-cast p1, Lcom/etermax/gamescommon/profile/ui/a;

    check-cast p2, [Lcom/etermax/tools/social/a/c;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/profile/ui/a$7;->a(Lcom/etermax/gamescommon/profile/ui/a;[Lcom/etermax/tools/social/a/c;)V

    return-void
.end method

.method public b()[Lcom/etermax/tools/social/a/c;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a$7;->a:Lcom/etermax/gamescommon/profile/ui/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/a;->e:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/b;->k()[Lcom/etermax/tools/social/a/c;

    move-result-object v0

    return-object v0
.end method
