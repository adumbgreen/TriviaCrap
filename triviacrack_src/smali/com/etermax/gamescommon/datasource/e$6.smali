.class Lcom/etermax/gamescommon/datasource/e$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/datasource/e;->a(Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;)V
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
.field final synthetic a:Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;

.field final synthetic b:Lcom/etermax/gamescommon/datasource/e;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/datasource/e;Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/e$6;->b:Lcom/etermax/gamescommon/datasource/e;

    iput-object p2, p0, Lcom/etermax/gamescommon/datasource/e$6;->a:Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/e$6;->b:Lcom/etermax/gamescommon/datasource/e;

    iget-object v0, v0, Lcom/etermax/gamescommon/datasource/e;->c:Lcom/etermax/gamescommon/datasource/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/e$6;->b:Lcom/etermax/gamescommon/datasource/e;

    invoke-static {v1}, Lcom/etermax/gamescommon/datasource/e;->n(Lcom/etermax/gamescommon/datasource/e;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/datasource/e$6;->a:Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;

    invoke-interface {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/a/a;->a(Ljava/lang/Long;Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;)V

    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/etermax/gamescommon/datasource/e$6;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
