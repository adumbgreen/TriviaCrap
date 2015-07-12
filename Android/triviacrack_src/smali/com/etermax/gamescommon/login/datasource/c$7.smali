.class Lcom/etermax/gamescommon/login/datasource/c$7;
.super Lcom/etermax/tools/i/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/datasource/c;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/f",
        "<THost;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Long;

.field final synthetic b:Lcom/etermax/gamescommon/login/datasource/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/datasource/c;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/c$7;->b:Lcom/etermax/gamescommon/login/datasource/c;

    iput-object p2, p0, Lcom/etermax/gamescommon/login/datasource/c$7;->a:Ljava/lang/Long;

    invoke-direct {p0}, Lcom/etermax/tools/i/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$7;->b:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c;->b:Lcom/etermax/gamescommon/login/datasource/a/e;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c$7;->a:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a/e;->a(Ljava/lang/Long;)V

    .line 492
    const/4 v0, 0x0

    return-object v0
.end method
