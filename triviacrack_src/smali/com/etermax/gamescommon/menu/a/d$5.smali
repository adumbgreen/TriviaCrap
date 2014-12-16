.class Lcom/etermax/gamescommon/menu/a/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/menu/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a/d;->c(ILcom/etermax/gamescommon/menu/a/f;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/gamescommon/menu/a/f",
        "<",
        "Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/etermax/gamescommon/menu/a/f;

.field final synthetic c:Lcom/etermax/gamescommon/menu/a/d;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/a/d;ILcom/etermax/gamescommon/menu/a/f;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/d$5;->c:Lcom/etermax/gamescommon/menu/a/d;

    iput p2, p0, Lcom/etermax/gamescommon/menu/a/d$5;->a:I

    iput-object p3, p0, Lcom/etermax/gamescommon/menu/a/d$5;->b:Lcom/etermax/gamescommon/menu/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;)V
    .locals 3
    .parameter

    .prologue
    .line 434
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$5;->c:Lcom/etermax/gamescommon/menu/a/d;

    iget v1, p0, Lcom/etermax/gamescommon/menu/a/d$5;->a:I

    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/d$5;->b:Lcom/etermax/gamescommon/menu/a/f;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/menu/a/d;->c(ILcom/etermax/gamescommon/menu/a/f;)V

    .line 435
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    check-cast p1, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/menu/a/d$5;->a(Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;)V

    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 439
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/d$5;->b:Lcom/etermax/gamescommon/menu/a/f;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/menu/a/f;->a(Z)V

    .line 440
    return-void
.end method
