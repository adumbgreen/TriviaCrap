.class Lcom/etermax/gamescommon/datasource/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/datasource/a;->a(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/a/a/c",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/etermax/gamescommon/datasource/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/datasource/a;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/a$2;->c:Lcom/etermax/gamescommon/datasource/a;

    iput-object p2, p0, Lcom/etermax/gamescommon/datasource/a$2;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/etermax/gamescommon/datasource/a$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5

    .prologue
    .line 109
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;

    invoke-direct {v0}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->setMessage(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a$2;->c:Lcom/etermax/gamescommon/datasource/a;

    iget-object v1, v1, Lcom/etermax/gamescommon/datasource/a;->c:Lcom/etermax/gamescommon/datasource/a/a;

    iget-object v2, p0, Lcom/etermax/gamescommon/datasource/a$2;->c:Lcom/etermax/gamescommon/datasource/a;

    invoke-static {v2}, Lcom/etermax/gamescommon/datasource/a;->b(Lcom/etermax/gamescommon/datasource/a;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/etermax/gamescommon/datasource/a$2;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/etermax/gamescommon/datasource/a/a;->a(Ljava/lang/Long;Ljava/lang/Long;Lcom/etermax/gamescommon/datasource/dto/MessageDTO;)V

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/etermax/gamescommon/datasource/a$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
