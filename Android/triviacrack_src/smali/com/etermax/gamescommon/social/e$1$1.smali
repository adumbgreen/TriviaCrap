.class Lcom/etermax/gamescommon/social/e$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/social/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/social/e$1;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/etermax/gamescommon/social/e$1;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/social/e$1;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/etermax/gamescommon/social/e$1$1;->b:Lcom/etermax/gamescommon/social/e$1;

    iput-object p2, p0, Lcom/etermax/gamescommon/social/e$1$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e$1$1;->b:Lcom/etermax/gamescommon/social/e$1;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/e$1;->a:Lcom/etermax/gamescommon/social/e;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/e;->a:Lcom/etermax/tools/social/a/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/social/e$1$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/etermax/gamescommon/social/e$1$1;->a:Landroid/app/Activity;

    sget v3, Lcom/etermax/o;->try_out:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/etermax/gamescommon/social/e$1$1;->a:Landroid/app/Activity;

    sget v6, Lcom/etermax/o;->app_name:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/etermax/gamescommon/social/e$1$1$1;

    invoke-direct {v3, p0}, Lcom/etermax/gamescommon/social/e$1$1$1;-><init>(Lcom/etermax/gamescommon/social/e$1$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/etermax/tools/social/a/g;)V

    .line 94
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method
