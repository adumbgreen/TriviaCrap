.class Lcom/etermax/gamescommon/datasource/e$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/datasource/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/datasource/e;->a(ZLcom/etermax/gamescommon/datasource/g;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/gamescommon/datasource/h",
        "<",
        "Lcom/etermax/gamescommon/datasource/dto/AdsDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/datasource/e;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/datasource/e;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/e$17;->a:Lcom/etermax/gamescommon/datasource/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/datasource/dto/AdsDTO;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/e$17;->a:Lcom/etermax/gamescommon/datasource/e;

    iget-object v0, v0, Lcom/etermax/gamescommon/datasource/e;->c:Lcom/etermax/gamescommon/datasource/a/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/datasource/a/a;->b()Lcom/etermax/gamescommon/datasource/dto/AdsDTO;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/etermax/gamescommon/datasource/e$17;->a()Lcom/etermax/gamescommon/datasource/dto/AdsDTO;

    move-result-object v0

    return-object v0
.end method
