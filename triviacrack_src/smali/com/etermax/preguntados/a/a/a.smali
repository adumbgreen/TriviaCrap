.class public Lcom/etermax/preguntados/a/a/a;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 10
    const-string v0, "extra_spin_buy_confirm"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/a/a/a;->e(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 18
    const-string v0, "confirm_price_point"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method
