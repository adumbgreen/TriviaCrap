.class Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/social/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1$1;->a:Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1$1;->a:Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;->b:Lcom/etermax/preguntados/ui/game/category/CategoryActivity;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1$1;->a:Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Lcom/etermax/preguntados/ui/game/category/CategoryActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 214
    return-void
.end method
