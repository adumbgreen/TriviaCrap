.class Lcom/etermax/gamescommon/datasource/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/datasource/i;->a(Lcom/etermax/gamescommon/datasource/g;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/datasource/g;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/etermax/gamescommon/datasource/i;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/datasource/i;Lcom/etermax/gamescommon/datasource/g;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/i$1;->c:Lcom/etermax/gamescommon/datasource/i;

    iput-object p2, p0, Lcom/etermax/gamescommon/datasource/i$1;->a:Lcom/etermax/gamescommon/datasource/g;

    iput-object p3, p0, Lcom/etermax/gamescommon/datasource/i$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/i$1;->c:Lcom/etermax/gamescommon/datasource/i;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/i$1;->a:Lcom/etermax/gamescommon/datasource/g;

    iget-object v2, p0, Lcom/etermax/gamescommon/datasource/i$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/i;->a(Lcom/etermax/gamescommon/datasource/i;Lcom/etermax/gamescommon/datasource/g;Ljava/lang/String;)V

    .line 67
    return-void
.end method
