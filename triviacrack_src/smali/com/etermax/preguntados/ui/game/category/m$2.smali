.class Lcom/etermax/preguntados/ui/game/category/m$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/social/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/category/m;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/game/category/m;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/category/m;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/m$2;->a:Lcom/etermax/preguntados/ui/game/category/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/m$2;->a:Lcom/etermax/preguntados/ui/game/category/m;

    const-string v1, "click_ask_friends"

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/game/category/m;->b(Lcom/etermax/preguntados/ui/game/category/m;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/m$2;->a:Lcom/etermax/preguntados/ui/game/category/m;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/m;->c(Lcom/etermax/preguntados/ui/game/category/m;)V

    .line 214
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method
