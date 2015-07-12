.class Lorg/OpenUDID/b;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/OpenUDID/a;


# direct methods
.method private constructor <init>(Lorg/OpenUDID/a;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lorg/OpenUDID/b;->a:Lorg/OpenUDID/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/OpenUDID/a;Lorg/OpenUDID/a$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lorg/OpenUDID/b;-><init>(Lorg/OpenUDID/a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lorg/OpenUDID/b;->a:Lorg/OpenUDID/a;

    invoke-static {v0}, Lorg/OpenUDID/a;->a(Lorg/OpenUDID/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lorg/OpenUDID/b;->a:Lorg/OpenUDID/a;

    invoke-static {v0}, Lorg/OpenUDID/a;->a(Lorg/OpenUDID/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 187
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/OpenUDID/b;->a:Lorg/OpenUDID/a;

    invoke-static {v0}, Lorg/OpenUDID/a;->a(Lorg/OpenUDID/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/OpenUDID/b;->a:Lorg/OpenUDID/a;

    invoke-static {v1}, Lorg/OpenUDID/a;->a(Lorg/OpenUDID/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 189
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 183
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/OpenUDID/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
