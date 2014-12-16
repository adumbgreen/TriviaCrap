.class Lcom/etermax/preguntados/ui/game/category/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/category/a/a;->a(Lcom/etermax/gamescommon/k;)Landroid/view/View$OnClickListener;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/k;

.field final synthetic b:Lcom/etermax/preguntados/ui/game/category/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/category/a/a;Lcom/etermax/gamescommon/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/a/a$2;->b:Lcom/etermax/preguntados/ui/game/category/a/a;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/category/a/a$2;->a:Lcom/etermax/gamescommon/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/a$2;->b:Lcom/etermax/preguntados/ui/game/category/a/a;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/a/a;->a(Lcom/etermax/preguntados/ui/game/category/a/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a/a$2;->a:Lcom/etermax/gamescommon/k;

    invoke-interface {v1}, Lcom/etermax/gamescommon/k;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Lcom/etermax/gamescommon/b/an;->h:Lcom/etermax/gamescommon/b/an;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/b/an;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a/a$2;->b:Lcom/etermax/preguntados/ui/game/category/a/a;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/ui/game/category/a/a;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void
.end method
