.class public Lcom/inmobi/commons/thirdparty/Base62;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALPHABET:Ljava/lang/String; = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field public static final BASE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/inmobi/commons/thirdparty/Base62;->BASE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 48
    sget v0, Lcom/inmobi/commons/thirdparty/Base62;->BASE:I

    int-to-double v0, v0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/2addr v0, p0

    return v0
.end method

.method private static a([C)I
    .locals 4
    .parameter

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 41
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 42
    const-string v2, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    aget-char v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-static {v2, v0}, Lcom/inmobi/commons/thirdparty/Base62;->a(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 41
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 44
    :cond_0
    return v1
.end method

.method private static a(JLjava/lang/StringBuilder;)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 30
    sget v0, Lcom/inmobi/commons/thirdparty/Base62;->BASE:I

    int-to-long v0, v0

    rem-long v0, p0, v0

    .line 31
    const-string v2, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    sget v0, Lcom/inmobi/commons/thirdparty/Base62;->BASE:I

    int-to-long v0, v0

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static fromBase10(J)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 16
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    .line 18
    invoke-static {p0, p1, v0}, Lcom/inmobi/commons/thirdparty/Base62;->a(JLjava/lang/StringBuilder;)J

    move-result-wide p0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 25
    :goto_1
    return-object v0

    .line 22
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "Failed to convert to base 62"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static toBase10(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thirdparty/Base62;->a([C)I

    move-result v0

    return v0
.end method
