.class public Lcom/etermax/chat/a/a/e;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/etermax/chat/a/a/d;


# direct methods
.method public constructor <init>(Lcom/etermax/chat/a/a/d;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/etermax/chat/a/a/e;->a:Lcom/etermax/chat/a/a/d;

    .line 28
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 29
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    const-string v0, "DROP TABLE IF EXISTS Message"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    const-string v0, "DROP TABLE IF EXISTS Conversation"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    const-string v0, "DROP TABLE IF EXISTS Participant"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    const-string v0, "DROP TABLE IF EXISTS User"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    const-string v0, "CREATE TABLE Message (messageId INTEGER PRIMARY KEY,senderId INTEGER,conversationId INTEGER, message TEXT, messageType INTEGER, time INTEGER, messageOrder INTEGER, reason TEXT, userToMention INTEGER, application TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    const-string v0, "CREATE TABLE Conversation (conversationId INTEGER PRIMARY KEY, lastDate INTEGER, unread INTEGER, type INTEGER, publicKey TEXT, privateKey TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    const-string v0, "CREATE TABLE Participant (participantId INTEGER, conversationId INTEGER, userId INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v0, "CREATE TABLE User (userId INTEGER PRIMARY KEY, publicKey TEXT, displayName TEXT, usernameTEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/etermax/chat/a/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/etermax/chat/a/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/etermax/chat/a/a/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    return-void
.end method
