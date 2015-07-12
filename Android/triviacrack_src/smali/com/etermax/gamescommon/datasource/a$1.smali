.class Lcom/etermax/gamescommon/datasource/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/datasource/a;->a(JIJZ)Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/a/a/c",
        "<",
        "Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Z

.field final synthetic e:Lcom/etermax/gamescommon/datasource/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/datasource/a;JIJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/a$1;->e:Lcom/etermax/gamescommon/datasource/a;

    iput-wide p2, p0, Lcom/etermax/gamescommon/datasource/a$1;->a:J

    iput p4, p0, Lcom/etermax/gamescommon/datasource/a$1;->b:I

    iput-wide p5, p0, Lcom/etermax/gamescommon/datasource/a$1;->c:J

    iput-boolean p7, p0, Lcom/etermax/gamescommon/datasource/a$1;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;
    .locals 7

    .prologue
    .line 91
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a$1;->e:Lcom/etermax/gamescommon/datasource/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/datasource/a;->c:Lcom/etermax/gamescommon/datasource/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a$1;->e:Lcom/etermax/gamescommon/datasource/a;

    invoke-static {v1}, Lcom/etermax/gamescommon/datasource/a;->a(Lcom/etermax/gamescommon/datasource/a;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/etermax/gamescommon/datasource/a$1;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, p0, Lcom/etermax/gamescommon/datasource/a$1;->b:I

    iget-wide v4, p0, Lcom/etermax/gamescommon/datasource/a$1;->c:J

    iget-boolean v6, p0, Lcom/etermax/gamescommon/datasource/a$1;->d:Z

    invoke-interface/range {v0 .. v6}, Lcom/etermax/gamescommon/datasource/a/a;->a(Ljava/lang/Long;Ljava/lang/Long;IJZ)Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/etermax/gamescommon/datasource/a$1;->a()Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;

    move-result-object v0

    return-object v0
.end method
