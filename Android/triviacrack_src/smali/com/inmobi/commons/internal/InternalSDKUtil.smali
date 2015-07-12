.class public Lcom/inmobi/commons/internal/InternalSDKUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BASE_LOG_TAG:Ljava/lang/String; = "[InMobi]"

.field public static final INMOBI_SDK_RELEASE_DATE:Ljava/lang/String; = "20140428"

.field public static final INMOBI_SDK_RELEASE_VERSION:Ljava/lang/String; = "4.3.0"

.field public static final LOGGING_TAG:Ljava/lang/String; = "[InMobi]-4.3.0"

.field public static final PRODUCT_COMMONS:Ljava/lang/String; = "commons"

.field private static a:Lcom/inmobi/commons/internal/CommonsConfig;

.field private static b:Ljava/lang/String;

.field private static c:Landroid/content/Context;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/inmobi/commons/cache/CacheController$Validator;

.field private static f:Z

.field private static g:[B

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/inmobi/commons/internal/CommonsConfig;

    invoke-direct {v0}, Lcom/inmobi/commons/internal/CommonsConfig;-><init>()V

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->a:Lcom/inmobi/commons/internal/CommonsConfig;

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->c:Landroid/content/Context;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->d:Ljava/util/Map;

    .line 103
    new-instance v0, Lcom/inmobi/commons/internal/d;

    invoke-direct {v0}, Lcom/inmobi/commons/internal/d;-><init>()V

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->e:Lcom/inmobi/commons/cache/CacheController$Validator;

    .line 109
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->f:Z

    .line 693
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->g:[B

    .line 694
    const-string v0, "SHA1PRNG"

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->h:Ljava/lang/String;

    .line 695
    const-string v0, "Crypto"

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->i:Ljava/lang/String;

    .line 709
    const-string v0, "HmacSHA1"

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->j:Ljava/lang/String;

    .line 758
    const-string v0, "RSA"

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->k:Ljava/lang/String;

    .line 759
    const-string v0, "RSA/ECB/nopadding"

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->l:Ljava/lang/String;

    .line 815
    const-string v0, "aeskeygenerate"

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->m:Ljava/lang/String;

    .line 816
    const-string v0, "last_key_generate"

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->n:Ljava/lang/String;

    .line 854
    const-string v0, "AES/CBC/PKCS7Padding"

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->o:Ljava/lang/String;

    .line 855
    const-string v0, "AES"

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    return-void
.end method

.method public static DeAe([B[B[B)[B
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 687
    invoke-static {p0, p1, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static SeMeGe(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 443
    invoke-static/range {p0 .. p5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 600
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->b([B[B[B)[B

    move-result-object v0

    .line 603
    invoke-static {v0, p3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B[B)[B

    move-result-object v1

    .line 607
    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B)[B

    move-result-object v0

    .line 608
    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B)[B

    move-result-object v1

    .line 612
    invoke-static {p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B)[B

    move-result-object v2

    .line 613
    invoke-static {p1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B)[B

    move-result-object v3

    .line 614
    invoke-static {p3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B)[B

    move-result-object v4

    .line 617
    invoke-static {v3, v4}, Lcom/inmobi/commons/internal/InternalSDKUtil;->b([B[B)[B

    move-result-object v3

    .line 618
    invoke-static {v3, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->b([B[B)[B

    move-result-object v2

    .line 620
    invoke-static {v2, p5, p4}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 622
    invoke-static {v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B)[B

    move-result-object v2

    .line 625
    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->b([B[B)[B

    move-result-object v0

    .line 626
    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->b([B[B)[B

    move-result-object v0

    .line 628
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Base64;->encode([BI)[B

    move-result-object v1

    .line 631
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :goto_0
    return-object v0

    .line 634
    :catch_0
    move-exception v0

    .line 635
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 638
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/commons/uid/UIDUtil;->getMap(Landroid/content/Context;Lcom/inmobi/commons/uid/UID;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->d:Ljava/util/Map;

    .line 155
    return-void
.end method

.method static a(Ljava/util/Map;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a()V

    .line 142
    :try_start_0
    new-instance v0, Lcom/inmobi/commons/internal/CommonsConfig;

    invoke-direct {v0}, Lcom/inmobi/commons/internal/CommonsConfig;-><init>()V

    .line 143
    invoke-virtual {v0, p0}, Lcom/inmobi/commons/internal/CommonsConfig;->setFromMap(Ljava/util/Map;)V

    .line 144
    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->a:Lcom/inmobi/commons/internal/CommonsConfig;

    .line 145
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v1

    invoke-virtual {v0}, Lcom/inmobi/commons/internal/CommonsConfig;->getApiStatsConfig()Lcom/inmobi/commons/metric/MetricConfigParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/metric/Logger;->setMetricConfigParams(Lcom/inmobi/commons/metric/MetricConfigParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([B)[B
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 732
    .line 734
    array-length v0, p0

    int-to-long v0, v0

    .line 735
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 736
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 737
    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 739
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 740
    array-length v1, v0

    array-length v2, p0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 742
    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 743
    array-length v0, v0

    array-length v2, p0

    invoke-static {p0, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    return-object v1
.end method

.method private static a([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x10

    .line 762
    const/4 v1, 0x0

    .line 764
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 765
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, p1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 768
    :try_start_0
    sget-object v3, Lcom/inmobi/commons/internal/InternalSDKUtil;->k:Ljava/lang/String;

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 770
    new-instance v4, Lcom/inmobi/commons/internal/InternalSDKUtil$d;

    invoke-direct {v4, v0, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 771
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 774
    sget-object v2, Lcom/inmobi/commons/internal/InternalSDKUtil;->l:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 775
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 778
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 794
    :goto_0
    return-object v0

    .line 780
    :catch_0
    move-exception v0

    .line 781
    const-string v0, "[InMobi]-4.3.0"

    const-string v2, "NoSuchAlgorithmException"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 792
    goto :goto_0

    .line 782
    :catch_1
    move-exception v0

    .line 783
    const-string v0, "[InMobi]-4.3.0"

    const-string v2, "InvalidKeySpecException"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 792
    goto :goto_0

    .line 784
    :catch_2
    move-exception v0

    .line 785
    const-string v0, "[InMobi]-4.3.0"

    const-string v2, "NoSuchPaddingException"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 792
    goto :goto_0

    .line 786
    :catch_3
    move-exception v0

    .line 787
    const-string v0, "[InMobi]-4.3.0"

    const-string v2, "InvalidKeyException"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 792
    goto :goto_0

    .line 788
    :catch_4
    move-exception v0

    .line 789
    const-string v0, "[InMobi]-4.3.0"

    const-string v2, "IllegalBlockSizeException"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 792
    goto :goto_0

    .line 790
    :catch_5
    move-exception v0

    .line 791
    const-string v0, "[InMobi]-4.3.0"

    const-string v2, "BadPaddingException"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a([B[B)[B
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 712
    const/4 v0, 0x0

    .line 715
    new-instance v1, Lcom/inmobi/commons/internal/InternalSDKUtil$a;

    const/4 v2, 0x0

    array-length v3, p1

    sget-object v4, Lcom/inmobi/commons/internal/InternalSDKUtil;->j:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/inmobi/commons/internal/InternalSDKUtil$a;-><init>([BIILjava/lang/String;)V

    .line 718
    :try_start_0
    sget-object v2, Lcom/inmobi/commons/internal/InternalSDKUtil;->j:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 719
    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 720
    invoke-virtual {v2, p0}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 727
    :goto_0
    return-object v0

    .line 721
    :catch_0
    move-exception v1

    .line 722
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "NoSuchAlgorithmException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 723
    :catch_1
    move-exception v1

    .line 724
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "InvalidKeyException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a([B[B[B)[B
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 374
    new-instance v1, Lcom/inmobi/commons/internal/InternalSDKUtil$a;

    sget-object v2, Lcom/inmobi/commons/internal/InternalSDKUtil;->p:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil$a;-><init>([BLjava/lang/String;)V

    .line 379
    :try_start_0
    sget-object v2, Lcom/inmobi/commons/internal/InternalSDKUtil;->o:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 380
    const/4 v3, 0x2

    new-instance v4, Lcom/inmobi/commons/internal/InternalSDKUtil$b;

    invoke-direct {v4, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil$b;-><init>([B)V

    invoke-virtual {v2, v3, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 381
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    .line 382
    :catch_0
    move-exception v1

    .line 383
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "NoSuchAlgorithmException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :catch_1
    move-exception v1

    .line 385
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "NoSuchPaddingException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :catch_2
    move-exception v1

    .line 387
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "InvalidKeyException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :catch_3
    move-exception v1

    .line 389
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "IllegalBlockSizeException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :catch_4
    move-exception v1

    .line 391
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "BadPaddingException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :catch_5
    move-exception v1

    .line 393
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "InvalidAlgorithmParameterException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addCommonPropertiesToConnection(Ljava/net/HttpURLConnection;)V
    .locals 2
    .parameter

    .prologue
    .line 434
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_0

    .line 436
    const-string v1, "User-Agent"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_0
    return-void
.end method

.method private static b()[B
    .locals 2

    .prologue
    .line 699
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->h:Ljava/lang/String;

    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    .line 700
    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->g:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1

    .line 706
    :goto_0
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->g:[B

    return-object v0

    .line 701
    :catch_0
    move-exception v0

    .line 702
    const-string v0, "[InMobi]-4.3.0"

    const-string v1, "NoSuchAlgorithmException"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :catch_1
    move-exception v0

    .line 704
    const-string v0, "[InMobi]-4.3.0"

    const-string v1, "NoSuchProviderException"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b([B[B)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 800
    .line 802
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 804
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 805
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 807
    return-object v0
.end method

.method private static b([B[B[B)[B
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 658
    new-instance v1, Lcom/inmobi/commons/internal/InternalSDKUtil$a;

    sget-object v2, Lcom/inmobi/commons/internal/InternalSDKUtil;->p:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil$a;-><init>([BLjava/lang/String;)V

    .line 660
    new-instance v2, Lcom/inmobi/commons/internal/InternalSDKUtil$b;

    invoke-direct {v2, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil$b;-><init>([B)V

    .line 665
    :try_start_0
    sget-object v3, Lcom/inmobi/commons/internal/InternalSDKUtil;->o:Ljava/lang/String;

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 666
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 667
    invoke-virtual {v3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 682
    :goto_0
    return-object v0

    .line 669
    :catch_0
    move-exception v1

    .line 670
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "NoSuchAlgorithmException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 671
    :catch_1
    move-exception v1

    .line 672
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "NoSuchPaddingException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 673
    :catch_2
    move-exception v1

    .line 674
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "InvalidKeyException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 675
    :catch_3
    move-exception v1

    .line 676
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "IllegalBlockSizeException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 677
    :catch_4
    move-exception v1

    .line 678
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "BadPaddingException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :catch_5
    move-exception v1

    .line 680
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "InvalidAlgorithmParameterException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c()[B
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 819
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 821
    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 824
    cmp-long v3, v7, v1

    if-nez v3, :cond_0

    .line 826
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "Generating for first time"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 828
    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->n:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 829
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 830
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->b()[B

    move-result-object v0

    .line 848
    :goto_0
    return-object v0

    .line 834
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 835
    const-wide/32 v5, 0x5265c00

    add-long/2addr v1, v5

    sub-long/2addr v1, v3

    .line 837
    cmp-long v1, v1, v7

    if-gtz v1, :cond_1

    .line 839
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "generated again"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 841
    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->n:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 842
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 843
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->b()[B

    move-result-object v0

    goto :goto_0

    .line 847
    :cond_1
    const-string v0, "[InMobi]-4.3.0"

    const-string v1, "already generated"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->g:[B

    goto :goto_0
.end method

.method public static checkNetworkAvailibility(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 300
    if-nez p0, :cond_0

    move v0, v1

    .line 312
    :goto_0
    return v0

    .line 304
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 306
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v1

    .line 307
    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    const-string v2, "[InMobi]-4.3.0"

    const-string v3, "Cannot check network state"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 312
    goto :goto_0
.end method

.method public static getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 352
    :goto_0
    return p2

    .line 346
    :catch_0
    move-exception v0

    .line 348
    :try_start_1
    const-string v0, "[InMobi]-4.3.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON with property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found but has bad datatype("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Reverting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 350
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 475
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 476
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 477
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 479
    :cond_0
    const-string v0, "[InMobi]-4.3.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has illegal value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getConfig()Lcom/inmobi/commons/internal/CommonsConfig;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->a:Lcom/inmobi/commons/internal/CommonsConfig;

    return-object v0
.end method

.method public static getConnectivityType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 215
    const/4 v1, 0x0

    .line 217
    :try_start_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 218
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 220
    if-eqz v0, :cond_5

    .line 221
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 223
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 224
    if-ne v2, v4, :cond_1

    .line 225
    const-string v0, "wifi"

    .line 244
    :cond_0
    :goto_0
    return-object v0

    .line 226
    :cond_1
    if-nez v2, :cond_5

    .line 227
    const-string v0, "carrier"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    if-ne v3, v4, :cond_2

    .line 229
    :try_start_1
    const-string v0, "gprs"

    goto :goto_0

    .line 230
    :cond_2
    const/4 v1, 0x2

    if-ne v3, v1, :cond_3

    .line 231
    const-string v0, "edge"

    goto :goto_0

    .line 232
    :cond_3
    const/4 v1, 0x3

    if-ne v3, v1, :cond_4

    .line 233
    const-string v0, "umts"

    goto :goto_0

    .line 234
    :cond_4
    if-nez v3, :cond_0

    .line 235
    const-string v0, "carrier"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 241
    :goto_1
    const-string v2, "[InMobi]-4.3.0"

    const-string v3, "Error getting the network info"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 240
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static getDisplayRotation(Landroid/view/Display;)I
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 248
    const/16 v1, -0x3e7

    .line 251
    :try_start_0
    const-class v3, Landroid/view/Display;

    const-string v4, "getRotation"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 262
    :goto_0
    if-eqz v2, :cond_0

    .line 264
    const/4 v0, 0x0

    :try_start_1
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 270
    :goto_1
    return v0

    .line 253
    :catch_0
    move-exception v0

    .line 255
    :try_start_2
    const-class v3, Landroid/view/Display;

    const-string v4, "getOrientation"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v2, v0

    .line 259
    goto :goto_0

    .line 257
    :catch_1
    move-exception v0

    .line 258
    const-string v0, "commons"

    const-string v3, "Unable to access getOrientation method via reflection"

    invoke-static {v0, v3}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :catch_2
    move-exception v0

    .line 267
    const-string v0, "commons"

    const-string v2, "Unable to access display rotation"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method public static getFinalRedirectedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 402
    move v3, v0

    move-object v2, p0

    .line 407
    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 408
    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->addCommonPropertiesToConnection(Ljava/net/HttpURLConnection;)V

    .line 409
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 410
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 412
    const/16 v4, 0x12c

    if-lt v1, v4, :cond_2

    const/16 v4, 0x190

    if-ge v1, v4, :cond_2

    .line 414
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 415
    if-nez v1, :cond_1

    move-object v1, v2

    .line 422
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    .line 428
    :goto_2
    return-object v0

    .line 421
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_0

    add-int/lit8 v2, v3, 0x1

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    move v3, v2

    move-object v2, v1

    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 426
    :goto_3
    const-string v2, "[InMobi]-4.3.0"

    const-string v3, "Cannot get redirect url"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 424
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method public static getInMobiInternalVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 580
    const-string v0, "[.]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 581
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 583
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 585
    :try_start_0
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    .line 586
    const-string v4, "T"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    :cond_0
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    const-string v0, ""

    .line 593
    :goto_2
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 587
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static getIntFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 339
    :goto_0
    return p2

    .line 333
    :catch_0
    move-exception v0

    .line 335
    :try_start_1
    const-string v0, "[InMobi]-4.3.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON with property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found but has bad datatype("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Reverting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 337
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "IJ)I"
        }
    .end annotation

    .prologue
    .line 496
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 497
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 498
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 499
    int-to-long v1, v0

    cmp-long v1, v1, p3

    if-gtz v1, :cond_0

    if-lt v0, p2, :cond_0

    .line 500
    return v0

    .line 503
    :cond_0
    const-string v0, "[InMobi]-4.3.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has illegal value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 319
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 326
    :goto_0
    return-wide p2

    .line 320
    :catch_0
    move-exception v0

    .line 322
    :try_start_1
    const-string v0, "[InMobi]-4.3.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON with property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found but has bad datatype("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Reverting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 324
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getLongFromMap(Ljava/util/Map;Ljava/lang/String;JJ)J
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "JJ)J"
        }
    .end annotation

    .prologue
    const-wide/32 v1, 0x7fffffff

    const-wide/32 v5, -0x80000000

    .line 485
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 486
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 487
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 488
    cmp-long v0, v3, p4

    if-gtz v0, :cond_0

    cmp-long v0, v3, p2

    if-ltz v0, :cond_0

    move-wide v0, v3

    .line 492
    :goto_0
    return-wide v0

    :cond_0
    cmp-long v0, p2, v5

    if-gez v0, :cond_1

    move-wide p2, v5

    :cond_1
    long-to-int v0, p2

    cmp-long v3, p4, v1

    if-lez v3, :cond_2

    move-wide p4, v1

    :cond_2
    long-to-int v1, p4

    int-to-long v1, v1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static getSavedUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 358
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 365
    :goto_0
    return-object p2

    .line 359
    :catch_0
    move-exception v0

    .line 361
    :try_start_1
    const-string v0, "[InMobi]-4.3.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON with property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found but has bad datatype("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Reverting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 363
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 507
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 508
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 509
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 511
    :cond_0
    const-string v0, "[InMobi]-4.3.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has illegal value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 172
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 174
    invoke-static {p0}, Lcom/inmobi/commons/internal/InternalSDKUtil$c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->b:Ljava/lang/String;

    .line 181
    :cond_0
    :goto_0
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->b:Ljava/lang/String;

    .line 186
    :goto_1
    return-object v0

    .line 178
    :cond_1
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 185
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "Cannot get user agent"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 111
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    if-nez p0, :cond_1

    .line 114
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 120
    :cond_0
    :goto_0
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 136
    :goto_1
    return-void

    .line 117
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->c:Landroid/content/Context;

    goto :goto_0

    .line 123
    :cond_2
    sget-boolean v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->f:Z

    if-eqz v0, :cond_3

    .line 124
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->f:Z

    .line 125
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a()V

    .line 128
    :cond_3
    :try_start_0
    const-string v0, "commons"

    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/commons/internal/InternalSDKUtil;->e:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/cache/ProductConfig;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a(Ljava/util/Map;)Z
    :try_end_0
    .catch Lcom/inmobi/commons/internal/CommonsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string v1, "[InMobi]-4.3.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMCommons config init: IMCommonsException caught. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inmobi/commons/internal/CommonsException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :catch_1
    move-exception v0

    .line 133
    const-string v0, "[InMobi]-4.3.0"

    const-string v1, "Exception while getting commons config data."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isDefOrientationLandscape(III)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 275
    if-le p1, p2, :cond_1

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    if-ge p1, p2, :cond_2

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 283
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHexString(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 553
    const-string v0, "[0-9A-F]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInitializedSuccessfully()Z
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully(Z)Z

    move-result v0

    return v0
.end method

.method public static isInitializedSuccessfully(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 564
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 565
    :cond_0
    if-eqz p0, :cond_1

    .line 566
    const-string v0, "[InMobi]-4.3.0"

    const-string v1, "InMobi not initialized. Call InMobi.initialize before using any InMobi API"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_1
    const/4 v0, 0x0

    .line 570
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    .line 287
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 289
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 290
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 292
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v2

    float-to-double v2, v0

    .line 293
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 295
    mul-double/2addr v2, v2

    mul-double/2addr v0, v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 296
    const-wide/high16 v2, 0x401c

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static keag()[B
    .locals 1

    .prologue
    .line 812
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public static populate(Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 448
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 449
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 450
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 454
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 455
    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_2

    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 456
    if-nez p2, :cond_1

    .line 457
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 459
    check-cast v0, Ljava/util/Map;

    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populate(Ljava/util/Map;Ljava/util/Map;Z)V

    goto :goto_0

    .line 462
    :cond_2
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 465
    :cond_3
    return-void
.end method

.method public static populate(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 517
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 518
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 519
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 521
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 528
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 529
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 530
    instance-of v5, v2, Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    instance-of v5, v3, Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    .line 531
    if-nez p2, :cond_0

    .line 532
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 543
    :catch_0
    move-exception v1

    .line 544
    const-string v2, "[InMobi]-4.3.0"

    const-string v3, "Cannot populate to json exception"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 522
    :catch_1
    move-exception v2

    .line 523
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 534
    :cond_0
    :try_start_2
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populate(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto :goto_0

    .line 540
    :cond_1
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 549
    :cond_2
    return-void
.end method

.method public static populateToNewJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 557
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 558
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populate(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 559
    invoke-static {p0, v0, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populate(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 560
    return-object v0
.end method

.method public static populateToNewMap(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 468
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populate(Ljava/util/Map;Ljava/util/Map;Z)V

    .line 469
    invoke-static {p0, v0, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populate(Ljava/util/Map;Ljava/util/Map;Z)V

    .line 470
    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->c:Landroid/content/Context;

    .line 87
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a()V

    .line 93
    :try_start_0
    const-string v0, "commons"

    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/commons/internal/InternalSDKUtil;->e:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;
    :try_end_0
    .catch Lcom/inmobi/commons/internal/CommonsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string v0, "commons"

    const-string v1, "Unable retrive config for commons product"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static validateAppId(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 199
    if-nez p0, :cond_0

    .line 200
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "appId is null"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    return v0

    .line 204
    :cond_0
    const-string v1, "(x)+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "appId is all xxxxxxx"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_1
    const-string v1, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "appId is all blank"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
