.class public final Lcom/millennialmedia/a/a/b/i;
.super Ljava/lang/Number;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 47
    :goto_0
    return v0

    .line 43
    :catch_0
    move-exception v0

    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    .line 47
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 58
    :goto_0
    return-wide v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    return-object v0
.end method
