.class public final Lcom/lifestreet/android/lsmsdk/commons/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sEncodingTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->sEncodingTable:[B

    return-void

    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->encode64([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 25
    :cond_0
    return-object v0
.end method

.method public static containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 29
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v4

    .line 32
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v6, v0, v5

    move v2, v4

    .line 34
    :goto_1
    if-gt v2, v6, :cond_0

    move-object v0, p0

    move-object v3, p1

    .line 35
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v1

    .line 36
    goto :goto_0

    .line 34
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static data2Hex([B)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x10

    .line 94
    const/4 v0, 0x0

    .line 96
    if-eqz p0, :cond_1

    .line 97
    array-length v1, p0

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 99
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 100
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_1
    return-object v0
.end method

.method private static encode64([B)[B
    .locals 10
    .parameter

    .prologue
    const/16 v1, 0x3d

    const/4 v5, 0x0

    .line 68
    array-length v6, p0

    .line 69
    add-int/lit8 v0, v6, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v7, v0, [B

    move v3, v5

    .line 71
    :goto_0
    if-ge v3, v6, :cond_4

    move v2, v3

    move v4, v5

    .line 73
    :goto_1
    add-int/lit8 v0, v3, 0x3

    if-ge v2, v0, :cond_1

    .line 74
    shl-int/lit8 v0, v4, 0x8

    .line 76
    if-ge v2, v6, :cond_0

    .line 77
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    .line 73
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v4, v0

    goto :goto_1

    .line 81
    :cond_1
    div-int/lit8 v0, v3, 0x3

    mul-int/lit8 v2, v0, 0x4

    .line 82
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->sEncodingTable:[B

    shr-int/lit8 v8, v4, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-byte v0, v0, v8

    aput-byte v0, v7, v2

    .line 83
    add-int/lit8 v0, v2, 0x1

    sget-object v8, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->sEncodingTable:[B

    shr-int/lit8 v9, v4, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-byte v8, v8, v9

    aput-byte v8, v7, v0

    .line 84
    add-int/lit8 v8, v2, 0x2

    add-int/lit8 v0, v3, 0x1

    if-ge v0, v6, :cond_2

    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->sEncodingTable:[B

    shr-int/lit8 v9, v4, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-byte v0, v0, v9

    :goto_2
    aput-byte v0, v7, v8

    .line 86
    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v3, 0x2

    if-ge v0, v6, :cond_3

    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->sEncodingTable:[B

    and-int/lit8 v4, v4, 0x3f

    aget-byte v0, v0, v4

    :goto_3
    aput-byte v0, v7, v2

    .line 71
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_2
    move v0, v1

    .line 84
    goto :goto_2

    :cond_3
    move v0, v1

    .line 86
    goto :goto_3

    .line 90
    :cond_4
    return-object v7
.end method

.method private static hashEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 45
    if-eqz p0, :cond_0

    .line 47
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 51
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->data2Hex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :cond_0
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 12
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->hashEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 16
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->hashEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
