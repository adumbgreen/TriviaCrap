.class public Lcom/etermax/preguntados/a/b/a;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 9
    const-string v0, "buy_extra_shot_no_extra_shot_popup"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/a/b/a;->e(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 2
    .parameter

    .prologue
    .line 17
    const-string v0, "bought"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
