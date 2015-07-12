.class Lcom/etermax/mopubads/custom/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/etermax/mopubads/custom/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-eqz p1, :cond_0

    const-string v0, "[0-9]+(\\.[0-9]+)*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/etermax/mopubads/custom/b;->a:Ljava/lang/String;

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_1
    iput-object p1, p0, Lcom/etermax/mopubads/custom/b;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/etermax/mopubads/custom/b;)I
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    if-nez p1, :cond_1

    move v1, v2

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/mopubads/custom/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-virtual {p1}, Lcom/etermax/mopubads/custom/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 57
    array-length v0, v5

    array-length v3, v6

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v4, v1

    .line 58
    :goto_1
    if-ge v4, v7, :cond_0

    .line 59
    array-length v0, v5

    if-ge v4, v0, :cond_2

    aget-object v0, v5, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 60
    :goto_2
    array-length v3, v6

    if-ge v4, v3, :cond_3

    aget-object v3, v6, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 61
    :goto_3
    if-ge v0, v3, :cond_4

    .line 62
    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 59
    goto :goto_2

    :cond_3
    move v3, v1

    .line 60
    goto :goto_3

    .line 64
    :cond_4
    if-le v0, v3, :cond_5

    move v1, v2

    .line 65
    goto :goto_0

    .line 58
    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etermax/mopubads/custom/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    check-cast p1, Lcom/etermax/mopubads/custom/b;

    invoke-virtual {p0, p1}, Lcom/etermax/mopubads/custom/b;->a(Lcom/etermax/mopubads/custom/b;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    if-ne p0, p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 77
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 80
    goto :goto_0

    .line 82
    :cond_3
    check-cast p1, Lcom/etermax/mopubads/custom/b;

    invoke-virtual {p0, p1}, Lcom/etermax/mopubads/custom/b;->a(Lcom/etermax/mopubads/custom/b;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
