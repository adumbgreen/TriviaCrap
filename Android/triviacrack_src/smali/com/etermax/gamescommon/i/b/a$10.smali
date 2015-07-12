.class Lcom/etermax/gamescommon/i/b/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/i/b/a;->j()V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/etermax/gamescommon/i/b/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/i/b/a;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/a$10;->b:Lcom/etermax/gamescommon/i/b/a;

    iput-object p2, p0, Lcom/etermax/gamescommon/i/b/a$10;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 321
    new-instance v0, Lcom/etermax/widget/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/a$10;->a:Ljava/util/List;

    new-instance v3, Lcom/etermax/gamescommon/i/b/a$10$1;

    invoke-direct {v3, p0}, Lcom/etermax/gamescommon/i/b/a$10$1;-><init>(Lcom/etermax/gamescommon/i/b/a$10;)V

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/etermax/widget/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/widget/c;Z)V

    .line 332
    invoke-virtual {v0}, Lcom/etermax/widget/a;->a()V

    .line 333
    return-void
.end method
