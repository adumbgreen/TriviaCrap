.class Lcom/millennialmedia/android/HttpMMHeaders;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/HttpMMHeaders;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/String;


# instance fields
.field a:Z

.field b:J

.field c:Ljava/lang/String;

.field d:Z

.field e:Z

.field f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/millennialmedia/android/HttpMMHeaders;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/HttpMMHeaders;->g:Ljava/lang/String;

    .line 133
    new-instance v0, Lcom/millennialmedia/android/HttpMMHeaders$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/HttpMMHeaders$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/HttpMMHeaders;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Z

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 50
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->a:Z

    .line 51
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->d:Z

    .line 52
    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->e:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->c:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->f:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    sget-object v1, Lcom/millennialmedia/android/HttpMMHeaders;->g:Ljava/lang/String;

    const-string v2, "Header serializing failed"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>([Lorg/apache/http/Header;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 36
    invoke-direct {p0, v2}, Lcom/millennialmedia/android/HttpMMHeaders;->a(Lorg/apache/http/Header;)V

    .line 37
    invoke-direct {p0, v2}, Lcom/millennialmedia/android/HttpMMHeaders;->b(Lorg/apache/http/Header;)V

    .line 38
    invoke-direct {p0, v2}, Lcom/millennialmedia/android/HttpMMHeaders;->c(Lorg/apache/http/Header;)V

    .line 39
    invoke-direct {p0, v2}, Lcom/millennialmedia/android/HttpMMHeaders;->d(Lorg/apache/http/Header;)V

    .line 40
    invoke-direct {p0, v2}, Lcom/millennialmedia/android/HttpMMHeaders;->e(Lorg/apache/http/Header;)V

    .line 41
    invoke-direct {p0, v2}, Lcom/millennialmedia/android/HttpMMHeaders;->f(Lorg/apache/http/Header;)V

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method private a(Lorg/apache/http/Header;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    const-string v0, "X-MM-TRANSPARENT"

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->a:Z

    .line 69
    :cond_0
    return-void
.end method

.method private b(Lorg/apache/http/Header;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    const-string v0, "X-MM-TRANSITION"

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->c:Ljava/lang/String;

    .line 76
    :cond_0
    return-void
.end method

.method private c(Lorg/apache/http/Header;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    const-string v0, "X-MM-TRANSITION-DURATION"

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->b:J

    .line 93
    :cond_0
    return-void
.end method

.method private d(Lorg/apache/http/Header;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    const-string v0, "X-MM-USE-CUSTOM-CLOSE"

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->d:Z

    .line 100
    :cond_0
    return-void
.end method

.method private e(Lorg/apache/http/Header;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    const-string v0, "X-MM-ENABLE-HARDWARE-ACCELERATION"

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->e:Z

    .line 107
    :cond_0
    return-void
.end method

.method private f(Lorg/apache/http/Header;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    const-string v0, "X-MM-ACID"

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->f:Ljava/lang/String;

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 125
    const/4 v0, 0x3

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/millennialmedia/android/HttpMMHeaders;->a:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/millennialmedia/android/HttpMMHeaders;->d:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/millennialmedia/android/HttpMMHeaders;->e:Z

    aput-boolean v2, v0, v1

    .line 127
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 128
    iget-object v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-wide v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    return-void
.end method
