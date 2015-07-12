.class public Lcom/mologiq/analytics/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a()I
    .locals 2

    .prologue
    .line 13
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x3

    .line 17
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mologiq/analytics/b;->a()I

    move-result v0

    goto :goto_0
.end method
