.class public Lcom/google/android/gms/internal/is;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/iq;

.field private final b:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/iq;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/is;->a:Lcom/google/android/gms/internal/iq;

    iput-object p2, p0, Lcom/google/android/gms/internal/is;->b:Ljava/security/SecureRandom;

    return-void
.end method

.method static a([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, 0x44

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)[B
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/is;->a:Lcom/google/android/gms/internal/iq;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/iq;->a(Ljava/lang/String;Z)[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/it;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/it;-><init>(Lcom/google/android/gms/internal/is;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/it;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/it;-><init>(Lcom/google/android/gms/internal/is;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 v1, 0x4

    const/16 v2, 0x10

    :try_start_1
    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/google/android/gms/internal/is;->a([B)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method

.method public a([BLjava/lang/String;)[B
    .locals 6

    const/16 v2, 0x10

    array-length v0, p1

    if-eq v0, v2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/it;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/it;-><init>(Lcom/google/android/gms/internal/is;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/is;->a:Lcom/google/android/gms/internal/iq;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/google/android/gms/internal/iq;->a(Ljava/lang/String;Z)[B

    move-result-object v0

    array-length v1, v0

    if-gt v1, v2, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/it;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/it;-><init>(Lcom/google/android/gms/internal/is;)V

    throw v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/it;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/it;-><init>(Lcom/google/android/gms/internal/is;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    array-length v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/16 v2, 0x10

    new-array v2, v2, [B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x10

    new-array v0, v0, [B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x2

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v4, v1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/it;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/it;-><init>(Lcom/google/android/gms/internal/is;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/it;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/it;-><init>(Lcom/google/android/gms/internal/is;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/it;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/it;-><init>(Lcom/google/android/gms/internal/is;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/it;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/it;-><init>(Lcom/google/android/gms/internal/is;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/it;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/it;-><init>(Lcom/google/android/gms/internal/is;Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/it;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/it;-><init>(Lcom/google/android/gms/internal/is;Ljava/lang/Throwable;)V

    throw v1
.end method
