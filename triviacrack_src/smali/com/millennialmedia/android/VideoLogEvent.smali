.class Lcom/millennialmedia/android/VideoLogEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/VideoLogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/String;


# instance fields
.field a:J

.field b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/millennialmedia/android/VideoLogEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/VideoLogEvent;->c:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/millennialmedia/android/VideoLogEvent$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/VideoLogEvent$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/VideoLogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->a:J

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->b:[Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->b:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    sget-object v1, Lcom/millennialmedia/android/VideoLogEvent;->c:Ljava/lang/String;

    const-string v2, "VideoLogEvent parcel creation exception: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoLogEvent;->a(Lorg/json/JSONObject;)V

    .line 43
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 69
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v1, "time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/millennialmedia/android/VideoLogEvent;->a:J

    .line 73
    const-string v1, "urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->b:[Ljava/lang/String;

    .line 76
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->b:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_2
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->b:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .parameter

    .prologue
    .line 124
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->a:J

    .line 125
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 126
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->b:[Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 128
    iget-object v3, p0, Lcom/millennialmedia/android/VideoLogEvent;->b:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    .line 127
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .parameter

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->a:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 135
    iget-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->b:[Ljava/lang/String;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 136
    iget-object v1, p0, Lcom/millennialmedia/android/VideoLogEvent;->b:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 137
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    iget-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->b:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->b:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 97
    return-void
.end method
