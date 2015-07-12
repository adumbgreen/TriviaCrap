.class Lcom/etermax/gamescommon/profile/image/a$7;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/image/a;->a(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Landroid/support/v4/app/Fragment;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/image/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/image/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/image/a$7;->a:Lcom/etermax/gamescommon/profile/image/a;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$7;->a:Lcom/etermax/gamescommon/profile/image/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/image/a;->a:Lcom/etermax/gamescommon/datasource/e;

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/image/a$7;->a:Lcom/etermax/gamescommon/profile/image/a;

    invoke-static {v1}, Lcom/etermax/gamescommon/profile/image/a;->c(Lcom/etermax/gamescommon/profile/image/a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/e;->a(Ljava/io/File;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 352
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 353
    return-void
.end method

.method protected a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 357
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$7;->a:Lcom/etermax/gamescommon/profile/image/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/image/a;->b(Lcom/etermax/gamescommon/profile/image/a;)Lcom/etermax/gamescommon/profile/image/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$7;->a:Lcom/etermax/gamescommon/profile/image/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/image/a;->b(Lcom/etermax/gamescommon/profile/image/a;)Lcom/etermax/gamescommon/profile/image/c;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/etermax/gamescommon/profile/image/c;->a(Ljava/lang/String;)V

    .line 361
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 343
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/profile/image/a$7;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 343
    check-cast p1, Landroid/support/v4/app/Fragment;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/profile/image/a$7;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void
.end method
