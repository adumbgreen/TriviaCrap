.class Lcom/etermax/chat/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/etermax/chat/a/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/chat/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/chat/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/etermax/chat/a/d;->a:Lcom/etermax/chat/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/chat/a/a/g;Lcom/etermax/chat/a/a/g;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/etermax/chat/a/a/g;->f()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/etermax/chat/a/a/g;->f()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/etermax/chat/a/a/g;->f()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/etermax/chat/a/a/g;->f()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 258
    check-cast p1, Lcom/etermax/chat/a/a/g;

    check-cast p2, Lcom/etermax/chat/a/a/g;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/chat/a/d;->a(Lcom/etermax/chat/a/a/g;Lcom/etermax/chat/a/a/g;)I

    move-result v0

    return v0
.end method
