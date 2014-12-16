.class Lcom/etermax/gamescommon/menu/a/a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/menu/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/gamescommon/menu/a/f",
        "<",
        "Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/menu/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/a$8;->a:Lcom/etermax/gamescommon/menu/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 498
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/a$8;->a:Lcom/etermax/gamescommon/menu/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/etermax/gamescommon/menu/a/a;->a(Lcom/etermax/gamescommon/menu/a/a;Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;Z)V

    .line 499
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    check-cast p1, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;

    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/menu/a/a$8;->a(Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;)V

    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 504
    return-void
.end method
